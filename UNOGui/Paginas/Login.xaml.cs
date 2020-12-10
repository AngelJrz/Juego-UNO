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
            NavigationService.Navigate(new VerificarCodigo());
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
                        TituloMensaje = "Ups!",
                        Contenido = "Lo sentimos, ocurrió un error en el servidor. Intente más tarde."
                    }.ShowDialog();
                }
            }
            else
            {
                new Mensaje
                {
                    Title = "Campos vacíos",
                    TituloMensaje = "Campos vacíos",
                    Contenido = "Por favor ingresa tu usuario y contraseña para iniciar sesión."
                }.ShowDialog();
            }
        }

        private bool CamposCompletos()
        {
            return (usuarioTextbox.Text.Trim() != "" && contraseñaTextbox.Password.Trim() != "");
        }
    }
}
