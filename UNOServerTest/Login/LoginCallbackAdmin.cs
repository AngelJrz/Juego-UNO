using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNOServerTest.UNOServer;

namespace UNOServerTest.Login
{
    /// <summary>
    /// 
    /// </summary>
    public class LoginCallbackAdmin : ILoginCallback
    {
        /// <summary>
        /// Obtiene o establece el resultado del login
        /// </summary>
        public ResultadoLogin Resultado { get; set; }

        public void NotificarResultadoLogin(ResultadoLogin resultado)
        {
            Resultado = resultado;
        }

        public void ObtenerJugadoresTop(Jugador[] jugadoresTop)
        {
            //throw new NotImplementedException();
        }
    }
}
