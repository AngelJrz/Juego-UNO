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
    /// Lógica de interacción para RegistroEnEspera.xaml
    /// </summary>
    public partial class RegistroEnEspera : Window
    {
        public RegistroEnEspera()
        {
            InitializeComponent();
        }

        private void CancelarRegistro(object sender, RoutedEventArgs e)
        {
            Login loginWindow = new Login();
            loginWindow.Show();

            this.Close();
        }

        private void ConfirmarRegistro(object sender, RoutedEventArgs e)
        {
            if (claveIngresada.Text.Trim() != "")
            {
                MessageBox.Show("Comprobando clave");
            }
            else
            {
                MessageBox.Show("El campo esta vacío","Error",MessageBoxButton.OK,MessageBoxImage.Error);
            }
        }
    }
}
