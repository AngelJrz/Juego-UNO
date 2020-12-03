using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNO.Contratos.AdministrarSala;

namespace UNO.Contratos
{
    public partial class JuegoUNOServicio : IAdministrarSala
    {
        private readonly List<Sala> salasCreadas = new List<Sala>();

        public void CrearSala(Sala nuevaSala, Dominio.Jugador jugador)
        {
            ISalaCallback calbackActual = SalaCallbackActual;

            nuevaSala.Id = ObtenerNuevoCodigoSala();
            nuevaSala.JugadoresEnSala.Add(calbackActual, jugador);

            salasCreadas.Add(nuevaSala);
            calbackActual.NotificarCreacionDeSala(nuevaSala);
        }

        public void SalirDeSala(string idSala)
        {
            var salaActual = salasCreadas.Find(sala => sala.Id.Equals(idSala));

            if (salaActual != null)
            {
                ISalaCallback callbackActual = SalaCallbackActual;

                salaActual.JugadoresEnSala.TryGetValue(callbackActual, out Dominio.Jugador jugadorASacar);

                if (EsCreadorDeLaSala(salaActual, jugadorASacar))
                {
                    callbackActual.EliminarCreador();
                    salaActual.JugadoresEnSala.Remove(callbackActual);
                    EliminarSala(salaActual);
                }
                else
                {
                    callbackActual.NotificarSalidaDeSala();
                    salaActual.JugadoresEnSala.Remove(callbackActual);
                    NotificarJugadorEliminado(salaActual, jugadorASacar);
                }
            }
        }

        private void NotificarJugadorEliminado(Sala salaActual, Dominio.Jugador jugadorASacar)
        {
            foreach (var jugador in salaActual.JugadoresEnSala)
            {
                jugador.Key.SacarJugador(jugadorASacar);
            }
        }

        private void EliminarSala(Sala salaActual)
        {
            if (salaActual.JugadoresEnSala.Count > 0)
            {
                foreach (var jugador in salaActual.JugadoresEnSala)
                {
                    jugador.Key.NotificarEliminacionDeSala();
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

        public void UnirseASala(Sala salaAUnirse, Dominio.Jugador jugador)
        {
            ResultadoUnionSala resultadoUnionSala = ResultadoUnionSala.NoExisteId;
            ISalaCallback callbackActual = SalaCallbackActual;

            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(salaAUnirse.Id));

            if (salaBuscada != null)
            {
                if (salaBuscada.Contraseña.Equals(salaAUnirse.Contraseña))
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
                else
                {
                    resultadoUnionSala = ResultadoUnionSala.ContraseñaIncorrecta;
                }
            }

            callbackActual.NotificarUnionASala(resultadoUnionSala);
            if (resultadoUnionSala == ResultadoUnionSala.UnionExitosa)
            {
                callbackActual.ObtenerInformacionDeSala(salaBuscada);
                salaBuscada.JugadoresEnSala.Add(callbackActual, jugador);
                AgregarNuevoJugadorEnSala(salaBuscada, jugador);
            }
        }

        private void AgregarNuevoJugadorEnSala(Sala sala, Dominio.Jugador nuevoJugador)
        {
            foreach (var jugador in sala.JugadoresEnSala)
            {
                jugador.Key.AgregarNuevoJugador(nuevoJugador);
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

        private ISalaCallback SalaCallbackActual
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<ISalaCallback>();
            }
        }
    }
}
