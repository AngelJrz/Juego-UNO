using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;
using System.Windows;

namespace UNOGui.Logica
{
    public partial class JuegoCallbackAdmin
    {
        public void NotificarInicioPartida(Sala sala)
        {
            var lobbyActual = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();
            Juego ventanaJuego = new Juego();

            lobbyActual.Close();
            var menuPrincipal = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            menuPrincipal.Hide();
            ventanaJuego.Show();
        }

        public void ObtenerMaso()
        {
            throw new NotImplementedException();
        }
    }
}
