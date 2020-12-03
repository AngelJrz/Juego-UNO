using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.AdministrarSala
{
    /// <summary>
    /// 
    /// </summary>
    [ServiceContract]
    public interface ISalaCallback
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="salaCreada"></param>
        [OperationContract(IsOneWay = true)]
        void NotificarCreacionDeSala(Sala salaCreada);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="resultado"></param>
        [OperationContract(IsOneWay = true)]
        void NotificarUnionASala(ResultadoUnionSala resultado);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="jugadores"></param>
        [OperationContract(IsOneWay = true)]
        void ActualizarSala(List<string> jugadores);

        /// <summary>
        /// Obtiene la información de sala para mostrarla en el cliente.
        /// </summary>
        /// <param name="sala">Sala con la información necesaria.</param>
        [OperationContract(IsOneWay = true)]
        void ObtenerInformacionDeSala(Sala sala);

        /// <summary>
        /// Agrega un nuevo jugador para mostrarla en el cliente.
        /// </summary>
        /// <param name="nuevoJugador">Nuevo jugador.</param>
        [OperationContract(IsOneWay = true)]
        void AgregarNuevoJugador(Dominio.Jugador nuevoJugador);

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
