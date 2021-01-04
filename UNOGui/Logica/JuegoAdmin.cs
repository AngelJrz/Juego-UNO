using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNOGui.JuegoUNOServicio;
using System.ServiceModel;

namespace UNOGui.Logica
{
    public static class JuegoAdmin
    {
        private static readonly InstanceContext contexto = new InstanceContext(new JuegoCallbackAdmin());
        private static readonly AdministrarJuegoClient servidor = new AdministrarJuegoClient(contexto);

        /// <summary>
        /// Saca al Jugador de la sala.
        /// </summary>
        /// <param name="idSala">Id de la sala</param>
        public static void SalirDeSala(string idSala)
        {
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
