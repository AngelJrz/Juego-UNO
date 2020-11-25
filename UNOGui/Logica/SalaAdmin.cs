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
    }
}
