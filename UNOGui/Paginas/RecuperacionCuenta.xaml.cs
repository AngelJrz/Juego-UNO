using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using UNOGui.Logica;

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
                MessageBox.Show("Los campos estan incompletos", "Falta información", MessageBoxButton.OK, MessageBoxImage.Warning);
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
                MessageBox.Show("Las contraseñas no son iguales", "Información invalida", MessageBoxButton.OK, MessageBoxImage.Warning);
            }

            return iguales;
        }
    }
}
