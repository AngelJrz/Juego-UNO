using UNOServerTest.JuegoUNOServicioTest;

namespace UNOServerTest.Login
{
    public class LoginCallbackAdmin : ILoginCallback
    {
        public ResultadoLogin Resultado { get; set; }

        public void NotificarResultadoLogin(ResultadoLogin resultado)
        {
            Resultado = resultado;
        }

        public void ObtenerJugadoresTop(Jugador[] jugadoresTop)
        {
            
        }
    }
}
