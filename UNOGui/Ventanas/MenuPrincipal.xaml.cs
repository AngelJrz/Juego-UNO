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
using UNOGui.JuegoUNOServicio;
using UNOGui.Paginas;

namespace UNOGui.Ventanas
{
    /// <summary>
    /// Lógica de interacción para MenuPrincipal.xaml
    /// </summary>
    public partial class MenuPrincipal : Window
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

        private void CerrarSecion(object sender, RoutedEventArgs e)
        {
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
                frameNavegacion.Navigate(new MiPerfil());
            }
        }

        private void IrAInicio(object sender, RoutedEventArgs e)
        {
            if (frameNavegacion.Content.GetType() != typeof(Inicio))
            {
                frameNavegacion.Navigate(this.PaginaIncio);
            }
        }
    }
}
