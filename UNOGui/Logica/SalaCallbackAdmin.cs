using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;
using System.Windows.Controls;

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
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Lobby paginaLobby = ventanaJuego.PaginaActual as Paginas.Lobby;

            paginaLobby.jugadoresEnSala.ItemsSource = jugadoresEnSala;
        }

        /// <summary>
        /// Lógica para agregar un nuevo jugador a la sala.
        /// </summary>
        /// <param name="nuevoJugador">Nuevo jugador a agregar</param>
        public void AgregarNuevoJugador(Jugador nuevoJugador)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Lobby paginaLobby = ventanaJuego.PaginaActual as Paginas.Lobby;

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
        /// Lógica para notificar la creación de la sala.
        /// </summary>
        /// <param name="salaCreada">Sala que fue creada</param>
        public void NotificarCreacionDeSala(Sala salaCreada)
        {
            Juego ventanaJuego = new Juego();
            ventanaJuego.Show();
            Paginas.Lobby paginaLobby = new Paginas.Lobby
            {
                Jugadores = new ObservableCollection<Jugador>(salaCreada.JugadoresEnSala.Keys),
                DataContext = salaCreada
            };
            paginaLobby.jugadoresEnSala.ItemsSource = paginaLobby.Jugadores;
            paginaLobby.ConfigurarSalaParaHost();
            ventanaJuego.PaginaActual = paginaLobby;
            ventanaJuego.frameNavegacion.Content = paginaLobby;

            MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            menuPrincipal.Hide();
        }

        /// <summary>
        /// Lógica para notificar la eliminación de una sala.
        /// </summary>
        public void NotificarEliminacionDeSala()
        {
            new Mensaje
            {
                Title = Properties.Resources.Sala_EliminacionSalaTituloMensaje,
                TituloMensaje = Properties.Resources.Sala_EliminacionSalaTituloMensaje,
                Contenido = Properties.Resources.Sala_EliminacionSalaContenidoMensaje
            }.ShowDialog();

            CerrarSala();
        }

        /// <summary>
        /// Lógica para notificar la falta de jugadores en la sala
        /// </summary>
        public void NotificarFaltaDeJugadores()
        {
            new Mensaje
            {
                Title = Properties.Resources.Sala_EliminacionSalaTituloMensaje,
                TituloMensaje = Properties.Resources.Sala_EliminacionSalaTituloMensaje,
                Contenido = Properties.Resources.Sala_EliminacionFaltaJugadoresContenido
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
                        TituloMensaje = Properties.Resources.Sala_NoEncontradaTitulo,
                        Contenido = Properties.Resources.Sala_NoEncontradaContenido
                    }.ShowDialog();
                    break;

                case ResultadoUnionSala.ContraseñaIncorrecta:
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.Sala_ContraseñaIncorrectaTitulo,
                        Contenido = Properties.Resources.Sala_ContraseñaIncorrectaContenido
                    }.ShowDialog();
                    break;

                case ResultadoUnionSala.NoHayCupo:
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.Sala_NoHayCupoTitulo,
                        Contenido = Properties.Resources.Sala_NoHayCupoContenido
                    }.ShowDialog();
                    break;

                case ResultadoUnionSala.EnJuego:
                    new Mensaje
                    {
                        Title = Properties.Resources.Sala_EnJuegoTitulo,
                        TituloMensaje = Properties.Resources.Sala_EnJuegoTitulo,
                        Contenido = Properties.Resources.Sala_EnJuegoContenido
                    }.ShowDialog();
                    break;

                case ResultadoUnionSala.UnionExitosa:
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
            Paginas.Lobby paginaLobby = new Paginas.Lobby
            {
                DataContext = sala,
                Jugadores = new ObservableCollection<Jugador>(sala.JugadoresEnSala.Keys)
            };
            paginaLobby.jugadoresEnSala.ItemsSource = paginaLobby.Jugadores;
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            ventanaJuego.PaginaActual = paginaLobby;
            ventanaJuego.frameNavegacion.Content = paginaLobby;
        }

        /// <summary>
        /// Lógica para sacar un jugador de la sala.
        /// </summary>
        /// <param name="jugadorASacar">Jugador a sacar.</param>
        public void SacarJugador(Jugador jugadorASacar)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Page paginaActual = ventanaJuego.PaginaActual;

            if (paginaActual.GetType() == typeof(Paginas.Lobby))
            {
                Jugador jugador = ((Paginas.Lobby)paginaActual).Jugadores.Single(jugadorAux => jugadorAux.Nickname.Equals(jugadorASacar.Nickname));
                ((Paginas.Lobby)paginaActual).Jugadores.Remove(jugador);
            }
            else
            {
                ((Paginas.Partida)paginaActual).SacarJugador(jugadorASacar.Nickname);
            }
        }

        private void CerrarSala()
        {
            MenuPrincipal menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            var ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            ventanaJuego.Close();

            menuPrincipal.Show();
        }
    }
}
