using System;
using System.Windows;
using UNOGui.JuegoUNOServicio;

namespace UNOGui.Logica
{
    public class SalaCallbackAdmin : IAdministrarSalaCallback
    {
        public void NotificarCreacionDeSala(bool salaCreada)
        {
            if (salaCreada)
            {
                MessageBox.Show("Creaste una nueva sala");
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
