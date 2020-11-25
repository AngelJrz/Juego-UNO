using System.Windows;
using UNOGui.Logica;

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
                RegistroJugadorAdmin.VerificarClaveIngresada(claveIngresada.Text);
            }
            else
            {
                MessageBox.Show("El campo esta vacío","Error",MessageBoxButton.OK,MessageBoxImage.Error);
            }
        }
    }
}
