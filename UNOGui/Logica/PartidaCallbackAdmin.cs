using System;
using System.Linq;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;
using UNOGui.Paginas;
using System.Windows;
using System.Collections.Generic;

namespace UNOGui.Logica
{
    public partial class JuegoCallbackAdmin
    {
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

        public void ObtenerMazo(List<Carta> manoJugador)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.EntregarCartas(manoJugador);
        }

        public void ActualizarCartaCentral(Carta nuevaCarta)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.ActualizarCartaCentral(nuevaCarta);
        }

        public void RecibirCarta(Carta cartaTomada)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.AniadirCarta(cartaTomada);
        }

        public void NotificarGanador(String jugadorGanador)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.MostrarMensajeGanador(jugadorGanador);
        }

        public void CambiarTurno(String nuevoTurno)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.EstablecerJugadorEnTurno(nuevoTurno);
        }

        public void ActualizarNumeroDeCartas(String nickname, String numeroDeCartas)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.ActualizarNumeroCartas(nickname, numeroDeCartas);
        }

        public void ActualizarPuntajeDeJugador(String nickname, int puntajeASumar)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.ActualizarPuntajeDeJugador(nickname, puntajeASumar);
        }

        public void ObtenerCuatroCartas(List<Carta> nuevasCartas)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            foreach (Carta carta in nuevasCartas)
            {
                ventanaPartida.AniadirCarta(carta);
            }
        }

        public void ObtenerDosCartas(List<Carta> nuevasCartas)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            foreach (Carta carta in nuevasCartas)
            {
                ventanaPartida.AniadirCarta(carta);
            }
        }

        public void ObtenerTurnoActual(string turnoActual)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Paginas.Partida ventanaPartida = ventanaJuego.PaginaActual as Paginas.Partida;

            ventanaPartida.EstablecerJugadorEnTurno(turnoActual);
        }
    }
}
