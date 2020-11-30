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

namespace UNOGui.Ventanas
{
    /// <summary>
    /// Lógica de interacción para MenuPrincipal.xaml
    /// </summary>
    public partial class MenuPrincipal : Window
    {
        public MenuPrincipal()
        {
            InitializeComponent();
        }

        private void CerrarSecion(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void IrAUnirseASala(object sender, RoutedEventArgs e)
        {
            UnirseASala unirseSala = new UnirseASala(this.DataContext as Jugador);

            unirseSala.Show();

            this.Close();
        }

        private void IrACrearSala(object sender, RoutedEventArgs e)
        {
            CreacionDeSala nuevasala = new CreacionDeSala(this.DataContext as Jugador);

            nuevasala.Show();

            this.Close();
        }

        private void IrAMiPerfil(object sender, RoutedEventArgs e)
        {
            MiPerfil perfil = new MiPerfil();
            perfil.Show();

            this.Close();
        }
    }
}
