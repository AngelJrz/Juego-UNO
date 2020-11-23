using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UNO.AccesoADatos.AdministrarDatos
{
    public class AdminDatosJugador
    {
        private readonly JuegoUNOContext baseDeDatos;

        /// <summary>
        /// Constructor de la clase AdminDatosJugador.
        /// </summary>
        public AdminDatosJugador()
        {
            baseDeDatos = new JuegoUNOContext();
        }

        /// <summary>
        /// Verifica si existe el Nickname del Jugador.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador.</param>
        /// <returns>
        /// true si encuentra existe el Nickname, false si no existe.
        /// </returns>
        public bool ExisteNickname(string nickname)
        {
            bool existe = false;

            existe = baseDeDatos.Jugador.Any(jugador => jugador.Nickname.Equals(nickname));

            return existe;
        }

        /// <summary>
        /// Verifica si la contraseña del Jugador es correcta.
        /// </summary>
        /// <param name="contraseña">Contraseña del Jugador.</param>
        /// <returns>
        /// true si la contraseña es correcta, false si no lo es.
        /// </returns>
        public bool EsContraseñaCorrecta(string contraseña)
        {
            bool esCorrecta = false;

            esCorrecta = baseDeDatos.Jugador.Any(jugador => jugador.Contraseña.Equals(contraseña));

            return esCorrecta;
        }
    }
}
