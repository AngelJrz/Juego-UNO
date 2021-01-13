
namespace UNO.Dominio
{
    /// <summary>
    /// Clase encargada de manejar la información de un Jugador del juego UNO.
    /// </summary>
    public class Jugador
    {
        /// <summary>
        /// Obtiene o establece el valor del Nickname del Jugador.
        /// </summary>
        public string Nickname { get; set; }
        /// <summary>
        /// Obtiene o establece el valor del correo electrónico del Jugador.
        /// </summary>
        public string CorreoElectronico { get; set; }
        /// <summary>
        /// Obtiene o establece el valor de la contraseña del Jugador.
        /// </summary>
        public string Contraseña { get; set; }
        /// <summary>
        /// Obtiene o establece el valor de la experiencia del Jugador.
        /// </summary>
        public int Experiencia { get; set; }
        /// <summary>
        /// Obtiene o establece el valor del puntaje total del Jugador.
        /// </summary>
        public int PuntajeTotal { get; set; }
        /// <summary>
        /// Obtiene o establece el valor de las partidas ganadas del Jugador.
        /// </summary>
        public int PartidasGanadas { get; set; }
        /// <summary>
        /// Obtiene o establece el valor de las partidas jugadas del Jugador.
        /// </summary>
        public int PartidasJugadas { get; set; }
        /// <summary>
        /// Obtiene o establece el valor del nivel del Jugador.
        /// </summary>
        public int Nivel { get; set; }
        /// <summary>
        /// Obtiene o establece el valor de la clave de validación del Jugador.
        /// </summary>
        public string ClaveValidacion { get; set; }
    }
}
