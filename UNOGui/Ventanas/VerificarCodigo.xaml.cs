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
using System.Windows.Shapes;

namespace UNOGui.Ventanas
{
    /// <summary>
    /// Lógica de interacción para VerificarCodigo.xaml
    /// </summary>
    public partial class VerificarCodigo : Window
    {
        public VerificarCodigo()
        {
            InitializeComponent();
        }

        private void IrARecuperacionDeCuenta(object sender, RoutedEventArgs e)
        {
            RecuperacionCuenta recuperacionDeCuenta = new RecuperacionCuenta();
            recuperacionDeCuenta.Show();

            this.Close();
        }

        private void Cancelar(object sender, RoutedEventArgs e)
        {
            Login login = new Login();
            login.Show();

            this.Close();
        }
    }
}
