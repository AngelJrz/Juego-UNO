using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.RegistrarJugador
{
    [ServiceContract]
    public interface IRegistrarJugadorCallback
    {
        [OperationContract(IsOneWay = true)]
        void NotificarRegistro(ResultadoRegistro resultado);

        [OperationContract(IsOneWay = true)]
        void NotificarEnvioClave();
    }
}
