using System.ServiceModel;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica.Log;

namespace UNOGui.Logica
{
    /// <summary>
    /// Clase encargada de la lógica de inicio de sesión.
    /// </summary>
    public static class LoginAdmin
    {
        private static readonly InstanceContext contexto = new InstanceContext(new LoginCallbackAdmin());
        private static readonly LoginClient servidor = new LoginClient(contexto);

        /// <summary>
        /// Método estático encargado de comunicarse con el método de iniciar sesión del servidor.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador.</param>
        /// <param name="contraseña">Contraseña del Jugador.</param>
        public static void IniciarSesion(string nickname, string contraseña)
        {
            try
            {
                servidor.IniciarSesion(nickname, contraseña);
            }
            catch (EndpointNotFoundException ex)
            {
                LoggerAdmin.EscribirLog("Error", ex);
                throw;
            }
        }

        /// <summary>
        /// Logica para comunicarse con el servidor y cerrar sesión.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador que cerrará sesión</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        public static void CerrarSesion(string nickname)
        {
            try
            {
                servidor.CerrarSesion(nickname);
            }
            catch (EndpointNotFoundException)
            {
                throw;
            }
        }
    }
}
