using System;
using System.Linq;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;

namespace UNOGui.Logica
{
    public class SalaCallbackAdmin : IAdministrarSalaCallback
    {
        public void NotificarCreacionDeSala(bool salaCreada)
        {
            if (salaCreada)
            {
                Lobby lobby = new Lobby();
                lobby.Show();
                var ventanaRegistro = Application.Current.Windows.OfType<CreacionDeSala>().SingleOrDefault();
                ventanaRegistro.Close();
            }
            else
            {
                MessageBox.Show("No se pudo crear la sala");
            }
        }

        public void NotificarUnionASala(ResultadoUnionSala resultado)
        {
            switch (resultado)
            {
                case ResultadoUnionSala.NoExisteId:
                    MessageBox.Show("No existe la sala buscada");
                    break;
                case ResultadoUnionSala.ContraseñaIncorrecta:
                    MessageBox.Show("La contraseña de la sala es incorrecta");
                    break;
                case ResultadoUnionSala.NoHayCupo:
                    MessageBox.Show("Ya no hay cupo en la sala");
                    break;
                case ResultadoUnionSala.UnionExitosa:
                    MessageBox.Show("Te uniste a la sala");
                    break;
                default: break;
            }
        }
    }
}
