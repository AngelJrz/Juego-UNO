using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading;
using System.Windows;

namespace UNOGui
{
    /// <summary>
    /// Lógica de interacción para App.xaml
    /// </summary>
    public partial class App : Application
    {
        public string Idioma { get; set; } = UNOGui.Properties.Settings.Default.Idioma;

        private readonly System.Globalization.CultureInfo informacionCultural;

        App()
        {
            informacionCultural = new System.Globalization.CultureInfo(Idioma);
            Thread.CurrentThread.CurrentUICulture = informacionCultural;
        }
    }
}
