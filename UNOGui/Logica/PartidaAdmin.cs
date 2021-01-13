using System;
using System.ServiceModel;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica.Log;

namespace UNOGui.Logica
{
    /// <summary>
    /// Establece la comunicación con el servidor para hacer uso de sus métodos
    /// </summary>
    public static class PartidaAdmin
    {
        private static readonly InstanceContext contexto = new InstanceContext(new JuegoCallbackAdmin());
        private static readonly AdministrarJuegoClient servidor = new AdministrarJuegoClient(contexto);

        /// <summary>
        /// Se comunica con el servidor para dar inicio a una partida
        /// </summary>
        /// <param name="idSala">Identificador de la sala que iniciará la partida</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void IniciarPartida(string idSala)
        {
            try
            {
                servidor.IniciarPartida(idSala);
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
        }

        /// <summary>
        /// Se comunica con el servidor para colocar una nueva carta en el tablero
        /// </summary>
        /// <param name="nuevaCarta">Nueva carta a colocar</param>
        /// <param name="idSalaDeJjugador">Identificador de la sala a actualizar</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void ColocarCarta(Carta nuevaCarta, String idSalaDeJjugador)
        {
            try
            {
                servidor.ColocarCartaCentral(nuevaCarta, idSalaDeJjugador);
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
        /// Se comunica con el servidor para pedir una nueva carta para añadirla a la mano del jugador
        /// </summary>
        /// <param name="idSalaDeJjugador">Identificador de la sala a la que pertenece el jugador</param>
        /// <param name="nickname">Nickname del jugador que requiere una carta</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void TomarCarta(String idSalaDeJjugador, String nickname)
        {
            try
            {
                servidor.TomarCarta(idSalaDeJjugador, nickname);
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
        /// Implementa la lógica para cumunicarse al servidor y anunciar el jugador ganador
        /// </summary>
        /// <param name="idSalaDeJjugador">ID sala del jugador ganador</param>
        /// <param name="jugadorGanador">Jugador ganador</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void AnunciarGanador(String idSalaDeJjugador, Jugador jugadorGanador)
        {
            try
            {
                servidor.AnunciarGanador(idSalaDeJjugador, jugadorGanador);
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
        /// Actualiza el numero de cartas del jugador
        /// </summary>
        /// <param name="idSala">Identificador de la sala a la que pertenece el jugador</param>
        /// <param name="nickname">Nickname del jugador</param>
        /// <param name="nuevoNumero">Nuevo numero de cartas con las que cuenta el jugador</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void ActualizarNumeroDeCartas(String idSala, String nickname, String nuevoNumero)
        {
            try
            {
                servidor.ActualizarNumeroDeCarta(idSala, nickname, nuevoNumero);
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
        /// Se comunica con el servidor para actualizar el puntaje actual en la partida de un jugador
        /// </summary>
        /// <param name="idSalaJugador">Identificador de la sala a la que pertenece el jugador</param>
        /// <param name="nickname">Nickname del jugador</param>
        /// <param name="puntajeASumar">Puntaje del jugador actualizado</param>
        /// <exception cref="EndpointNotFoundException"></exception>
        /// <exception cref="TimeoutException"></exception>
        /// <exception cref="CommunicationObjectFaultedException"></exception>
        public static void ActualizarPuntaje(String idSalaJugador, String nickname, int puntajeASumar)
        {
            try
            {
                servidor.ActualizarPuntaje(idSalaJugador, nickname, puntajeASumar);
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
