using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
    /// Lógica de interacción para Lobby.xaml
    /// </summary>
    public partial class Lobby : Window
    {
        private readonly MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();

        /// <summary>
        /// Obtiene o establece los jugadores que están en la sala.
        /// </summary>
        public ObservableCollection<Jugador> Jugadores { get; set; }

        public Lobby()
        {
            InitializeComponent();
        }

        private void SalirDeSala(object sender, RoutedEventArgs e)
        {
            string idSala = idSalaActual.Text;

            SalaAdmin.SalirDeSala(idSala);
        }

        private void RegresarMenuPrincipal(object sender, System.ComponentModel.CancelEventArgs e)
        {
            menuPrincipal.Show();
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
            string idSala = idSalaActual.Text;

            try
            {
                PartidaAdmin.IniciarPartida(idSala);
            }
            catch (EndpointNotFoundException)
            {
                new Mensaje
                {

                }.ShowDialog();
            }
        }
    }
}
