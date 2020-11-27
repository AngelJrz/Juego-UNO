using System.ServiceModel;
using UNO.Dominio;

namespace UNO.Contratos.AdministrarJugador
{
    /// <summary>
    /// Interfaz comunicarse con el servidor y realizar operaciones del registro de un Jugador.
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IRegistrarJugadorCallback))]
    public interface IRegistrarJugador
    {
        /// <summary>
        /// Registra un nuevo Jugador en el juego UNO.
        /// </summary>
        /// <param name="jugador">Jugador que va a ser registrado.</param>
        [OperationContract(IsOneWay = true)]
        void RegistrarJugador(Jugador jugador);

        /// <summary>
        /// Verifica si la clave de registro es correcta.
        /// </summary>
        /// <param name="clave">Clave de registro a comprobar.</param>
        [OperationContract(IsOneWay = true)]
        void VerificarClave(string clave);

        /// <summary>
        /// Cancela el registro de un Jugador en el juego UNO.
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void CancelarRegistro();

        /// <summary>
        /// Envía la clave de registro nuevamente.
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void EnviarClaveDeNuevo();
    }
}
