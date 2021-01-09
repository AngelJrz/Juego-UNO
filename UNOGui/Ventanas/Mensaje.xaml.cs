using System.Windows;

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
