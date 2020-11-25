using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNOGui.JuegoUNOServicio;
using System.Windows;
using UNOGui.Ventanas;

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
                MessageBox.Show("Iniciaste sesion");
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
