using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica;
using UNOGui.Ventanas;

namespace UNOGui.Paginas
{
    /// <summary>
    /// Lógica de interacción para Lobby.xaml
    /// </summary>
    public partial class Lobby : Page
    {
        /// <summary>
        /// Obtiene o establece los jugadores que están en la sala.
        /// </summary>
        public ObservableCollection<Jugador> Jugadores { get; set; }

        public Lobby()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Configura la sala para que el creador de la sala pueda iniciar la partida.
        /// </summary>
        public void ConfigurarSalaParaHost()
        {
            mensajeParaInvitado.Visibility = Visibility.Collapsed;
            mensajeParaHost.Visibility = Visibility.Visible;
            iniciarPartidaBoton.Visibility = Visibility.Visible;
        }

        private void IniciarPartida(object sender, RoutedEventArgs e)
        {
            if (HayMinimoDeJugadores())
            {
                string idSala = idSalaActual.Text;

                try
                {
                    PartidaAdmin.IniciarPartida(idSala);
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
                    TituloMensaje = "Pocos jugadores",
                    Contenido = "La sala no cumple con el minimo de jugadores esperados (2 jugadores). Por favor espera a que se unan otros."
                }.ShowDialog();
            }
        }

        private void SalirDeSala(object sender, RoutedEventArgs e)
        {
            string idSala = idSalaActual.Text;
            MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            var jugador = menuPrincipal.DataContext as Jugador;

            try
            {
                SalaAdmin.SalirDeSala(idSala, jugador.Nickname);
            }
            catch (EndpointNotFoundException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
            catch (TimeoutException)
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

        private bool HayMinimoDeJugadores()
        {
            bool hayMinimo = false;
            int minimoDeJugadores = 2;

            if (Jugadores.Count >= minimoDeJugadores)
            {
                hayMinimo = true;
            }

            return hayMinimo;
        }
    }
}
