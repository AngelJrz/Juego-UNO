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
            //var lobbyActual = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();
            //Juego ventanaJuego = new Juego();

            //lobbyActual.Close();
            //var menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            //menuPrincipal.Hide();
            //ventanaJuego.Show();

            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            ventanaJuego.Height = 550;
            ventanaJuego.Width = 800;
            //ventanaJuego.frameNavegacion.Navigate(new Partida(sala));

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
    }
}
