using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using UNOGui.Logica;
using UNOGui.Ventanas;

namespace UNOGui.Paginas
{
    /// <summary>
    /// Lógica de interacción para RecuperacionCuenta.xaml
    /// </summary>
    public partial class RecuperacionCuenta : Page
    {
        public RecuperacionCuenta()
        {
            InitializeComponent();
        }

        private void CambiarContrasenia(object sender, RoutedEventArgs e)
        {
            if (CamposCompletos() && SonContraseniasIguales())
            {
                RecuperarCuentaAdmin.ActualizarContrasenia(nuevaContrasenia.Password);
            }
        }

        private void Cancelar(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Login());
        }

        private bool CamposCompletos()
        {
            bool completo = false;

            if (nuevaContrasenia.Password.Trim() != "" &&
                nuevaContrasenia2.Password.Trim() != "")
            {
                completo = true;
            }
            else
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.CamposIncompletosTitulo,
                    Contenido = Properties.Resources.CamposIncompletosMensaje
                }.ShowDialog();
            }

            return completo;
        }

        private bool SonContraseniasIguales()
        {
            bool iguales = false;

            if (nuevaContrasenia.Password.Trim() == nuevaContrasenia2.Password.Trim())
            {
                iguales = true;
            }
            else
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ContraseñasIncompatibles,
                    Contenido = Properties.Resources.RecuperacionDeCuenta_ContraseñasIncompatibles
                }.ShowDialog();
            }

            return iguales;
        }
    }
}
