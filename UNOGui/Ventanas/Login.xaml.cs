using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
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
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica;

namespace UNOGui.Ventanas
{
    /// <summary>
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Window, ILoginCallback
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

        private void IrAVerificarCodigo(object sender, RoutedEventArgs e)
        {
            VerificarCodigo verificacionDeCodigo = new VerificarCodigo();
            verificacionDeCodigo.Show();

            this.Close();
        }

        private void IniciarSesionBoton(object sender, RoutedEventArgs e)
        {
            if (CamposCompletos())
            {
                string nickname = usuarioTextbox.Text.Trim();
                string contraseña = contraseñaTextbox.Password.Trim();

                InstanceContext contexto = new InstanceContext(this);
                LoginClient servidor = new LoginClient(contexto);

                servidor.IniciarSesion(nickname, contraseña);
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

        public void NotificarResultadoLogin(ResultadoLogin resultado)
        {
            if (resultado == ResultadoLogin.ExisteJugador)
            {
                MenuPrincipal menu = new MenuPrincipal();
                menu.Show();
                this.Close();
            }
            else
            {
                if (resultado == ResultadoLogin.NoExisteNickname)
                {
                    MessageBox.Show("No existe nickname");
                }
                else if (resultado == ResultadoLogin.ContraseñaIncorrecta)
                {
                    MessageBox.Show("contraseña incorrecta");
                }
            }

        }
    }
}
