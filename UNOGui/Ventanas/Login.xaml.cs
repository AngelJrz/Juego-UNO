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
using UNOGui.Logica;

namespace UNOGui.Ventanas
{
    /// <summary>
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
        }

        private void IrARegistrarCuenta(object sender, RoutedEventArgs e)
        {
            RegistrarCuenta registrarCuentaVentana = new RegistrarCuenta();
            registrarCuentaVentana.Show();

            this.Close();
        }

        private void IrARecuperarCuenta(object sender, RoutedEventArgs e)
        {
            RecuperacionCuenta recuperacionCuentaVentana = new RecuperacionCuenta();
            recuperacionCuentaVentana.Show();

            this.Close();
        }

        private void IniciarSesionBoton(object sender, RoutedEventArgs e)
        {
            if(CamposCompletos()){
                string nickname = usuarioTextbox.Text.Trim();
                string contraseña = contraseñaTextbox.Password.Trim();

                LoginAdmin.IniciarSesion(nickname, contraseña);
            }
            else
            {
                MessageBox.Show("Campos Vacios");
            }
        }

        private bool CamposCompletos()
        {
            return (usuarioTextbox.Text.Trim() != "" && contraseñaTextbox.Password.Trim() != "");
        }
    }
}
