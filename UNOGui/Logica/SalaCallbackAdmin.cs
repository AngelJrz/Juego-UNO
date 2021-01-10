using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;

namespace UNOGui.Logica
{
    public partial class JuegoCallbackAdmin : IAdministrarJuegoCallback
    {
        /// <summary>
        /// Lógica para actualizar la sala de un jugador.
        /// </summary>
        /// <param name="jugadores">Jugadores a agregar en la sala</param>
        public void ActualizarSala(List<string> jugadores)
        {
            ObservableCollection<string> jugadoresEnSala = new ObservableCollection<string>(jugadores);

            //var lobbyActual = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();
            //lobbyActual.jugadoresEnSala.ItemsSource = jugadoresEnSala;
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Lobby paginaLobby = ventanaJuego.frameNavegacion.Content as Paginas.Lobby;

            paginaLobby.jugadoresEnSala.ItemsSource = jugadoresEnSala;
        }

        /// <summary>
        /// Lógica para agregar un nuevo jugador a la sala.
        /// </summary>
        /// <param name="nuevoJugador">Nuevo jugador a agregar</param>
        public void AgregarNuevoJugador(Jugador nuevoJugador)
        {
            //var lobby = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();
            //lobby.Jugadores.Add(nuevoJugador);
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Lobby paginaLobby = ventanaJuego.frameNavegacion.Content as Paginas.Lobby;

            paginaLobby.Jugadores.Add(nuevoJugador);
        }

        /// <summary>
        /// Lógica para eliminar al creador de la sala.
        /// </summary>
        public void EliminarCreador()
        {
            CerrarSala();
        }

        /// <summary>
        /// Lógica para crear la sala.
        /// </summary>
        /// <param name="salaCreada">Sala que fue creada</param>
        public void NotificarCreacionDeSala(Sala salaCreada)
        {
            //Lobby lobby = new Lobby
            //{
            //    DataContext = salaCreada
            //};

            //lobby.Jugadores = new ObservableCollection<Jugador>(salaCreada.JugadoresEnSala.Keys);
            //lobby.jugadoresEnSala.ItemsSource = lobby.Jugadores;
            //lobby.ConfigurarSalaParaHost();
            //lobby.Show();
            //MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            //menuPrincipal.Hide();

            Juego ventanaJuego = new Juego();
            ventanaJuego.Show();
            Paginas.Lobby paginaLobby = new Paginas.Lobby
            {
                Jugadores = new ObservableCollection<Jugador>(salaCreada.JugadoresEnSala.Keys),
                DataContext = salaCreada
            };
            paginaLobby.jugadoresEnSala.ItemsSource = paginaLobby.Jugadores;
            paginaLobby.ConfigurarSalaParaHost();
            ventanaJuego.frameNavegacion.Content = paginaLobby;

            MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            menuPrincipal.Hide();
        }

        /// <summary>
        /// Lógica para notificar la eliminación de una sala.
        /// </summary>
        public void NotificarEliminacionDeSala()
        {
            //MessageBox.Show("El host eliminó la sala. Unete a otra sala.", "Advertencia", MessageBoxButton.OK);

            new Mensaje
            {
                Title = "Sala eliminada",
                TituloMensaje = "Sala eliminada",
                Contenido = "El host eliminó la sala. Unete a otra sala."
            }.ShowDialog();

            CerrarSala();
        }

        /// <summary>
        /// Lógica para notificar la salida de un jugador de la sala.
        /// </summary>
        public void NotificarSalidaDeSala()
        {
            CerrarSala();
        }

        /// <summary>
        /// Lógica para administrar el resultado de la union a una sala.
        /// </summary>
        /// <param name="resultado"></param>
        public void NotificarUnionASala(ResultadoUnionSala resultado)
        {
            switch (resultado)
            {
                case ResultadoUnionSala.NoExisteId:
                    new Mensaje
                    {
                        TituloMensaje = "Sala no encontrada",
                        Contenido = "No existe la sala buscada. Por favor verique la información e intente de nuevo."
                    }.ShowDialog();
                    break;

                case ResultadoUnionSala.ContraseñaIncorrecta:
                    new Mensaje
                    {
                        TituloMensaje = "Contraseña incorrecta",
                        Contenido = "La contraseña de la sala es incorrecta. Por favor verifique la información e intente de nuevo."
                    }.ShowDialog();
                    break;

                case ResultadoUnionSala.NoHayCupo:
                    MessageBox.Show("Ya no hay cupo en la sala");
                    new Mensaje
                    {
                        TituloMensaje = "No hay cupo",
                        Contenido = "Ya no hay cupo en la sala. Únete a otra sala o crea una nueva."
                    }.ShowDialog();
                    break;

                case ResultadoUnionSala.EnJuego:
                    new Mensaje
                    {
                        Title = "Sala en juego",
                        TituloMensaje = "Sala en juego",
                        Contenido = "La sala ya se encuentra en juego. Por favor ingrese a una nueva sala."
                    }.ShowDialog();
                    break;

                case ResultadoUnionSala.UnionExitosa:
                    //Lobby lobby = new Lobby();
                    //lobby.Show();
                    Juego ventanaJuego = new Juego();
                    ventanaJuego.Show();
                    MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
                    menuPrincipal.Hide();
                    break;

                default: break;
            }
        }

        /// <summary>
        /// Lógica para configurar la información de la sala.
        /// </summary>
        /// <param name="sala">Sala a unirse</param>
        public void ObtenerInformacionDeSala(Sala sala)
        {
            //var lobby = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();
            //lobby.DataContext = sala;
            //lobby.Jugadores = new ObservableCollection<Jugador>(sala.JugadoresEnSala.Keys);
            //lobby.jugadoresEnSala.ItemsSource = lobby.Jugadores;

            Paginas.Lobby paginaLobby = new Paginas.Lobby
            {
                DataContext = sala,
                Jugadores = new ObservableCollection<Jugador>(sala.JugadoresEnSala.Keys)
            };
            paginaLobby.jugadoresEnSala.ItemsSource = paginaLobby.Jugadores;
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            ventanaJuego.frameNavegacion.Content = paginaLobby;
        }

        /// <summary>
        /// Lógica para sacar un jugador de la sala.
        /// </summary>
        /// <param name="jugadorASacar">Jugador a sacar.</param>
        public void SacarJugador(Jugador jugadorASacar)
        {
            //var lobby = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();

            //var jugador = lobby.Jugadores.Single(jugadorAux => jugadorAux.Nickname.Equals(jugadorASacar.Nickname));
            //lobby.Jugadores.Remove(jugador);
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Lobby lobby = ventanaJuego.frameNavegacion.Content as Paginas.Lobby;
            Jugador jugador = lobby.Jugadores.Single(jugadorAux => jugadorAux.Nickname.Equals(jugadorASacar.Nickname));
            lobby.Jugadores.Remove(jugador);
        }

        private void CerrarSala()
        {
            //MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            //var lobby = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();
            //lobby.Close();
            //menuPrincipal.Show();

            MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            var ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            ventanaJuego.Close();

            menuPrincipal.Show();
        }
    }
}
