﻿using System;
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

        public static void ColocarCarta(Carta nuevaCarta, Sala salaDeJjugador)
        {
            try
            {
                servidor.ColocarCartaCentral(nuevaCarta, salaDeJjugador);
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

        public static void TomarCarta(Sala salaDeJjugador)
        {
            try
            {
                servidor.TomarCarta(salaDeJjugador);
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

        public static void AnunciarGanador(Sala salaDeJjugador)
        {
            try
            {
                servidor.AnunciarGanador(salaDeJjugador);
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
