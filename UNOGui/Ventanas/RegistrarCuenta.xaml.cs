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
            if (CamposCompletos() && CorreoValido() && SonContraseniasIguales())
            {
                RegistroEnEspera registroEnEsperaVentana = new RegistroEnEspera();
                registroEnEsperaVentana.Show();
                this.Close();
            }

        }

        private bool CamposCompletos()
        {
            bool completo = false;

            if (usuarioIngresado.Text.Trim() != "" &&
                correoElectronicoIngresado.Text.Trim() != "" &&
                contraseniaIngresada.Password.Trim() != "" &&
                contraseniaDosIngresada.Password.Trim() != "")
            {
                completo = true;
            }
            else
            {
                MessageBox.Show("Los campos estan incompletos","Falta información",MessageBoxButton.OK,MessageBoxImage.Warning);
            }

            return completo;
        }

        private bool SonContraseniasIguales()
        {
            bool iguales = false;

            if (contraseniaIngresada.Password.Trim() == contraseniaDosIngresada.Password.Trim())
            {
                iguales = true;
            }
            else
            {
                MessageBox.Show("Las contraseñas no son iguales", "Información invalida", MessageBoxButton.OK, MessageBoxImage.Warning);
            }

                return iguales;
        }

        private bool CorreoValido()
        {
            bool valido = false;

            Regex email = new Regex("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$");

            if (email.IsMatch(correoElectronicoIngresado.Text.Trim()))
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
