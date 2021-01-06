﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNO.Contratos.LogicaJuego;

namespace UNO.Contratos.LogicaJuego
{
    /// <summary>
    /// 
    /// </summary>
    [ServiceContract]
    public interface ISalaCallback
    {
        /// <summary>
        /// Notifica al jugador la sala creada.
        /// </summary>
        /// <param name="salaCreada">Sala creada</param>
        [OperationContract(IsOneWay = true)]
        void NotificarCreacionDeSala(Sala salaCreada);

        /// <summary>
        /// Notifica al jugador el estado de la union a una sala.
        /// </summary>
        /// <param name="resultado">Resultado de la union a una sala</param>
        [OperationContract(IsOneWay = true)]
        void NotificarUnionASala(ResultadoUnionSala resultado);

        /// <summary>
        /// Actualiza la sala del jugador con los nuevos jugadores.
        /// </summary>
        /// <param name="jugadores">Jugadores de la sala</param>
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
