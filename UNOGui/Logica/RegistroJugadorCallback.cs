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
            new Mensaje
            {
                Title = Properties.Resources.RegistroEnEspera_ClaveValidacion,
                TituloMensaje = Properties.Resources.Registro_NuevaClaveTituloMensaje,
                Contenido = Properties.Resources.Registro_NuevaClaveMensaje
            }.ShowDialog();

            (ventanaPrincipal.Content as RegistroEnEspera).IniciarTemporizador();
        }

        public void NotificarRegistro(ResultadoRegistro resultado)
        {
            if (resultado == ResultadoRegistro.UsuarioYaExiste)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.Registro_NicknameExisteTitulo,
                    Contenido = Properties.Resources.Registro_NicknameExisteMensaje
                }.ShowDialog();
            }
            else if (resultado == ResultadoRegistro.CorreoYaExiste)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.Registro_CorreoExisteTitulo,
                    Contenido = Properties.Resources.Registro_CorreoExisteMensaje
                }.ShowDialog();
            }
            else if (resultado == ResultadoRegistro.RegistroExitoso)
            {                
                ventanaPrincipal.Navigate(new RegistroEnEspera());
            }
        }

        public void NotificarResultadoClave(bool claveValida)
        {
            Mensaje ventanaMensaje = new Mensaje();

            if (claveValida)
            {
                ventanaMensaje.Title = Properties.Resources.Registro_ExitoTitulo;
                ventanaMensaje.TituloMensaje = Properties.Resources.Registro_ExitoTitulo;
                ventanaMensaje.Contenido = Properties.Resources.Registro_ExitoMensaje;
                ventanaMensaje.ShowDialog();

                ventanaPrincipal.Navigate(new Login());
            }
            else
            {
                ventanaMensaje.TituloMensaje = Properties.Resources.Registro_ClaveInvalidaTitulo;
                ventanaMensaje.Contenido = Properties.Resources.Registro_ClaveInvalidaMensaje;
                ventanaMensaje.ShowDialog();
            }
        }
    }
}
