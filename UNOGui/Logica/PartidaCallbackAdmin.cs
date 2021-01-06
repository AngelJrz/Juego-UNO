using System;
using System.Linq;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;
using UNOGui.Paginas;
using System.Windows;

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
            ventanaJuego.frameNavegacion.Navigate(new Partida());
        }

        public void ObtenerMaso()
        {
            throw new NotImplementedException();
        }
    }
}
