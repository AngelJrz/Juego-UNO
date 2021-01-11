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

        public static void AnunciarGanador(String idSalaDeJjugador)
        {
            try
            {
                servidor.AnunciarGanador(idSalaDeJjugador);
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
    }
}
