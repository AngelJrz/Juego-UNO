using System.Linq;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;
using UNOGui.Paginas;

namespace UNOGui.Logica
{
    /// <summary>
    /// Administra la logica del proceso de registro de un jugador
    /// </summary>
    public class RegistroJugadorCallback : IRegistrarJugadorCallback
    {
        private readonly Principal ventanaPrincipal = Application.Current.Windows.OfType<Principal>().SingleOrDefault();

        /// <summary>
        /// Cancela el registro de un jugador
        /// </summary>
        public void NotificarCancelacionRegistro()
        {
            ventanaPrincipal.Navigate(new Login());
        }

        /// <summary>
        /// Notifica al usuario el envio de una clave de registro
        /// </summary>
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

        /// <summary>
        /// Notifica el resultado del registro de un usuario
        /// </summary>
        /// <param name="resultado">Resultado del registro del jugador</param>
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

        /// <summary>
        /// Notifica al jugador el resultado de la comprobación de la clave de registro ingresada
        /// </summary>
        /// <param name="claveValida">Resultado de la comprovación de la clave</param>
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
