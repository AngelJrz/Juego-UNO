using System.Windows;
using UNOGui.Logica;
using UNOGui.JuegoUNOServicio;

namespace UNOGui.Ventanas
{
    /// <summary>
    /// Lógica de interacción para UnirseASala.xaml
    /// </summary>
    public partial class UnirseASala : Window
    {
        public UnirseASala(Jugador jugador)
        {
            InitializeComponent();
            this.DataContext = jugador;
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
                Sala salaAUnirse = new Sala
                {
                    Id = nombreSala.Text,
                    Contraseña = contrasenia.Password
                };

                Jugador jugador = DataContext as Jugador;

                SalaAdmin.UnirseASala(salaAUnirse, jugador);
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
