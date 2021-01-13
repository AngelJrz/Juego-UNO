using System;

using UNOServerTest.JuegoUNOServicioTest;

namespace UNOServerTest.AdministrarJugador
{
    public class PerfilCallbackAdmin : IPerfilCallback
    {
        public Jugador Jugador { get; set; }
        public void ObtenerInformacionJugador(Jugador jugador)
        {
            Jugador = jugador;
        }
    }
}
