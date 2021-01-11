using System;
using System.ServiceModel;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica.Log;

namespace UNOGui.Logica
{
    public static class PartidaAdmin
    {
        private static readonly InstanceContext contexto = new InstanceContext(new JuegoCallbackAdmin());
        private static readonly AdministrarJuegoClient servidor = new AdministrarJuegoClient(contexto);

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
        }

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
        }

        /// <summary>
        /// Implementa la lógica para cumunicarse al servidor y anunciar el jugador ganador
        /// </summary>
        /// <param name="idSalaDeJjugador">ID sala del jugador ganador</param>
        /// <param name="jugadorGanador">Jugador ganador</param>
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
        }

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
        }

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
        }
    }
}
