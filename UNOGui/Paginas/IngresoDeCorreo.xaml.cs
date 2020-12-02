using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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
                NavigationService.Navigate(new VerificarCodigo());
            }
        }

        private bool CamposCompletos()
        {
            bool completos = false;

            if (correoIngresado.Text.Trim() == "")
            {
                MessageBox.Show("El campo esta incompleto");
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
                MessageBox.Show("El correo electronico ingresado no es valido", "Información invalida", MessageBoxButton.OK, MessageBoxImage.Warning);
            }

            return valido;
        }
    }
}
