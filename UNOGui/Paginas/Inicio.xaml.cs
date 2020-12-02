using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace UNOGui.Paginas
{
    /// <summary>
    /// Lógica de interacción para Inicio.xaml
    /// </summary>
    public partial class Inicio : Page
    {
        public ObservableCollection<string> Nombres { get; set; }

        public Inicio()
        {
            InitializeComponent();

            Nombres = new ObservableCollection<string>
            {
                "angelJuarez", "SammyGCh", "locoXUno", "NicknameRandom123", "JugadorNumero1"
            };
            tablaPuntaciones.ItemsSource = Nombres;
        }
    }
}
