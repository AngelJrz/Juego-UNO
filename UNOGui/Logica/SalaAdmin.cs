using System;
using System.ServiceModel;
using UNOGui.JuegoUNOServicio;

namespace UNOGui.Logica
{
    /// <summary>
    /// 
    /// </summary>
    public static class SalaAdmin
    {
        private static readonly InstanceContext contexto = new InstanceContext(new SalaCallbackAdmin());
        private static readonly AdministrarSalaClient servidor = new AdministrarSalaClient(contexto);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="salaBuscada"></param>
        /// <param name="jugador"></param>
        public static void UnirseASala(Sala salaBuscada, Jugador jugador)
        {
            servidor.UnirseASala(salaBuscada, jugador);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="nuevaSala"></param>
        /// <param name="jugador"></param>
        public static void CrearSala(Sala nuevaSala, Jugador jugador)
        {
            servidor.CrearSala(nuevaSala, jugador);
        }

        /// <summary>
        /// Saca al Jugador de la sala.
        /// </summary>
        /// <param name="idSala">Id de la sala</param>
        public static void SalirDeSala(string idSala)
        {
            AdministrarJuegoClient servidor = new AdministrarJuegoClient(contexto);
            try
            {
                servidor.SalirDeSala(idSala);
            }
            catch (EndpointNotFoundException)
            {
                throw;
            }
            catch (TimeoutException)
            {
                throw;
            }
        }
    }
}
