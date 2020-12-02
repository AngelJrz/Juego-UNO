using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.AdministrarJugador
{
    [ServiceContract(CallbackContract = typeof(IRecuperarCuentaCallback))]
    public interface IRecuperarCuenta
    {
        [OperationContract(IsOneWay = true)]
        void RegistrarJugador();
    }
}
