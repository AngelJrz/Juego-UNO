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
        /// <summary>
        /// Crea una sala para que los jugadores se puedan unir.
        /// </summary>
        /// <param name="nuevaSala">Sala a crear</param>
        /// <param name="jugador">Jugador que crea la sala</param>
        [OperationContract(IsOneWay = true)]
        void CrearSala(Sala nuevaSala, Dominio.Jugador jugador);

        /// <summary>
        /// Une un jugador a la sala.
        /// </summary>
        /// <param name="salaAUnirse">Sala a la cual se va a unir</param>
        /// <param name="jugador">Jugador que se va a unir a la sala</param>
        [OperationContract(IsOneWay = true)]
        void UnirseASala(Sala salaAUnirse, Dominio.Jugador jugador);

        [OperationContract(IsOneWay = true)]
        void SalirDeSala(string idSala, string nickname);
    }
}
