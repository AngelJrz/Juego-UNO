using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;

namespace UNOGui.Logica
{
    /// <summary>
    /// Clase encargada de la lógica de inicio de sesión.
    /// </summary>
    public static class LoginAdmin
    {
        /// <summary>
        /// Método estático encargado de comunicarse con el método de iniciar sesión del servidor.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador.</param>
        /// <param name="contraseña">Contraseña del Jugador.</param>
        public static void IniciarSesion(string nickname, string contraseña)
        {
            InstanceContext contexto = new InstanceContext(new Login());
            LoginClient servidor = new LoginClient(contexto);

            servidor.IniciarSesion(nickname, contraseña);
        }
    }
}
