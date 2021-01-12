using System.Collections.Generic;
using UNO.Dominio;

namespace UNO.Contratos.LogicaJuego
{
    /// <summary>
    /// Clase que controla la información de la sala
    /// </summary>
    public class Sala
    {
        /// <summary>
        /// Obtiene o establece el Id de la sala.
        /// </summary>
        public string Id { get; set; }

        /// <summary>
        /// Obtiene o establece la contraseña de la sala.
        /// </summary>
        public string Contraseña { get; set; }

        /// <summary>
        /// Obtiene o establece el número total de jugadores permitidos en la sala.
        /// </summary>
        public int NumeroTotalDeJugadores { get; set; }

        /// <summary>
        /// Obtiene o establece el Nickname del jugador que creó la sala.
        /// </summary>
        public string CreadaPor { get; set; }

        /// <summary>
        /// Obtiene o establece los jugadores que se encuentran en la sala.
        /// </summary>
        public Dictionary<Jugador, IJuegoCallback> JugadoresEnSala { get; set; }

        /// <summary>
        /// Obtiene o establece si la sala se encuentra ya en juego.
        /// </summary>
        public bool EnJuego { get; set; } = false;

        /// <summary>
        /// Obtiene o establece una partida para la sala de juego.
        /// </summary>
        public Partida PartidaDeSala { get; set; }
    }
}
