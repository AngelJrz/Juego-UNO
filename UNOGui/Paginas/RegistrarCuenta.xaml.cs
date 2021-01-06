using System.ServiceModel;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica;
using UNOGui.Ventanas;

namespace UNOGui.Paginas
{
    /// <summary>
    /// Lógica de interacción para RegistrarCuenta.xaml
    /// </summary>
    public partial class RegistrarCuenta : Page
    {
        public RegistrarCuenta()
        {
            InitializeComponent();
        }

        private void CancelarRegistro(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void RegistrarNuevaCuenta(object sender, RoutedEventArgs e)
        {
            if (CamposCompletos() && CorreoValido() && SonContraseniasIguales())
            {
                Jugador jugadorARegistrar = new Jugador
                {
                    Nickname = usuarioIngresado.Text,
                    CorreoElectronico = correoElectronicoIngresado.Text,
                    Contraseña = contraseniaIngresada.Password
                };

                try
                {
                    RegistroJugadorAdmin.RegistrarNuevoJugador(jugadorARegistrar);
                }
                catch (EndpointNotFoundException)
                {
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                        Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                    }.ShowDialog();
                }
            }
        }

        private bool CamposCompletos()
        {
            bool completo = false;

            if (usuarioIngresado.Text.Trim() != "" &&
                correoElectronicoIngresado.Text.Trim() != "" &&
                contraseniaIngresada.Password.Trim() != "" &&
                contraseniaDosIngresada.Password.Trim() != "")
            {
                completo = true;
            }
            else
            {
                new Mensaje
                {
                    Title = Properties.Resources.CamposIncompletosTitulo,
                    TituloMensaje = Properties.Resources.CamposIncompletosTitulo,
                    Contenido = Properties.Resources.CamposIncompletosMensaje
                }.ShowDialog();
            }

            return completo;
        }

        private bool SonContraseniasIguales()
        {
            bool iguales = false;

            if (contraseniaIngresada.Password.Trim() == contraseniaDosIngresada.Password.Trim())
            {
                iguales = true;
            }
            else
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.Registro_MensajeContraseñasTitulo,
                    Contenido = Properties.Resources.Registro_MensajeContraseñasContenido
                }.ShowDialog();
            }

            return iguales;
        }

        private bool CorreoValido()
        {
            bool valido = false;

            Regex email = new Regex("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$");

            if (email.IsMatch(correoElectronicoIngresado.Text.Trim()))
            {
                valido = true;
            }
            else
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.Registro_MensajeCorreoTitulo,
                    Contenido = Properties.Resources.Registro_MensajeCorreoContenido
                }.ShowDialog();
            }

            return valido;
        }
    }
}
