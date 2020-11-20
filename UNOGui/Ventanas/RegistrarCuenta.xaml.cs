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
    /// Lógica de interacción para RegistrarCuenta.xaml
    /// </summary>
    public partial class RegistrarCuenta : Window
    {
        public RegistrarCuenta()
        {
            InitializeComponent();
        }

        private void CancelarRegistro(object sender, RoutedEventArgs e)
        {
            Login loginWindow = new Login();
            loginWindow.Show();

            this.Close();
        }

        private void RegistrarNuevaCuenta(object sender, RoutedEventArgs e)
        {
            RegistroEnEspera registroEnEsperaVentana = new RegistroEnEspera();
            registroEnEsperaVentana.Show();

            this.Close();
        }
    }
}
