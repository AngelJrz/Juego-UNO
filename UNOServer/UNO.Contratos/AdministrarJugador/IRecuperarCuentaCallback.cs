using System.ServiceModel;

namespace UNO.Contratos.AdministrarJugador
{
    /// <summary>
    /// Interfaz para la recuperación de una cuenta.
    /// </summary>
    [ServiceContract]
    public interface IRecuperarCuentaCallback
    {
        /// <summary>
        /// Notifica el envío de la clave.
        /// </summary>
        /// <param name="resultado">Resultado del envío de la clave</param>
        [OperationContract(IsOneWay = true)]
        void NotificarEnvioClave(bool resultado);

        /// <summary>
        /// Notifica el resultado de la verificación
        /// </summary>
        /// <param name="resultado">Resultado de la verificación</param>
        [OperationContract(IsOneWay = true)]
        void NotificarResultadoVerificación(bool resultado);

        /// <summary>
        /// Notifica el resultado de la recuperación de cuenta.
        /// </summary>
        /// <param name="recuperada">Resultado de la recuperación</param>
        [OperationContract(IsOneWay = true)]
        void NotificarResultadoRecuperacion(bool recuperada);
    }
}
