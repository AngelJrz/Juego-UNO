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

        private void CambiarContrasenia(object sender, RoutedEventArgs e)
        {
            if (CamposCompletos())
            {
                MessageBox.Show("Contraseña cambiada");
            }
        }

        private void Cancelar(object sender, RoutedEventArgs e)
        {
            /*
            Login login = new Login();
            login.Show();

            this.Close();
            */
        }

        private bool CamposCompletos()
        {
            bool completo = false;

            if (nuevaContrasenia.Password.Trim() != "" &&
                nuevaContrasenia2.Password.Trim() != "")
            {
                if (nuevaContrasenia.Password.Trim() == nuevaContrasenia2.Password.Trim())
                {
                    completo = true;
                }
                else
                {
                    MessageBox.Show("Las contraseñas no son iguales");
                }
            }
            else
            {
                MessageBox.Show("Los campos estan incompletos");
            }

            return completo;
        }
    }
}
