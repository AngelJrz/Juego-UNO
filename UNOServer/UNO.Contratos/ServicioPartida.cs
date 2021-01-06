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

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                jugador.Value.NotificarInicioPartida(salaBuscada);
            }
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
