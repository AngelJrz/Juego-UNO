using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.LogicaJuego
{
    [ServiceContract]
    public interface IJuegoCallback
    {
        /// <summary>
        /// Saca el jugador especificado de la sala.
        /// </summary>
        /// <param name="jugadorASacar">Jugador a sacar de la sala.</param>
        [OperationContract(IsOneWay = true)]
        void SacarJugador(Dominio.Jugador jugadorASacar);

        /// <summary>
        /// Notifica al jugador que se salió de la sala.
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void NotificarSalidaDeSala();

        /// <summary>
        /// Notifica a los jugadores que el creador de la sala la eliminó.
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void NotificarEliminacionDeSala();

        /// <summary>
        /// Notifica al creador de la sala que se salió de ella.
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void EliminarCreador();
    }
}
