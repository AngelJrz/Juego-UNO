using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using UNOGui.Logica;
using UNOGui.Ventanas;

namespace UNOGui.Paginas
{
    /// <summary>
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Page
    {
        /// <summary>
        /// Obtiene el nickname del Jugador a iniciar sesión.
        /// </summary>
        public string JugadorNickname 
        { 
            get 
            { 
                return usuarioTextbox.Text; 
            } 
        }

        public Login()
        {
            InitializeComponent();
        }

        private void IrARegistrarCuenta(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RegistrarCuenta());
        }

        private void IrAVerificarCodigo(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new IngresoDeCorreo());
        }

        private void IniciarSesionBoton(object sender, RoutedEventArgs e)
        {
            if (CamposCompletos())
            {
                string nickname = usuarioTextbox.Text.Trim();
                string contraseña = contraseñaTextbox.Password.Trim();

                try
                {
                    LoginAdmin.IniciarSesion(nickname, contraseña);
                }
                catch (EndpointNotFoundException)
                {
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                        Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                    }.ShowDialog();
                }
                catch (CommunicationObjectFaultedException)
                {
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                        Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                    }.ShowDialog();
                }
            }
            else
            {
                new Mensaje
                {
                    Title = Properties.Resources.Login_MensajeCamposTitulo,
                    TituloMensaje = Properties.Resources.Login_MensajeCamposTitulo,
                    Contenido = Properties.Resources.Login_MensajeCamposContenido
                }.ShowDialog();
            }
        }

        private bool CamposCompletos()
        {
            return (usuarioTextbox.Text.Trim() != "" && contraseñaTextbox.Password.Trim() != "");
        }
    }
}
