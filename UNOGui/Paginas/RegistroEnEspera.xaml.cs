using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using UNOGui.Logica;

namespace UNOGui.Paginas
{
    /// <summary>
    /// Lógica de interacción para RegistroEnEspera.xaml
    /// </summary>
    public partial class RegistroEnEspera : Page
    {
        private DispatcherTimer temporizador;
        int tiempoDeTemporizador = 30;

        public RegistroEnEspera()
        {
            InitializeComponent();
            IniciarTemporizador();
        }

        private void CancelarRegistro(object sender, RoutedEventArgs e)
        {
            RegistroJugadorAdmin.CancelarRegistrarJugador();
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

        public void IniciarTemporizador()
        {
            temporizador = new DispatcherTimer
            {
                Interval = new TimeSpan(0, 0, 1)
            };

            temporizador.Tick += Temporizador_Tick;
            temporizador.Start();
        }

        private void Temporizador_Tick(object sender, EventArgs e)
        {
            if (tiempoDeTemporizador > 0)
            {
                tiempoDeTemporizador--;
                temporizadorTexto.Text = string.Format("Enviar de nuevo en 00:0{0}:{1}", tiempoDeTemporizador / 60, tiempoDeTemporizador % 60);
            }
            else
            {
                temporizador.Stop();
                temporizadorTexto.Visibility = Visibility.Collapsed;
                enviarCorreoBotton.Visibility = Visibility.Visible;
            }
        }

        private void EnviarCorreo(object sender, RoutedEventArgs e)
        {
            RegistroJugadorAdmin.EnviarClave();
        }
    }
}
