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
                RecuperarCuentaAdmin.VerificarClave(codigoIngresado.Text.Trim());
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
