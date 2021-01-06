using System.Collections.Generic;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using UNOGui.Logica;
using UNOGui.Ventanas;

namespace UNOGui.Paginas
{
    /// <summary>
    /// Lógica de interacción para MiPerfil.xaml
    /// </summary>
    public partial class MiPerfil : Page
    {
        private readonly List<Idioma> idiomas;
        private bool cambioIdioma = false;
        private Idioma idiomaSeleccionado;
        private string nomenclaturaIdiomaActual;

        public MiPerfil()
        {
            InitializeComponent();

            idiomas = new List<Idioma>()
            {
                new Idioma
                {
                    Nombre = Properties.Resources.Idioma_Español,
                    Nomenclatura = "es-MX"
                },

                new Idioma
                {
                    Nombre = Properties.Resources.Idioma_Ingles,
                    Nomenclatura = "en"
                }
            };

            idiomaCombobox.ItemsSource = idiomas;
            ObtenerIdiomaActual();
        }

        private void ObtenerIdiomaActual()
        {
            nomenclaturaIdiomaActual = Properties.Settings.Default.Idioma;
            int idiomaEspañolIndex = 0;
            int idiomaInglesIndex = 1;

            switch (nomenclaturaIdiomaActual)
            {
                case "es-MX":
                    idiomaCombobox.SelectedIndex = idiomaEspañolIndex;
                    break;
                case "en":
                    idiomaCombobox.SelectedIndex = idiomaInglesIndex;
                    break;
            }
        }

        private void GuardarCambios(object sender, RoutedEventArgs e)
        {
            if (cambioIdioma)
            {
                CambiarIdioma();
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.Mensaje_CambioIdiomaTitulo,
                    Contenido = Properties.Resources.Mensaje_CambioIdiomaMensaje,
                    Title = Properties.Resources.Mensaje_CambioIdiomaTitulo
                }.ShowDialog();

                AbrirLogin();
            }
        }

        private void AbrirLogin()
        {
            Principal login = new Principal();
            login.Show();
            Window.GetWindow(this).Close();
        }

        private void CambiarIdioma()
        {
            Properties.Settings.Default.Idioma = idiomaSeleccionado.Nomenclatura;
            Properties.Settings.Default.Save();
            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(idiomaSeleccionado.Nomenclatura);
        }

        private void VerificarSeleccion(object sender, SelectionChangedEventArgs e)
        {
            idiomaSeleccionado = idiomaCombobox.SelectedItem as Idioma;

            if (!idiomaSeleccionado.Nomenclatura.Equals(nomenclaturaIdiomaActual))
            {
                cambioIdioma = true;
            }
            else
            {
                cambioIdioma = false;
            }
        }
    }
}
