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
using System.Windows.Navigation;
using System.Windows.Shapes;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica;

namespace UNOGui.Paginas
{
    /// <summary>
    /// Lógica de interacción para CreacionDeSala.xaml
    /// </summary>
    public partial class CreacionDeSala : Page
    {
        private readonly List<int> jugadores;

        public CreacionDeSala()
        {
            InitializeComponent();

            jugadores = new List<int>
            {
                2,3,4,5
            };
            numeroDeJugadores.ItemsSource = jugadores;
        }

        private void CrearSala(object sender, RoutedEventArgs e)
        {
            if (CamposCompletos())
            {
                var jugador = Window.GetWindow(this).DataContext as Jugador;

                Sala nuevaSala = new Sala
                {
                    Contraseña = contrasenia.Password,
                    NumeroTotalDeJugadores = ObtenerJugadores(),
                    CreadaPor = jugador.Nickname,
                    JugadoresEnSala = new Dictionary<Jugador, object>()
                };

                SalaAdmin.CrearSala(nuevaSala, jugador);
                LimpiarCampos();
            }
            else
            {
                MessageBox.Show("Los campos estan incompletos");
            }
        }

        private int ObtenerJugadores()
        {
            int numeroJugadores = (int)numeroDeJugadores.SelectedValue;

            return numeroJugadores;
        }

        private bool CamposCompletos()
        {
            return (contrasenia.Password.Trim() != "" && numeroDeJugadores.SelectedItem != null);
        }

        private void LimpiarCampos()
        {
            contrasenia.Password = "";
            numeroDeJugadores.SelectedItem = null;
        }
    }
}
