using System.Linq;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;

namespace UNOGui.Logica
{
    public class RegistroJugadorCallback : IRegistrarJugadorCallback
    {
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
                RegistroEnEspera registroEnEsperaVentana = new RegistroEnEspera();
                registroEnEsperaVentana.Show();
                var ventanaRegistro = Application.Current.Windows.OfType<RegistrarCuenta>().SingleOrDefault();
                ventanaRegistro.Close();
            }
        }

        public void NotificarResultadoClave(bool claveValida)
        {
            if (claveValida)
            {
                MessageBox.Show("Tu registro fue exitoso", "Exito", MessageBoxButton.OK);

                Login ventanaLogin = new Login();
                ventanaLogin.Show();

                var ventanaRegistroEnEspera = Application.Current.Windows.OfType<RegistroEnEspera>().SingleOrDefault();
                ventanaRegistroEnEspera.Close();
            }
            else
            {
                MessageBox.Show("La clave no es valida");
            }
        }
    }
}
