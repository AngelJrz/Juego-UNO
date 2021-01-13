using System;
using System.Linq;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;
using System.Windows;
using System.Collections.Generic;

namespace UNOGui.Logica
{
    /// <summary>
    /// Establecimiento de la logica para el control de la partida
    /// </summary>
    public partial class JuegoCallbackAdmin
    {
        /// <summary>
        /// Notifica a los usuarios que la partida inicio
        /// </summary>
        /// <param name="sala">Sala creada para la partida</param>
        public void NotificarInicioPartida(Sala sala)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            ventanaJuego.Height = 550;
            ventanaJuego.Width = 800;

            Paginas.Partida paginaPartida = new Paginas.Partida(sala.Id);
            paginaPartida.EstablecerJugadorEnTurno(sala.CreadaPor);
            paginaPartida.PintarJungadores(sala);
            ventanaJuego.PaginaActual = paginaPartida;
            ventanaJuego.frameNavegacion.Navigate(paginaPartida);
        }

        /// <summary>
        /// Establece el mazo inicial de un jugador en la partida
        /// </summary>
        /// <param name="manoJugador">Lista de las cartas iniciales de un jugador</param>
        public void ObtenerMazo(List<Carta> mazoDeJugador)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.EntregarCartas(mazoDeJugador);
        }

        /// <summary>
        /// Actualiza la carta central del tablero en la partida
        /// </summary>
        /// <param name="nuevaCarta">Nueva carta en el tablero</param>
        public void ActualizarCartaCentral(Carta cartaCentral)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.ActualizarCartaCentral(cartaCentral);
        }

        /// <summary>
        /// Otorga una nueva carta para la mano del jugador
        /// </summary>
        /// <param name="cartaTomada">Nueva carta para la mano del jugador</param>
        public void RecibirCarta(Carta cartaTomada)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.AniadirCarta(cartaTomada);
        }

        /// <summary>
        /// Notifica al usuario el ganador de la partida
        /// </summary>
        /// <param name="jugadorGanador">Nombre del jugador ganador</param>
        public void NotificarGanador(String jugadorGanador)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.MostrarMensajeGanador(jugadorGanador);
        }

        /// <summary>
        /// Establece el nombre de la persona en turno en la partida
        /// </summary>
        /// <param name="nuevoTurno">Nombre del usuario en turno</param>
        public void CambiarTurno(String nuevoTurno)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.EstablecerJugadorEnTurno(nuevoTurno);
        }

        /// <summary>
        /// Actualiza el numero de cartas de un jugador
        /// </summary>
        /// <param name="nickname">Nombre del jugador a actualizar</param>
        /// <param name="numeroDeCartas">Nuevo numero de cartas del jugador</param>
        public void ActualizarNumeroDeCartas(String nickname, String numeroDeCartas)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.ActualizarNumeroCartas(nickname, numeroDeCartas);
        }

        /// <summary>
        /// Actualiza el puntaje de un jugador
        /// </summary>
        /// <param name="nickname">Nombre del jugador a actualizar</param>
        /// <param name="puntajeASumar">Nuevo puntaje del jugador</param>
        public void ActualizarPuntajeDeJugador(String nickname, int puntajeASumar)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.ActualizarPuntajeDeJugador(nickname, puntajeASumar);
        }

        /// <summary>
        /// Añade cuatro cartas a la mano del jugador
        /// </summary>
        /// <param name="nuevasCartas">Lista de las nuevas cartas</param>
        public void ObtenerCuatroCartas(List<Carta> nuevasCartas)
        {
            AñadirCartasAJugador(nuevasCartas);
        }

        /// <summary>
        /// Añade dos cartas a la mano del jugador
        /// </summary>
        /// <param name="nuevasCartas">Lista de las nuevas cartas</param>
        public void ObtenerDosCartas(List<Carta> nuevasCartas)
        {
            AñadirCartasAJugador(nuevasCartas);
        }

        private void AñadirCartasAJugador(List<Carta> nuevasCartas)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            foreach (Carta carta in nuevasCartas)
            {
                ventanaPartida.AniadirCarta(carta);
            }
        }

        /// <summary>
        /// Otorga un nuevo nickname del jugador en turno
        /// </summary>
        /// <param name="turnoActual">Nickname del turno actual</param>
        public void ObtenerTurnoActual(string turnoActual)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.EstablecerJugadorEnTurno(turnoActual);
        }
    }
}
