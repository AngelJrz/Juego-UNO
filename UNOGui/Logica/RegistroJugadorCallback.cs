using System.Linq;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;
using UNOGui.Paginas;

namespace UNOGui.Logica
{
    public class RegistroJugadorCallback : IRegistrarJugadorCallback
    {
        private readonly Principal ventanaPrincipal = Application.Current.Windows.OfType<Principal>().SingleOrDefault();

        public void NotificarCancelacionRegistro()
        {
            ventanaPrincipal.Navigate(new Login());
        }

        public void NotificarEnvioDeClave()
        {
            MessageBox.Show("Te enviamos una nueva clave al correo especificado.", "", MessageBoxButton.OK);

            (ventanaPrincipal.Content as RegistroEnEspera).IniciarTemporizador();
        }

        public void NotificarRegistro(ResultadoRegistro resultado)
        {
            if (resultado == ResultadoRegistro.UsuarioYaExiste)
            {
                MessageBox.Show("El nickname ya existe");
            }
            else if (resultado == ResultadoRegistro.CorreoYaExiste)
            {
                MessageBox.Show("El correo ya existe");
            }
            else if (resultado == ResultadoRegistro.RegistroExitoso)
            {                
                ventanaPrincipal.Navigate(new RegistroEnEspera());
            }
        }

        public void NotificarResultadoClave(bool claveValida)
        {
            if (claveValida)
            {
                MessageBox.Show("Tu registro fue exitoso", "Exito", MessageBoxButton.OK);

                ventanaPrincipal.Navigate(new Login());
            }
            else
            {
                MessageBox.Show("La clave no es valida");
            }
        }
    }
}
