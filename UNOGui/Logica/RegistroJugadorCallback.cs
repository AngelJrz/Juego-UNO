using System.Linq;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;

namespace UNOGui.Logica
{
    public class RegistroJugadorCallback : IRegistrarJugadorCallback
    {
        private readonly Principal ventanaPrincipal = Application.Current.Windows.OfType<Principal>().SingleOrDefault();

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
                ventanaPrincipal.Navigate(new Paginas.RegistroEnEspera());
            }
        }

        public void NotificarResultadoClave(bool claveValida)
        {
            if (claveValida)
            {
                MessageBox.Show("Tu registro fue exitoso", "Exito", MessageBoxButton.OK);

                ventanaPrincipal.Navigate(new Paginas.Login());
            }
            else
            {
                MessageBox.Show("La clave no es valida");
            }
        }
    }
}
