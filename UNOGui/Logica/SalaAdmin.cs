using System;
using System.ServiceModel;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica.Log;

namespace UNOGui.Logica
{
    /// <summary>
    /// 
    /// </summary>
    public static class SalaAdmin
    {
        private static readonly InstanceContext contexto = new InstanceContext(new JuegoCallbackAdmin());
        private static readonly AdministrarJuegoClient servidor = new AdministrarJuegoClient(contexto);

        /// <summary>
        /// Lógica para comunicarse con el servidor y unirse a una sala.
        /// </summary>
        /// <param name="salaBuscada">Sala a unirse</param>
        /// <param name="jugador">Jugador que desea unirse</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void UnirseASala(Sala salaBuscada, Jugador jugador)
        {
            try
            {
                servidor.UnirseASala(salaBuscada, jugador);
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
        /// Logica para comunicarse con el servidor y crear la sala.
        /// </summary>
        /// <param name="nuevaSala">Sala que será creada</param>
        /// <param name="jugador">Jugador que crea la sala</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void CrearSala(Sala nuevaSala, Jugador jugador)
        {
            try
            {
                servidor.CrearSala(nuevaSala, jugador);
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
        /// Saca al Jugador de la sala.
        /// </summary>
        /// <param name="idSala">Id de la sala</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void SalirDeSala(string idSala, string nickname)
        {
            try
            {
                servidor.SalirDeSala(idSala, nickname);
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
