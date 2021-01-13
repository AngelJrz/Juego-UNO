
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
    /// Lógica de interacción para IngresoDeCorreo.xaml
    /// </summary>
    public partial class IngresoDeCorreo : Page
    {
        public IngresoDeCorreo()
        {
            InitializeComponent();
        }

        private void Cancelar(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void IrAVerificarCodigo(object sender, RoutedEventArgs e)
        {
            if (CamposCompletos() && CorreoValido())
            {
                Jugador usuario = new Jugador()
                {
                    CorreoElectronico = correoIngresado.Text.Trim()
                };

                RecuperarCuentaAdmin.EnviarClave(usuario);
            }
        }

        private bool CamposCompletos()
        {
            bool completos = false;

            if (correoIngresado.Text.Trim() == "")
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.CamposIncompletosTitulo,
                    Contenido = Properties.Resources.CamposIncompletosMensaje
                }.ShowDialog();
            }
            else
            {
                completos = true;
            }

            return completos;
        }

        private bool CorreoValido()
        {
            bool valido = false;

            Regex email = new Regex("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$");

            if (email.IsMatch(correoIngresado.Text.Trim()))
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
