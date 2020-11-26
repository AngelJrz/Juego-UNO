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
    /// Lógica de interacción para RegistroEnEspera.xaml
    /// </summary>
    public partial class RegistroEnEspera : Page
    {
        public RegistroEnEspera()
        {
            InitializeComponent();
        }

        private void CancelarRegistro(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Login());
        }

        private void ConfirmarRegistro(object sender, RoutedEventArgs e)
        {
            if (claveIngresada.Text.Trim() != "")
            {
                RegistroJugadorAdmin.VerificarClaveIngresada(claveIngresada.Text);
            }
            else
            {
                MessageBox.Show("El campo esta vacío", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
