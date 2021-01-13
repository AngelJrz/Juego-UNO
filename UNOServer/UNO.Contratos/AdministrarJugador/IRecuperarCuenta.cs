using System.ServiceModel;
using UNO.Dominio;

namespace UNO.Contratos.AdministrarJugador
{
    /// <summary>
    /// Interfaz de servicio para recuperar la cuenta de un Jugador.
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IRecuperarCuentaCallback))]
    public interface IRecuperarCuenta
    {
        /// <summary>
        /// Verifica la clave de recuperación.
        /// </summary>
        /// <param name="clave">Clave a verificar</param>
        [OperationContract(IsOneWay = true)]
        void VerificarClaveRecuperacion(string clave);

        /// <summary>
        /// Envía la clave de recuperación.
        /// </summary>
        /// <param name="infoJugador">Jugador al que se enviará la clave</param>
        [OperationContract(IsOneWay = true)]
        void EnviarClaveRecuperacion(Jugador infoJugador);

        /// <summary>
        /// Actualiza la contraseña de un Jugador.
        /// </summary>
        /// <param name="contrasenia">Nueva contraseña</param>
        [OperationContract(IsOneWay = true)]
        void ActualizarContrasenia(string contrasenia);
    }
}
