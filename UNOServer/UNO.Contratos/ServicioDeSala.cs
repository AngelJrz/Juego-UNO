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
            NotificarNuevoJugador(nuevaSala);
        }

        public void SalirDeSala(string idSala)
        {
            throw new NotImplementedException();
        }

        public void UnirseASala(Sala salaAUnirse, Dominio.Jugador jugador)
        {
            ResultadoUnionSala resultadoUnionSala = ResultadoUnionSala.NoExisteId;
            ISalaCallback calbackActual = SalaCallbackActual;

            foreach (var sala in salasCreadas)
            {
                if (sala.Id.Equals(salaAUnirse.Id))
                {
                    if (sala.Contraseña.Equals(salaAUnirse.Contraseña))
                    {
                        if (HayCupoEnSala(sala))
                        {
                            resultadoUnionSala = ResultadoUnionSala.UnionExitosa;
                            sala.JugadoresEnSala.Add(calbackActual, jugador);
                            salaAUnirse = sala;
                            break;
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
            }

            calbackActual.NotificarUnionASala(resultadoUnionSala);
            NotificarNuevoJugador(salaAUnirse);
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

        private void NotificarNuevoJugador(Sala salaActual)
        {
            List<string> nombres = new List<string>();

            foreach (var jugadores in salaActual.JugadoresEnSala.Values)
            {
                nombres.Add(jugadores.Nickname);
            }

            foreach (var jugador in salaActual.JugadoresEnSala)
            {
                jugador.Key.ActualizarSala(nombres);
            }
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
