using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNOGui.JuegoUNOServicio;
using System.Windows;
using UNOGui.Ventanas;
using UNOGui.Paginas;

namespace UNOGui.Logica
{
    /// <summary>
    /// Clase encargada de administrar los métodos de la interfaz ILoginCallback, necesaria para el inicio de sesión.
    /// </summary>
    public class LoginCallbackAdmin : ILoginCallback
    {
        public void NotificarResultadoLogin(ResultadoLogin resultado)
        {
            if (resultado == ResultadoLogin.ExisteJugador)
            {
                var ventanaPrincipal = App.Current.Windows.OfType<Principal>().SingleOrDefault();
                Jugador jugadorActual = new Jugador
                {
                    Nickname = (ventanaPrincipal.Content as Login).usuarioTextbox.Text
                };

                MenuPrincipal menuPrincipal = new MenuPrincipal()
                {
                    DataContext = jugadorActual
                };

                menuPrincipal.Show();

                ventanaPrincipal.Close();
            }
            else
            {
                if (resultado == ResultadoLogin.NoExisteNickname)
                {
                    MessageBox.Show("No existe nickname");
                }
                else if (resultado == ResultadoLogin.ContraseñaIncorrecta) 
                {
                    MessageBox.Show("contraseña incorrecta");
                }
            }
        }
    }
}
