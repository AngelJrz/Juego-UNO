using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using UNOGui.Logica;
using UNOGui.Ventanas;

namespace UNOGui.Paginas
{
    /// <summary>
    /// Lógica de interacción para VerificarCodigo.xaml
    /// </summary>
    public partial class VerificarCodigo : Page
    {
        public VerificarCodigo()
        {
            InitializeComponent();
        }

        private void IrARecuperacionDeCuenta(object sender, RoutedEventArgs e)
        {
            if (CamposCompletos())
            {
                try
                {
                    RecuperarCuentaAdmin.VerificarClave(codigoIngresado.Text.Trim());
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
                MessageBox.Show("El campo no esta completo");
            }
        }

        private void Cancelar(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Login());
        }

        private bool CamposCompletos()
        {
            return codigoIngresado.Text.Trim() != "";
        }
    }
}
