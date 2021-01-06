using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNO.Contratos.LogicaJuego;

namespace UNO.Contratos
{
    public partial class JuegoUNOServicio
    {
        public void IniciarPartida(string idSala)
        {
            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(idSala));
            PonerSalaEnJuego(idSala);

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                jugador.Value.NotificarInicioPartida(salaBuscada);
            }
        }

        private void PonerSalaEnJuego(string idSala)
        {
            salasCreadas.Where(sala => sala.Id.Equals(idSala)).FirstOrDefault().EnJuego = true;
        }

        public void RepartirCartas(Sala sala)
        {
            foreach (var jugador in sala.JugadoresEnSala)
            {
                jugador.Value.ObtenerMaso();
            }
        }
    }
}
