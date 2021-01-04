using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNO.Contratos.LogicaJuego;

namespace UNO.Contratos
{
    public partial class JuegoUNOServicio : IAdministrarSala
    {
        private readonly List<Sala> salasCreadas = new List<Sala>();

        public void CrearSala(Sala nuevaSala, Dominio.Jugador jugador)
        {
            IJuegoCallback callbackActual = JuegoCallbackActual;

            nuevaSala.Id = ObtenerNuevoCodigoSala();
            nuevaSala.JugadoresEnSala.Add(callbackActual, jugador);

            salasCreadas.Add(nuevaSala);
            (callbackActual as ISalaCallback).NotificarCreacionDeSala(nuevaSala);
        }

        public void UnirseASala(Sala salaAUnirse, Dominio.Jugador jugador)
        {
            ResultadoUnionSala resultadoUnionSala = ResultadoUnionSala.NoExisteId;
            IJuegoCallback callbackActual = JuegoCallbackActual;

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

            (callbackActual as ISalaCallback).NotificarUnionASala(resultadoUnionSala);
            if (resultadoUnionSala == ResultadoUnionSala.UnionExitosa)
            {
                (callbackActual as ISalaCallback).ObtenerInformacionDeSala(salaBuscada);
                salaBuscada.JugadoresEnSala.Add(callbackActual, jugador);
                AgregarNuevoJugadorEnSala(salaBuscada, jugador);
            }
        }

        private void AgregarNuevoJugadorEnSala(Sala sala, Dominio.Jugador nuevoJugador)
        {
            foreach (var jugador in sala.JugadoresEnSala)
            {
                (jugador.Key as ISalaCallback).AgregarNuevoJugador(nuevoJugador);
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
