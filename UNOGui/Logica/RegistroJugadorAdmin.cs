﻿using System.ServiceModel;
using UNOGui.JuegoUNOServicio;

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
        public static void RegistrarNuevoJugador(Jugador nuevoJugador)
        {
            try
            {
                servidor.RegistrarJugador(nuevoJugador);
            }
            catch (EndpointNotFoundException)
            {
                throw;
            }
        }

        /// <summary>
        /// Hace la llamada al servidor para verificar la clave de verificación de registro.
        /// </summary>
        /// <param name="clave">La clave de verificación</param>
        public static void VerificarClaveIngresada(string clave)
        {
            try
            {
                servidor.VerificarClave(clave);
            }
            catch (EndpointNotFoundException)
            {
                throw;
            }
        }

        /// <summary>
        /// Hace la llamada al servidor para cancelar el registro de un jugador.
        /// </summary>
        public static void CancelarRegistrarJugador()
        {    
            try
            {
                servidor.CancelarRegistro();
            }
            catch (EndpointNotFoundException)
            {
                throw;
            }
        }

        /// <summary>
        /// Hace la llamada al servidor para enviar la clave de verificación nuevamente.
        /// </summary>
        public static void EnviarClave()
        { 
            try
            {
                servidor.EnviarClaveDeNuevo();
            }
            catch (EndpointNotFoundException)
            {
                throw;
            }
        }
    }
}
