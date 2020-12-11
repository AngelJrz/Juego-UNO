using System.ServiceModel;

namespace UNO.Contratos.AdministrarJugador
{
    /// <summary>
    /// Interfaz que expone métodos para enviar información del Jugador al cliente.
    /// </summary>
    [ServiceContract]
    public interface IPerfilCallback
    {
        /// <summary>
        /// Envía al cliente la información del jugador.
        /// </summary>
        /// <param name="jugador">Jugador consultado.</param>
        [OperationContract(IsOneWay = true)]
        void ObtenerInformacionJugador(Dominio.Jugador jugador);
    }
}
