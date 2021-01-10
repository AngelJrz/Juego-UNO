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

            Partida paginaPartida = new Partida(sala.Id);
            ventanaJuego.PaginaActual = paginaPartida;
            ventanaJuego.frameNavegacion.Navigate(paginaPartida);
        }

        public void ObtenerMazo(List<Carta> manoJugador)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Partida ventanaPartida = ventanaJuego.PaginaActual as Partida;

            ventanaPartida.EntregarCartas(manoJugador);
        }

        public void ActualizarCartaCentral(Carta nuevaCarta)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Partida ventanaPartida = ventanaJuego.PaginaActual as Partida;

            ventanaPartida.ActualizarCartaCentral(nuevaCarta);
        }

        public void RecibirCarta(Carta cartaTomada)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Partida ventanaPartida = ventanaJuego.PaginaActual as Partida;

            ventanaPartida.AniadirCarta(cartaTomada);
        }

        public void NotificarGanador(String jugadorGanador)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Partida ventanaPartida = ventanaJuego.PaginaActual as Partida;

            ventanaPartida.MostrarMensajeGanador(jugadorGanador);
        }
    }
}
