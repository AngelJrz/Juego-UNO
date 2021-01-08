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
        /// <summary>
        /// Método estático encargado de comunicarse con el método de iniciar sesión del servidor.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador.</param>
        /// <param name="contraseña">Contraseña del Jugador.</param>
        public static void IniciarSesion(string nickname, string contraseña)
        {
            InstanceContext contexto = new InstanceContext(new LoginCallbackAdmin());
            LoginClient servidor = new LoginClient(contexto);

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
    }
}
