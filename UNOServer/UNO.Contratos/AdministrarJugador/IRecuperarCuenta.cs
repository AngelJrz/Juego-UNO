using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNO.Dominio;

namespace UNO.Contratos.AdministrarJugador
{
    [ServiceContract(CallbackContract = typeof(IRecuperarCuentaCallback))]
    public interface IRecuperarCuenta
    {

        [OperationContract(IsOneWay = true)]
        void VerificarClaveRecuperacion(string clave);

        [OperationContract(IsOneWay = true)]
        void EnviarClaveRecuperacion(Jugador infoJugador);

        [OperationContract(IsOneWay = true)]
        void ActualizarContrasenia(string contrasenia);
    }
}
