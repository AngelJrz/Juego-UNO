using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.LogicaJuego
{
    [ServiceContract]
    public interface IPartidaCallback
    {
        [OperationContract(IsOneWay = true)]
        void NotificarInicioPartida(Sala sala);

        [OperationContract(IsOneWay = true)]
        void ObtenerMaso();
    }
}
