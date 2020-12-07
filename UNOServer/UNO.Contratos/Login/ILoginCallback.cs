using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.Login
{
    /// <summary>
    /// Interfaz para la comunicación con el cliente del juego.
    /// Expone métodos para informar sobre el inicio de sesión.
    /// </summary>
    [ServiceContract]
    public interface ILoginCallback
    {
        /// <summary>
        /// Notifica al cliente el resultado de inicio de sesión.
        /// </summary>
        /// <param name="resultado">Paramétro de tipo enumeración ResultadoLogin</param>
        [OperationContract(IsOneWay = true)]
        void NotificarResultadoLogin(ResultadoLogin resultado);

        /// <summary>
        /// Envía los Jugadores Top 5, con mayor puntaje.
        /// </summary>
        /// <param name="jugadoresTop">Lista de los Jugadores Top</param>
        [OperationContract(IsOneWay = true)]
        void ObtenerJugadoresTop(List<Dominio.Jugador> jugadoresTop);
    }
}
