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

namespace UNOGui.Ventanas
{
    /// <summary>
    /// Lógica de interacción para Lobby.xaml
    /// </summary>
    public partial class Lobby : Window
    {
        private readonly MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();

        public Lobby()
        {
            InitializeComponent();
        }

        private void SalirDeSala(object sender, RoutedEventArgs e)
        {
            menuPrincipal.Show();

            this.Close();
        }

        private void RegresarMenuPrincipal(object sender, System.ComponentModel.CancelEventArgs e)
        {
            menuPrincipal.Show();
        }
    }
}
