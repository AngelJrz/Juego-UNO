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
            ventanaJuego.Height = 450;
            ventanaJuego.Width = 800;
            ventanaJuego.frameNavegacion.Navigate(new Partida(sala));
        }

        public void ObtenerMazo(List<Carta> manoJugador)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Partida ventanaPartida = ventanaJuego.frameNavegacion.Content as Partida;

            ventanaPartida.EntregarCartas(manoJugador);
        }

        public void ActualizarCartaCentral(Carta nuevaCarta)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Partida ventanaPartida = ventanaJuego.frameNavegacion.Content as Partida;

            ventanaPartida.ActualizarCartaCentral(nuevaCarta);
        }

        public void RecibirCarta(Carta cartaTomada)
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            Partida ventanaPartida = ventanaJuego.frameNavegacion.Content as Partida;

            ventanaPartida.AniadirCarta(cartaTomada);
        }
    }
}
