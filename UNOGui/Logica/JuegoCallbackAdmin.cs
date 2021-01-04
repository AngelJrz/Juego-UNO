using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;

namespace UNOGui.Logica
{
    public class JuegoCallbackAdmin : IAdministrarJuegoCallback
    {
        public void SacarJugador(Jugador jugadorASacar)
        {
            var lobby = Application.Current.Windows.OfType<Lobby>().SingleOrDefault();

            var jugador = lobby.Jugadores.Single(jugadorAux => jugadorAux.Nickname.Equals(jugadorASacar.Nickname));
            lobby.Jugadores.Remove(jugador);
        }

        public void NotificarSalidaDeSala()
        {
            CerrarSala();
        }

        public void NotificarEliminacionDeSala()
        {
            MessageBox.Show("El host eliminó la sala. Unete a otra sala.", "Advertencia", MessageBoxButton.OK);

            CerrarSala();
        }

        public void EliminarCreador()
        {
            CerrarSala();
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
