using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using UNO.Contratos.LogicaJuego;
using UNO.Dominio;

namespace UNO.Contratos
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, ConcurrencyMode = ConcurrencyMode.Multiple)]
    public partial class JuegoUNOServicio : IAdministrarJuego
    {
        private readonly List<Sala> salasCreadas = new List<Sala>();

        /// <summary>
        /// Lógica para crear una sala y que los jugadores se puedan unir.
        /// </summary>
        /// <param name="nuevaSala">Sala a crear</param>
        /// <param name="jugador">Jugador que crea la sala</param>
        public void CrearSala(Sala nuevaSala, Jugador jugador)
        {
            IJuegoCallback callbackActual = JuegoCallbackActual;

            nuevaSala.Id = ObtenerNuevoCodigoSala();
            nuevaSala.JugadoresEnSala.Add(jugador, callbackActual);

            salasCreadas.Add(nuevaSala);
            callbackActual.NotificarCreacionDeSala(nuevaSala);
        }

        /// <summary>
        /// Lógica para unir un jugador a la sala.
        /// </summary>
        /// <param name="salaAUnirse">Sala a la cual se va a unir</param>
        /// <param name="jugador">Jugador que se va a unir a la sala</param>
        public void UnirseASala(Sala salaAUnirse, Jugador jugador)
        {
            ResultadoUnionSala resultadoUnionSala = ResultadoUnionSala.NoExisteId;
            IJuegoCallback callbackActual = JuegoCallbackActual;

            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(salaAUnirse.Id));

            if (salaBuscada != null)
            {
                if (salaBuscada.Contraseña.Equals(salaAUnirse.Contraseña))
                {
                    if (salaBuscada.EnJuego)
                    {
                        resultadoUnionSala = ResultadoUnionSala.EnJuego;
                    }
                    else
                    {
                        if (HayCupoEnSala(salaBuscada))
                        {
                            resultadoUnionSala = ResultadoUnionSala.UnionExitosa;
                        }
                        else
                        {
                            resultadoUnionSala = ResultadoUnionSala.NoHayCupo;
                        }
                    } 
                }
                else
                {
                    resultadoUnionSala = ResultadoUnionSala.ContraseñaIncorrecta;
                }
            }

            callbackActual.NotificarUnionASala(resultadoUnionSala);
            if (salaBuscada != null && resultadoUnionSala == ResultadoUnionSala.UnionExitosa)
            {
                callbackActual.ObtenerInformacionDeSala(salaBuscada);
                salaBuscada.JugadoresEnSala.Add(jugador, callbackActual);
                AgregarNuevoJugadorEnSala(salaBuscada, jugador);
            }
        }

        private void AgregarNuevoJugadorEnSala(Sala sala, Jugador nuevoJugador)
        {
            foreach (var jugador in sala.JugadoresEnSala)
            {
                jugador.Value.AgregarNuevoJugador(nuevoJugador);
            }
        }

        private bool HayCupoEnSala(Sala sala)
        {
            bool hayCupo = false;

            if (sala.JugadoresEnSala.Count < sala.NumeroTotalDeJugadores)
            {
                hayCupo = true;
            }

            return hayCupo;
        }

        private String ObtenerNuevoCodigoSala()
        {
            Random random = new Random();

            string idSala = random.Next(10000, 99999).ToString();

            return idSala;
        }

        /// <summary>
        /// Lógica para eliminar al jugador de una sala.
        /// </summary>
        /// <param name="idSala">Id de sala a salirse</param>
        /// <param name="nickname">Nickname del jugador a salirse</param>
        public void SalirDeSala(string idSala, string nickname)
        {
            var salaActual = salasCreadas.Find(sala => sala.Id.Equals(idSala));

            if (salaActual != null)
            {
                IJuegoCallback callbackActual = JuegoCallbackActual;
                Jugador jugadorBuscado = salaActual.JugadoresEnSala.Keys.
                    ToList().FirstOrDefault(jugador => jugador.Nickname.Equals(nickname));

                if (EsCreadorDeLaSala(salaActual, jugadorBuscado))
                {
                    callbackActual.EliminarCreador();
                    salaActual.JugadoresEnSala.Remove(jugadorBuscado);
                    EliminarSala(salaActual);
                }
                else
                {
                    callbackActual.NotificarSalidaDeSala();
                    salaActual.JugadoresEnSala.Remove(jugadorBuscado);
                    NotificarJugadorEliminado(salaActual, jugadorBuscado);

                    if (salaActual.EnJuego)
                    {
                        salaActual.PartidaDeSala.SacarJugador(jugadorBuscado);

                        if (salaActual.PartidaDeSala.HaySuficientesJugadores())
                        {
                            salaActual.PartidaDeSala.ReiniciarTurnos();
                            CambiarTurno(salaActual);
                        }
                        else
                        {
                            EliminarSalaPorFaltaDeJugadores(salaActual);
                        }
                    }
                }
            }
        }

        private void EliminarSalaPorFaltaDeJugadores(Sala salaActual)
        {
            if (salaActual.JugadoresEnSala.Count > 0)
            {
                foreach (var jugador in salaActual.JugadoresEnSala)
                {
                    jugador.Value.NotificarFaltaDeJugadores();
                }

                salaActual.JugadoresEnSala.Clear();
            }

            salasCreadas.Remove(salaActual);
        }

        private void NotificarJugadorEliminado(Sala salaActual, Dominio.Jugador jugadorASacar)
        {
            foreach (var jugador in salaActual.JugadoresEnSala)
            {
                jugador.Value.SacarJugador(jugadorASacar);
            }
        }

        private void EliminarSala(Sala salaActual)
        {
            if (salaActual.JugadoresEnSala.Count > 0)
            {
                foreach (var jugador in salaActual.JugadoresEnSala)
                {
                    jugador.Value.NotificarEliminacionDeSala();
                }

                salaActual.JugadoresEnSala.Clear();
            }

            salasCreadas.Remove(salaActual);
        }

        private bool EsCreadorDeLaSala(Sala sala, Dominio.Jugador jugador)
        {
            bool esCreador = false;

            if (sala.CreadaPor.Equals(jugador.Nickname))
            {
                esCreador = true;
            }

            return esCreador;
        }

        private IJuegoCallback JuegoCallbackActual
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IJuegoCallback>();
            }
        }
    }
}
