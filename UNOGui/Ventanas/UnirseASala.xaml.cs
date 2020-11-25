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
    /// Lógica de interacción para UnirseASala.xaml
    /// </summary>
    public partial class UnirseASala : Window
    {
        public UnirseASala()
        {
            InitializeComponent();
        }

        private void Cancelar(object sender, RoutedEventArgs e)
        {
            MenuPrincipal menu = new MenuPrincipal();
            menu.Show();

            this.Close();
        }

        private void Unirse(object sender, RoutedEventArgs e)
        {
            if (CamposCompletos())
            {
                MessageBox.Show("Ingresaste a sala");
            }
            else
            {
                MessageBox.Show("Los campos estan incompletos");
            }
        }

        private bool CamposCompletos()
        {
            return (nombreSala.Text.Trim() != "" && contrasenia.Password.Trim() != "");
        }
    }
}
