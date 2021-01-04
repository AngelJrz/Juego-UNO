using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;

namespace UNOGui.Logica
{
    public class SalaCallbackAdmin : IAdministrarJuegoCallback, IAdministrarSalaCallback
    {
        private readonly MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();

        public void ActualizarSala(string[] jugadores)
        {
            ObservableCollection<string> jugadoresEnSala = new ObservableCollection<string>(jugadores);

            var lobbyActual = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();
            lobbyActual.jugadoresEnSala.ItemsSource = jugadoresEnSala;
        }

        public void AgregarNuevoJugador(Jugador nuevoJugador)
        {
            var lobby = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();
            lobby.Jugadores.Add(nuevoJugador);
        }

        public void EliminarCreador()
        {
            CerrarSala();
        }

        public void NotificarCreacionDeSala(Sala salaCreada)
        {
            Lobby lobby = new Lobby
            {
                DataContext = salaCreada
            };

            lobby.Jugadores = new ObservableCollection<Jugador>(salaCreada.JugadoresEnSala.Values);
            lobby.jugadoresEnSala.ItemsSource = lobby.Jugadores;
            lobby.ConfigurarSalaParaHost();
            lobby.Show();
            menuPrincipal.Hide();
        }

        public void NotificarEliminacionDeSala()
        {
            MessageBox.Show("El host eliminó la sala. Unete a otra sala.", "Advertencia", MessageBoxButton.OK);

            CerrarSala();
        }

        public void NotificarSalidaDeSala()
        {
            CerrarSala();
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
                    menuPrincipal.Hide();
                    break;
                default: break;
            }
        }

        public void ObtenerInformacionDeSala(Sala sala)
        {
            var lobby = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();
            lobby.DataContext = sala;
            lobby.Jugadores = new ObservableCollection<Jugador>(sala.JugadoresEnSala.Values);
            lobby.jugadoresEnSala.ItemsSource = lobby.Jugadores;
        }

        public void SacarJugador(Jugador jugadorASacar)
        {
            var lobby = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();

            var jugador = lobby.Jugadores.Single(jugadorAux => jugadorAux.Nickname.Equals(jugadorASacar.Nickname));
            lobby.Jugadores.Remove(jugador);
        }

        private void CerrarSala()
        {
            MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            var lobby = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();
            lobby.Close();

            menuPrincipal.Show();
        }
    }
}
