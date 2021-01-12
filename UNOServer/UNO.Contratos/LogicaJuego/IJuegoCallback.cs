using System;
using System.Collections.Generic;
using System.ServiceModel;
using UNO.Dominio;

namespace UNO.Contratos.LogicaJuego
{
    /// <summary>
    /// Establece los comportamientos que tendra el cliente del servidor
    /// </summary>
    [ServiceContract]
    public interface IJuegoCallback
    {
        #region SalaCallback
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

        /// <summary>
        /// Notifica al jugador la falta de jugadores en la partida
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void NotificarFaltaDeJugadores();
        #endregion

        #region PartidaCallback
        /// <summary>
        /// Notifica el inicio de la partida
        /// </summary>
        /// <param name="sala"></param>
        [OperationContract(IsOneWay = true)]
        void NotificarInicioPartida(Sala sala);

        /// <summary>
        /// Establece la mano inicial del jugador en la partida
        /// </summary>
        /// <param name="mazoDeJugador"></param>
        [OperationContract(IsOneWay = true)]
        void ObtenerMazo(List<Carta> mazoDeJugador);

        /// <summary>
        /// Actualiza la carta central del tablero
        /// </summary>
        /// <param name="cartaCentral"></param>
        [OperationContract(IsOneWay = true)]
        void ActualizarCartaCentral(Carta cartaCentral);

        /// <summary>
        /// Añade una nueva carta a la mano del jugador
        /// </summary>
        /// <param name="cartaTomada"></param>
        [OperationContract(IsOneWay = true)]
        void RecibirCarta(Carta cartaTomada);

        /// <summary>
        /// Notifica que jugador fue el ganador de la partida
        /// </summary>
        /// <param name="jugadorGanador"></param>
        [OperationContract(IsOneWay = true)]
        void NotificarGanador(String jugadorGanador);

        /// <summary>
        /// Actualiza el nombre del jugador en turno
        /// </summary>
        /// <param name="nuevoTurno"></param>
        [OperationContract(IsOneWay = true)]
        void CambiarTurno(String nuevoTurno);

        /// <summary>
        /// Actualiza el numero de cartas de un jugador
        /// </summary>
        /// <param name="nickname"></param>
        /// <param name="numeroDeCartas"></param>
        [OperationContract(IsOneWay = true)]
        void ActualizarNumeroDeCartas(String nickname, String numeroDeCartas);

        /// <summary>
        /// Agrega dos nuevas cartas al jugador.
        /// </summary>
        /// <param name="nuevasCartas">Las dos nuevas cartas</param>
        [OperationContract(IsOneWay = true)]
        void ObtenerDosCartas(List<Carta> nuevasCartas);

        /// <summary>
        /// Agrega cuatro nuevas cartas al jugador.
        /// </summary>
        /// <param name="nuevasCartas">Las cuatro nuevas cartas</param>
        [OperationContract(IsOneWay = true)]
        void ObtenerCuatroCartas(List<Carta> nuevasCartas);

        /// <summary>
        /// Obtiene el turno actual de la sala.
        /// </summary>
        /// <param name="turnoActual">Nickname del jugador del turno actual</param>
        [OperationContract(IsOneWay = true)]
        void ObtenerTurnoActual(string turnoActual);

        ///<summary>
        /// Actualiza el puntaje de un jugador en la partida
        /// </summary>
        /// <param name="nickname"></param>
        /// <param name="puntajeASumar"></param>
        [OperationContract(IsOneWay = true)]
        void ActualizarPuntajeDeJugador(String nickname, int puntajeASumar);
        #endregion
    }
}
