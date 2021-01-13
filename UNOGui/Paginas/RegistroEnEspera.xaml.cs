using System;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;
using UNOGui.Logica;
using UNOGui.Ventanas;

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
            try
            {
                RegistroJugadorAdmin.CancelarRegistrarJugador();
            }
            catch (EndpointNotFoundException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
            catch (CommunicationObjectFaultedException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
        }

        private void ConfirmarRegistro(object sender, RoutedEventArgs e)
        {
            if (claveIngresada.Text.Trim() != "")
            {
                try
                {
                    RegistroJugadorAdmin.VerificarClaveIngresada(claveIngresada.Text);
                }
                catch (EndpointNotFoundException)
                {
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                        Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                    }.ShowDialog();
                }
                catch (CommunicationObjectFaultedException)
                {
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                        Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                    }.ShowDialog();
                }
            }
            else
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.CamposIncompletosTitulo,
                    Contenido = Properties.Resources.CamposIncompletosMensaje
                }.ShowDialog();
            }
        }

        /// <summary>
        /// Inicia el temporizador de la ventana de registro
        /// </summary>
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
                string mensaje = Properties.Resources.Temporizador_Mensaje;
                temporizadorTexto.Text = string.Format("{0} 00:0{1}:{2}", mensaje, tiempoDeTemporizador / 60, tiempoDeTemporizador % 60);
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
            try
            {
                RegistroJugadorAdmin.EnviarClave();
            }
            catch (EndpointNotFoundException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
            catch (CommunicationObjectFaultedException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
        }
    }
}
