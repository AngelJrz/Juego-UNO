using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.Login
{
    /// <summary>
    /// Enumeracion para los resultados posibles de un inicio de sesión.
    /// </summary>
    public enum ResultadoLogin
    {
        /// <summary>
        /// El nickname ingresado no existe en la base de datos
        /// </summary>
        NoExisteNickname = 1,
        /// <summary>
        /// La contraseña ingresada es incorrecta
        /// </summary>
        ContraseñaIncorrecta = 2,
        /// <summary>
        /// El jugador ingresado existe en el sistema
        /// </summary>
        ExisteJugador = 3,
        /// <summary>
        /// La sesión del jugador fue iniciada
        /// </summary>
        SesionIniciada = 4
    }
}
