using System.ServiceModel;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica;
using UNOGui.Paginas;

namespace UNOGui.Ventanas
{
    /// <summary>
    /// Lógica de interacción para MenuPrincipal.xaml
    /// </summary>
    public partial class MenuPrincipal : Window, IPerfilCallback
    {
        /// <summary>
        /// Obtiene la pagina de inicio del menu principal
        /// </summary>
        public Inicio PaginaIncio { get; set; }

        public MenuPrincipal()
        {
            InitializeComponent();
            PaginaIncio = new Inicio();
            frameNavegacion.Content = PaginaIncio;
        }

        private void CerrarSesion(object sender, RoutedEventArgs e)
        {
            string nickname = (DataContext as Jugador).Nickname;

            try
            {
                LoginAdmin.CerrarSesion(nickname);
            }
            catch (EndpointNotFoundException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }

            Principal ventanaLogin = new Principal();

            ventanaLogin.Show();
            this.Close();
        }

        private void IrAUnirseASala(object sender, RoutedEventArgs e)
        {
            if (frameNavegacion.Content.GetType() != typeof(UnirseASala))
            {
                frameNavegacion.Navigate(new UnirseASala());
            }
        }

        private void IrACrearSala(object sender, RoutedEventArgs e)
        {
            if (frameNavegacion.Content.GetType() != typeof(CreacionDeSala))
            {
                frameNavegacion.Navigate(new CreacionDeSala());
            }
        }

        private void IrAMiPerfil(object sender, RoutedEventArgs e)
        {
            if (frameNavegacion.Content.GetType() != typeof(MiPerfil))
            {
                InstanceContext contexto = new InstanceContext(this);
                PerfilClient servidor = new PerfilClient(contexto);

                string nicknameJugador = (this.DataContext as Jugador).Nickname;

                try
                {
                    servidor.BuscarJugador(nicknameJugador);
                }
                catch (EndpointNotFoundException)
                {
                    new Mensaje
                    {
                        TituloMensaje = "Ups!",
                        Contenido = "Lo sentimos, ocurrió un error en el servidor. Intente más tarde."
                    }.ShowDialog();
                }
                
            }
        }

        private void IrAInicio(object sender, RoutedEventArgs e)
        {
            if (frameNavegacion.Content.GetType() != typeof(Inicio))
            {
                frameNavegacion.Navigate(this.PaginaIncio);
            }
        }

        /// <summary>
        /// Muestra la información del jugador
        /// </summary>
        /// <param name="jugador">Jugador del cual se desea tener información</param>
        public void ObtenerInformacionJugador(Jugador jugador)
        {
            frameNavegacion.Navigate(new MiPerfil() 
            { 
                DataContext = jugador 
            });
        }
    }
}
