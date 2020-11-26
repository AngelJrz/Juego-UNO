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
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica;

namespace UNOGui.Ventanas
{
    /// <summary>
    /// Lógica de interacción para CreacionDeSala.xaml
    /// </summary>
    public partial class CreacionDeSala : Window
    {
        public CreacionDeSala()
        {
            InitializeComponent();
        }

        private void Cancelar(object sender, RoutedEventArgs e)
        {
            MenuPrincipal menu = new MenuPrincipal();
            menu.Show();

            this.Close();
        }

        private void CrearSala(object sender, RoutedEventArgs e)
        {
            if (CamposCompletos())
            {
                Sala nuevaSala = new Sala
                {
                    Contraseña = contrasenia.Password,
                    NumeroTotalDeJugadores = ObtenerJugadores()
                };

                SalaAdmin.CrearSala(nuevaSala);
            }
            else
            {
                MessageBox.Show("Los campos estan incompletos");
            }
        }

        private bool CamposCompletos()
        {
            return (contrasenia.Password.Trim() != "");
        }

        private int ObtenerJugadores()
        {
            object itemSeleccionado = numeroDeJugadores.SelectedItem;

            int jugadores = int.Parse(itemSeleccionado.ToString());

            return jugadores;
        }
    }
}
