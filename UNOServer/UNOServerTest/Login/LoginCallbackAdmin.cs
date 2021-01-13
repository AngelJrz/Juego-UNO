using UNO.Contratos.Login;
using UNOServerTest.JuegoUNOServicioTest;

namespace UNOServerTest.Login
{
    public class LoginCallbackAdmin : JuegoUNOServicioTest.ILoginCallback
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
