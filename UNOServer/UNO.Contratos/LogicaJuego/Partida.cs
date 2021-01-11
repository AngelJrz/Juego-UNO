using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.LogicaJuego
{
    public class Partida
    {
        private int turno = 1;

        /// <summary>
        /// Obtiene o establece la dirección de los turnos de los jugadores
        /// </summary>
        public String SentidoJuego { get; set; } = "DERECHA";

        /// <summary>
        /// Obtiene o establece el jugador en turno
        /// </summary>
        public List<Dominio.Jugador> JugadoresEnPartida { get; set; }

        /// <summary>
        /// Realiza un cambio de turno en la partida
        /// </summary>
        public String CambiarTurno()
        {
            if (SentidoJuego.Equals("DERECHA"))
            {
                if (turno < JugadoresEnPartida.Count)
                {
                    turno++;
                }
                else
                {
                    turno = 1;
                }
            }
            else
            {
                if (turno > 1)
                {
                    turno--;
                }
                else
                {
                    turno = JugadoresEnPartida.Count;
                }
            }

            return JugadoresEnPartida.ElementAt(turno - 1).Nickname;
        }
    }
}
