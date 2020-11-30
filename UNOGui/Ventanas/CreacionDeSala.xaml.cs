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
        private List<int> jugadores;
        public CreacionDeSala(Jugador jugador)
        {
            InitializeComponent();
            jugadores = new List<int>
            {
                2,3,4,5
            };
            numeroDeJugadores.ItemsSource = jugadores;
            this.DataContext = jugador;
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
                    NumeroTotalDeJugadores = ObtenerJugadores(),
                    JugadoresEnSala = new Dictionary<object, Jugador>()
                };

                Jugador jugador = DataContext as Jugador;

                SalaAdmin.CrearSala(nuevaSala, jugador);
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

        private int ObtenerJugadores() {

            int jugadores = 0;

            switch (numeroDeJugadores.SelectedItem)
            {
                case 2:
                    jugadores = 2;
                    break;
                case 3:
                    jugadores = 3;
                    break;
                case 4:
                    jugadores = 4;
                    break;
                case 5:
                    jugadores = 5;
                    break;
                default:
                    break;
            }


            return jugadores;
        }
    }
}
