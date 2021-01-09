using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.Login
{
    /// <summary>
    /// Enumeracion para los resultados posibles de un inicio de sesión.
    /// </summary>
    public enum ResultadoLogin
    {
        NoExisteNickname = 1,
        ContraseñaIncorrecta = 2,
        ExisteJugador = 3,
        SesionIniciada = 4
    }
}
