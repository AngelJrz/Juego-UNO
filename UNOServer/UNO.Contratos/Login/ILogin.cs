using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.Login
{
    /// <summary>
    /// Interfaz para el inicio de sesión de un Jugador.
    /// Expone los métodos necesarios para realizar el inicio de sesión.
    /// </summary>
    [ServiceContract(CallbackContract = typeof(ILoginCallback))]
    public interface ILogin
    {
        /// <summary>
        /// Inicia sesión de un Jugador existente en el juego.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador.</param>
        /// <param name="contraseña">Contraseña del Jugador.</param>
        [OperationContract(IsOneWay = true)]
        void IniciarSesion(string nickname, string contraseña);

        /// <summary>
        /// Cerra sesión de un Jugador en el juego.
        /// </summary>
        /// <param name="nickname">Nickname del jugador que cerrará sesión</param>
        [OperationContract(IsOneWay = true)]
        void CerrarSesion(string nickname);
    }
}
