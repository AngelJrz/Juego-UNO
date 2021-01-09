using System.Threading;
using System.Windows;

[assembly: log4net.Config.XmlConfigurator(Watch = true)]

namespace UNOGui
{
    /// <summary>
    /// Lógica de interacción para App.xaml
    /// </summary>
    public partial class App : Application
    {
        public string Idioma { get; set; } = UNOGui.Properties.Settings.Default.Idioma;

        private readonly System.Globalization.CultureInfo informacionCultural;

        public App()
        {
            informacionCultural = new System.Globalization.CultureInfo(Idioma);
            Thread.CurrentThread.CurrentUICulture = informacionCultural;
        }
    }
}
