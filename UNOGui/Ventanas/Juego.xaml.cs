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
using UNOGui.Paginas;

namespace UNOGui.Ventanas
{
    /// <summary>
    /// Lógica de interacción para Juego.xaml
    /// </summary>
    public partial class Juego : Window
    {
        public Juego()
        {
            InitializeComponent();
            //frameNavegacion.Content = new Paginas.Lobby();
        }

        private void RegresarMenuPrincipal(object sender, System.ComponentModel.CancelEventArgs e)
        {
            MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            menuPrincipal.Show();
        }
    }
}
