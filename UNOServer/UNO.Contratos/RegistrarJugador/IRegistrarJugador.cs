using System.ServiceModel;
using UNO.Dominio;

namespace UNO.Contratos.RegistrarJugador
{
    [ServiceContract(CallbackContract = typeof(IRegistrarJugadorCallback))]
    public interface IRegistrarJugador
    {
        [OperationContract(IsOneWay = true)]
        void RegistrarJugador(Jugador jugador);

        [OperationContract(IsOneWay = true)]
        void VerificarClave(string clave);
    }
}
