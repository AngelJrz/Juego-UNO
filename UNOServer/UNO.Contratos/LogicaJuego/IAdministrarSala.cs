using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNO.Contratos.LogicaJuego;

namespace UNO.Contratos.LogicaJuego
{
    [ServiceContract(CallbackContract = typeof(ISalaCallback))]
    public interface IAdministrarSala
    {
        [OperationContract(IsOneWay = true)]
        void CrearSala(Sala nuevaSala, Dominio.Jugador jugador);

        [OperationContract(IsOneWay = true)]
        void UnirseASala(Sala salaAUnirse, Dominio.Jugador jugador);
    }
}
