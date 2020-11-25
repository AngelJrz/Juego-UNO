using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.AdministrarSala
{
    [ServiceContract(CallbackContract = typeof(ISalaCallback))]
    public interface IAdministrarSala
    {
        [OperationContract(IsOneWay = true)]
        void CrearSala(Sala nuevaSala);

        [OperationContract(IsOneWay = true)]
        void UnirseASala(Sala salaAUnirse, Dominio.Jugador jugador);

        [OperationContract(IsOneWay = true)]
        void SalirDeSala(string idSala);
    }
}
