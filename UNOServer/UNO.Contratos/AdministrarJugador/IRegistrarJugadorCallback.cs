using System.ServiceModel;

namespace UNO.Contratos.AdministrarJugador
{
    /// <summary>
    /// Interfaz para comunicarse con cliente y notificar sobre el resultado de ciertas operaciones.
    /// </summary>
    [ServiceContract]
    public interface IRegistrarJugadorCallback
    {
        /// <summary>
        /// Notifica el resultado de registrar un nuevo Jugador.
        /// </summary>
        /// <param name="resultado">Resultado del registro de un Jugador.</param>
        [OperationContract(IsOneWay = true)]
        void NotificarRegistro(ResultadoRegistro resultado);

        /// <summary>
        /// Notifica el resultado de comprobación de la clave de registro.
        /// </summary>
        /// <param name="claveValida">Notifica si la clave fue valida.</param>
        [OperationContract(IsOneWay = true)]
        void NotificarResultadoClave(bool claveValida);

        /// <summary>
        /// Notifica cuando se cancela el registro de un Jugador.
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void NotificarCancelacionRegistro();

        /// <summary>
        /// Notifica cuando se envía de nuevo la clave al Jugador.
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void NotificarEnvioDeClave();
    }
}
