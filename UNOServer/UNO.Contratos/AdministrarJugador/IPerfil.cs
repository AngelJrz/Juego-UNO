using System.ServiceModel;

namespace UNO.Contratos.AdministrarJugador
{
    /// <summary>
    /// Expone métodos para la administración del perfil de un Jugador.
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IPerfilCallback))]
    public interface IPerfil
    {
        /// <summary>
        /// Busca la información del Jugador.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador a buscar.</param>
        [OperationContract(IsOneWay = true)]
        void BuscarJugador(string nickname);
    }
}
