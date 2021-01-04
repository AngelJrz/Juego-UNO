using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.LogicaJuego
{
    [ServiceContract(CallbackContract = typeof(IJuegoCallback))]
    public interface IAdministrarJuego
    {
        [OperationContract(IsOneWay = true)]
        void SalirDeSala(string idSala);
    }
}
