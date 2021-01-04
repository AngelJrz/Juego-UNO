using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNO.Contratos.LogicaJuego;

namespace UNO.Contratos
{
    public partial class JuegoUNOServicio : IAdministrarPartida
    {
        public void IniciarPartida(string idSala)
        {
            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(idSala));

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                (jugador.Key as IPartidaCallback).NotificarInicioPartida(salaBuscada);
            }
        }

        public void RepartirCartas(Sala sala)
        {
            foreach (var jugador in sala.JugadoresEnSala)
            {
                (jugador.Key as IPartidaCallback).ObtenerMaso();
            }
        }
    }
}
