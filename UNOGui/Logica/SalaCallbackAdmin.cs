using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;

namespace UNOGui.Logica
{
    public class SalaCallbackAdmin : IAdministrarSalaCallback
    {
        public void ActualizarSala(string[] jugadores)
        {
            ObservableCollection<string> jugadoresEnSala = new ObservableCollection<string>(jugadores);

            var lobbyActual = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();
            lobbyActual.jugadoresEnSala.ItemsSource = jugadoresEnSala;
        }

        public void NotificarCreacionDeSala(Sala salaCreada)
        {
            Lobby lobby = new Lobby
            {
                DataContext = salaCreada
            };

            lobby.Show();
            var ventanaRegistro = Application.Current.Windows.OfType<CreacionDeSala>().SingleOrDefault();
            ventanaRegistro.Close();
        }

        public void NotificarUnionASala(ResultadoUnionSala resultado)
        {
            switch (resultado)
            {
                case ResultadoUnionSala.NoExisteId:
                    MessageBox.Show("No existe la sala buscada");
                    break;
                case ResultadoUnionSala.ContraseñaIncorrecta:
                    MessageBox.Show("La contraseña de la sala es incorrecta");
                    break;
                case ResultadoUnionSala.NoHayCupo:
                    MessageBox.Show("Ya no hay cupo en la sala");
                    break;
                case ResultadoUnionSala.UnionExitosa:
                    Lobby lobby = new Lobby();
                    lobby.Show();
                    var ventanaUnion = Application.Current.Windows.OfType<UnirseASala>().SingleOrDefault();
                    ventanaUnion.Close();
                    break;
                default: break;
            }
        }
    }
}
