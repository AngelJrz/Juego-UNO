using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.LogicaJuego
{
    [ServiceContract(CallbackContract = typeof(IPartidaCallback))]
    public interface IAdministrarPartida
    {
        [OperationContract(IsOneWay = true)]
        void IniciarPartida(string idSala);

        [OperationContract(IsOneWay = true)]
        void RepartirCartas(Sala sala);
    }
}
