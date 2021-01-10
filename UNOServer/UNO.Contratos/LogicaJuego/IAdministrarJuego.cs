using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.LogicaJuego
{
    /// <summary>
    /// Interfaz encargada de administrar los métodos que pueden llamar desde el cliente.
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IJuegoCallback))]
    public interface IAdministrarJuego
    {
        #region Administracion de Sala
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

        /// <summary>
        /// Elimina al jugador de una sala.
        /// </summary>
        /// <param name="idSala">Id de sala a salirse</param>
        /// <param name="nickname">Nickname del jugador a salirse</param>
        [OperationContract(IsOneWay = true)]
        void SalirDeSala(string idSala, string nickname);
        #endregion

        #region Administracion de Partida

        /// <summary>
        /// Inicia la partida en una sala.
        /// </summary>
        /// <param name="idSala">Id de sala donde se inicia la partida</param>
        [OperationContract(IsOneWay = true)]
        void IniciarPartida(string idSala);

        #endregion
    }
}
