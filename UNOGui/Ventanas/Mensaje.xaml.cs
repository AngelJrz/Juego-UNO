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
    /// Lógica de interacción para Mensaje.xaml
    /// </summary>
    public partial class Mensaje : Window
    {

        /// <summary>
        /// Obtiene o establece el título del mensaje que se va a mostrar en la ventana.
        /// </summary>
        public string TituloMensaje { get; set; } = "Error";

        /// <summary>
        /// Obtiene o establece el contenido del mensaje que se va a mostrar en la ventana.
        /// </summary>
        public string Contenido { get; set; } = "Ocurrió un error. Intente de nuevo.";

        public Mensaje()
        {
            InitializeComponent();
        }

        private void CerrarVentana(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
