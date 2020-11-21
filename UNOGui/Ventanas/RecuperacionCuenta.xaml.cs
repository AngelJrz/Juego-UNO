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
    /// Lógica de interacción para RecuperacionCuenta.xaml
    /// </summary>
    public partial class RecuperacionCuenta : Window
    {
        public RecuperacionCuenta()
        {
            InitializeComponent();
        }

        private void IrAValidarCodigo(object sender, RoutedEventArgs e)
        {
            VerificarCodigo verificarCodigoVentana = new VerificarCodigo();
            verificarCodigoVentana.Show();

            this.Close();
        }
    }
}
