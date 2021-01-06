using System.Linq;
using UNOGui.JuegoUNOServicio;
using System.Windows;
using UNOGui.Ventanas;
using UNOGui.Paginas;
using System.Collections.ObjectModel;

namespace UNOGui.Logica
{
    /// <summary>
    /// Clase encargada de administrar los métodos de la interfaz ILoginCallback, necesaria para el inicio de sesión.
    /// </summary>
    public class LoginCallbackAdmin : ILoginCallback
    {
        public void NotificarResultadoLogin(ResultadoLogin resultado)
        {
            if (resultado == ResultadoLogin.ExisteJugador)
            {
                Principal ventanaPrincipal = Application.Current.Windows.OfType<Principal>()
                    .SingleOrDefault();

                string nicknameJugadorActual = (ventanaPrincipal.Content as Login).JugadorNickname;

                MenuPrincipal menuPrincipal = new MenuPrincipal()
                {
                    DataContext = new Jugador
                    {
                        Nickname = nicknameJugadorActual
                    }
                };

                menuPrincipal.Show();
                ventanaPrincipal.Close();
            }
            else
            {
                Mensaje ventanaMensaje = new Mensaje();

                if (resultado == ResultadoLogin.NoExisteNickname)
                {
                    ventanaMensaje.Title = Properties.Resources.Login_MensajeNicknameTitulo;
                    ventanaMensaje.TituloMensaje = Properties.Resources.Login_MensajeNicknameTitulo;
                    ventanaMensaje.Contenido = Properties.Resources.Login_MensajeNicknameContenido;
                }
                else if (resultado == ResultadoLogin.ContraseñaIncorrecta) 
                {
                    ventanaMensaje.Title = Properties.Resources.Login_MensajeContraseñaTitulo;
                    ventanaMensaje.TituloMensaje = Properties.Resources.Login_MensajeContraseñaTitulo;
                    ventanaMensaje.Contenido = Properties.Resources.Login_MensajeContraseñaContenido;
                }

                ventanaMensaje.ShowDialog();
            }
        }

        public void ObtenerJugadoresTop(Jugador[] jugadoresTop)
        {
            MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>()
                    .SingleOrDefault();

            menuPrincipal.PaginaIncio.TablaPuntaciones.ItemsSource = new ObservableCollection<Jugador>(jugadoresTop);
        }
    }
}
