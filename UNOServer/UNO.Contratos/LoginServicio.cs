using System.Collections.Generic;
using System.ServiceModel;
using UNO.Contratos.Login;
using UNO.AccesoADatos.AdministrarDatos;

namespace UNO.Contratos
{
    public partial class JuegoUNOServicio : ILogin
    {
        private readonly List<string> jugadoresConectados = new List<string>();

        /// <summary>
        /// Inicia sesión de un Jugador existente en el juego.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador.</param>
        /// <param name="contraseña">Contraseña del Jugador.</param>
        public void IniciarSesion(string nickname, string contraseña)
        {
            ResultadoLogin resultadoLogin;
            AdminDatosJugador adminDatosJugador = new AdminDatosJugador();

            if (TieneSesionIniciada(nickname))
            {
                resultadoLogin = ResultadoLogin.SesionIniciada;
            }
            else
            {
                if (adminDatosJugador.ExisteNickname(nickname))
                {
                    if (adminDatosJugador.EsContraseñaCorrecta(nickname, contraseña))
                    {
                        resultadoLogin = ResultadoLogin.ExisteJugador;
                        jugadoresConectados.Add(nickname);
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
            }
            
            LoginCallback.NotificarResultadoLogin(resultadoLogin);

            if (resultadoLogin == ResultadoLogin.ExisteJugador)
            {
                List<Dominio.Jugador> jugadoresTop = adminDatosJugador.ObtenerMejoresJugadores();
                LoginCallback.ObtenerJugadoresTop(jugadoresTop);
            }
        }

        private bool TieneSesionIniciada(string nickname)
        {
            return jugadoresConectados.Contains(nickname);
        }

        /// <summary>
        /// Lógica para cerrar sesión de un Jugador.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador a cerrar sesión</param>
        public void CerrarSesion(string nickname)
        {
            jugadoresConectados.Remove(nickname);
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
