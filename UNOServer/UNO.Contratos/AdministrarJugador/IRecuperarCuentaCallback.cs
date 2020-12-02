using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.AdministrarJugador
{
    [ServiceContract]
    public interface IRecuperarCuentaCallback
    {
        [OperationContract(IsOneWay = true)]
        void RegistrarJugador();
    }
}
