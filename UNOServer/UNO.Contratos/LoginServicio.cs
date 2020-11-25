using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNO.Contratos.Login;
using UNO.AccesoADatos.AdministrarDatos;

namespace UNO.Contratos
{
    public partial class JuegoUNOServicio : ILogin
    {
        /// <summary>
        /// Inicia sesión de un Jugador existente en el juego.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador.</param>
        /// <param name="contraseña">Contraseña del Jugador.</param>
        public void IniciarSesion(string nickname, string contraseña)
        {
            ResultadoLogin resultadoLogin;
            AdminDatosJugador adminDatosJugador = new AdminDatosJugador();

            if (adminDatosJugador.ExisteNickname(nickname))
            {
                if (adminDatosJugador.EsContraseñaCorrecta(nickname, contraseña))
                {
                    resultadoLogin = ResultadoLogin.ExisteJugador;
                }
                else
                {
                    resultadoLogin = ResultadoLogin.ContraseñaIncorrecta;
                }
            }
            else
            {
                resultadoLogin = ResultadoLogin.NoExisteNickname;
            }

            LoginCallback.NotificarResultadoLogin(resultadoLogin);
        }

        private ILoginCallback LoginCallback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<ILoginCallback>();
            }
        }
    }
}
