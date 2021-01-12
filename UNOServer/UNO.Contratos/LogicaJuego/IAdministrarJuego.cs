using System;
using System.ServiceModel;
using UNO.Dominio;

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

        /// <summary>
        /// Actualiza la carta central del tablero.
        /// </summary>
        /// <param name="cartaCentral">Información de la nueva carta central que se actualizará en los clientes</param>
        /// <param name="idSalaJugador">La sala a la que pertenece el usuario</param>
        [OperationContract(IsOneWay = true)]
        void ColocarCartaCentral(Carta cartaCentral, String idSalaJugador);

        /// <summary>
        /// El jugador toma una carta del mazo.
        /// </summary>
        /// <param name="idSalaJugador">La sala a la que pertenece el usuario</param>
        /// <param name="nickname">Nombre del jugador</param>
        [OperationContract(IsOneWay = true)]
        void TomarCarta(String idSalaJugador, String nickname);

        /// <summary>
        /// Se anuncia el ganador de la partida a todos los clientes.
        /// </summary>
        /// <param name="idSalaJugador">La sala a la que pertenece el usuario</param>
        /// <param name="jugadorGanador">Jugador ganador</param>
        [OperationContract(IsOneWay = true)]
        void AnunciarGanador(String idSalaJugador, Jugador jugadorGanador);

        /// <summary>
        /// Actualiza el numero de cartas que tiene el jugador en la mano.
        /// </summary>
        /// <param name="idSalaJugador">La sala a la que pertenece el usuario</param>
        /// <param name="nickname">Nombre del usuario a actualizar</param>
        /// <param name="numeroDeCartas">Numero nuevo de cartas</param>
        [OperationContract(IsOneWay = true)]
        void ActualizarNumeroDeCarta(String idSalaJugador, String nickname, String numeroDeCartas);

        /// <summary>
        /// Actualiza el puntaje del jugador en la partida.
        /// </summary>
        /// <param name="idSalaJugador">La sala a la que pertenece el usuario</param>
        /// <param name="nickname">Nombre del usuario a actualizar</param>
        /// <param name="puntajeASumar">Puntaje a sumar del jugador</param>
        [OperationContract(IsOneWay = true)]
        void ActualizarPuntaje(String idSalaJugador, String nickname, int puntajeASumar);
        #endregion
    }
}
