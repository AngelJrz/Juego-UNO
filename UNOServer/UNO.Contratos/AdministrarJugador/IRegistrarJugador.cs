using System.ServiceModel;
using UNO.Dominio;

namespace UNO.Contratos.AdministrarJugador
{
    /// <summary>
    /// 
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IRegistrarJugadorCallback))]
    public interface IRegistrarJugador
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="jugador"></param>
        [OperationContract(IsOneWay = true)]
        void RegistrarJugador(Jugador jugador);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="clave"></param>
        [OperationContract(IsOneWay = true)]
        void VerificarClave(string clave);
    }
}
