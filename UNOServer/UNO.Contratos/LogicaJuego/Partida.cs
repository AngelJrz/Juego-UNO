using System;
using System.Collections.Generic;
using System.Linq;

namespace UNO.Contratos.LogicaJuego
{
    /// <summary>
    /// Lógica para la Partida del juego
    /// </summary>
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

        /// <summary>
        /// Obtiene el Nickname del siguiente jugador en turno.
        /// </summary>
        /// <returns>Nickname del siguiente Jugador</returns>
        public string ObtenerSiguienteJugador()
        {
            int turnoAuxiliar = turno;

            if (SentidoJuego.Equals("DERECHA"))
            {
                if (turno < JugadoresEnPartida.Count)
                {
                    turnoAuxiliar++;
                }
                else
                {
                    turnoAuxiliar = 1;
                }
            }
            else
            {
                if (turnoAuxiliar > 1)
                {
                    turnoAuxiliar--;
                }
                else
                {
                    turnoAuxiliar = JugadoresEnPartida.Count;
                }
            }

            return JugadoresEnPartida.ElementAt(turnoAuxiliar - 1).Nickname;
        }

        /// <summary>
        /// Cancela el siguiente jugador.
        /// </summary>
        public void CancelarSiguienteJugador()
        {
            if (SentidoJuego.Equals("DERECHA"))
            {
                if (!SonDosJugadores())
                {
                    turno += 2;

                    if (turno > JugadoresEnPartida.Count)
                    {
                        turno = 1;
                    }
                }
            }
            else
            {
                if (!SonDosJugadores())
                {
                    turno -= 2;

                    if (turno < 1)
                    {
                        turno = JugadoresEnPartida.Count;
                    }
                }  
            }
        }

        /// <summary>
        /// Obtiene el Nickname del jugador en turno
        /// </summary>
        /// <returns>Nickname del jugador en turno</returns>
        public string ObtenerJugadorEnTurno()
        {
            return JugadoresEnPartida.ElementAt(turno - 1).Nickname;
        }

        private bool SonDosJugadores()
        {
            return JugadoresEnPartida.Count == 2;
        }
    }
}
