using System;
using System.ServiceModel;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica.Log;

namespace UNOGui.Logica
{
    /// <summary>
    /// Lógica de comunicación con el servidor para el registro de un jugador.
    /// </summary>
    public static class RegistroJugadorAdmin
    {
        private static readonly InstanceContext contexto = new InstanceContext(new RegistroJugadorCallback());
        private static readonly RegistrarJugadorClient servidor = new RegistrarJugadorClient(contexto);

        /// <summary>
        /// Hace la llamada al servidor para poder registrar un jugador.
        /// </summary>
        /// <param name="nuevoJugador">Jugador a registrar</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void RegistrarNuevoJugador(Jugador nuevoJugador)
        {
            try
            {
                servidor.RegistrarJugador(nuevoJugador);
            }
            catch (EndpointNotFoundException ex)
            {
                LoggerAdmin.EscribirLog("Error", ex);
                throw;
            }
            catch (TimeoutException ex)
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
        /// Hace la llamada al servidor para verificar la clave de verificación de registro.
        /// </summary>
        /// <param name="clave">La clave de verificación</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void VerificarClaveIngresada(string clave)
        {
            try
            {
                servidor.VerificarClave(clave);
            }
            catch (EndpointNotFoundException ex)
            {
                LoggerAdmin.EscribirLog("Error", ex);
                throw;
            }
            catch (TimeoutException ex)
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
        /// Hace la llamada al servidor para cancelar el registro de un jugador.
        /// </summary>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void CancelarRegistrarJugador()
        {    
            try
            {
                servidor.CancelarRegistro();
            }
            catch (EndpointNotFoundException ex)
            {
                LoggerAdmin.EscribirLog("Error", ex);
                throw;
            }
            catch (TimeoutException ex)
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
        /// Hace la llamada al servidor para enviar la clave de verificación nuevamente.
        /// </summary>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void EnviarClave()
        { 
            try
            {
                servidor.EnviarClaveDeNuevo();
            }
            catch (EndpointNotFoundException ex)
            {
                LoggerAdmin.EscribirLog("Error", ex);
                throw;
            }
            catch (TimeoutException ex)
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
