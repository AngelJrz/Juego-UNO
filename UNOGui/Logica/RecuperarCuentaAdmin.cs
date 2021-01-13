
using System.ServiceModel;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica.Log;

namespace UNOGui.Logica
{
    public static class RecuperarCuentaAdmin
    {
        private static readonly InstanceContext contexto = new InstanceContext(new RecuperarCuentaCallback());
        private static readonly RecuperarCuentaClient servidor = new RecuperarCuentaClient(contexto);

        /// <summary>
        /// Lógica para verificar la clave de recuperación,
        /// </summary>
        /// <param name="clave">Clave de recuperación</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void VerificarClave(string clave)
        {
            try
            {
                servidor.VerificarClaveRecuperacion(clave);
            }
            catch (EndpointNotFoundException ex)
            {
                LoggerAdmin.EscribirLog("Error", ex);
                throw;
            }
            catch (CommunicationObjectFaultedException ex)
            {
                LoggerAdmin.EscribirLog("Error", ex);
                throw;
            }
        }

        /// <summary>
        /// Lógica para enviar la clave al servidor.
        /// </summary>
        /// <param name="jugador">Jugador al que se la va a enviar la clave</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void EnviarClave(Jugador jugador)
        {
            try
            {
                servidor.EnviarClaveRecuperacion(jugador);
            }
            catch (EndpointNotFoundException ex)
            {
                LoggerAdmin.EscribirLog("Error", ex);
                throw;
            }
            catch (CommunicationObjectFaultedException ex)
            {
                LoggerAdmin.EscribirLog("Error", ex);
                throw;
            }
        }

        /// <summary>
        /// Lógica para actualizar la contraseña.
        /// </summary>
        /// <param name="contrasenia">Nueva contraseña</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void ActualizarContrasenia(string contrasenia)
        {
            try
            {
                servidor.ActualizarContrasenia(contrasenia);
            }
            catch (EndpointNotFoundException ex)
            {
                LoggerAdmin.EscribirLog("Error", ex);
                throw;
            }
            catch (CommunicationObjectFaultedException ex)
            {
                LoggerAdmin.EscribirLog("Error", ex);
                throw;
            }
        }
    }
}
