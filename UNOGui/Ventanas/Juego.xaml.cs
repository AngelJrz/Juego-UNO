using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace UNOGui.Ventanas
{
    /// <summary>
    /// Lógica de interacción para Juego.xaml
    /// </summary>
    public partial class Juego : Window
    {
        /// <summary>
        /// Obtiene o establece la pagina actual de la ventana.
        /// </summary>
        public Page PaginaActual { get; set; }

        public Juego()
        {
            InitializeComponent();
        }

        private void RegresarMenuPrincipal(object sender, System.ComponentModel.CancelEventArgs e)
        {
            MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            menuPrincipal.Show();
        }
    }
}
