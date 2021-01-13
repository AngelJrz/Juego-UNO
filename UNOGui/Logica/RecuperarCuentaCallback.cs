
using System.Linq;
using System.Windows;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;
using UNOGui.Paginas;
using VerificarCodigo = UNOGui.Paginas.VerificarCodigo;
using RecuperacionCuenta = UNOGui.Paginas.RecuperacionCuenta;

namespace UNOGui.Logica
{
    public class RecuperarCuentaCallback : IRecuperarCuentaCallback
    {
        private readonly Principal ventanaPrincipal = Application.Current.Windows.OfType<Principal>().SingleOrDefault();

        /// <summary>
        /// Lógica para controlar la notificación de envío de clave.
        /// </summary>
        /// <param name="resultado">Resultado del envío</param>
        public void NotificarEnvioClave(bool resultado)
        {
            if (resultado)
            {
                ventanaPrincipal.Navigate(new VerificarCodigo());
            }
            else
            {
                new Mensaje
                {
                    TituloMensaje = "No se pudo enviar la clave",
                    Contenido = "La clave no se pudo enviar. Intente de nuevo."
                }.ShowDialog();
            }
        }

        /// <summary>
        /// Lógica para controlar la notificación del resultado de recuperación de cuenta.
        /// </summary>
        /// <param name="recuperada">Resultado de la recuperación.</param>
        public void NotificarResultadoRecuperacion(bool recuperada)
        {
            if (recuperada)
            {
                new Mensaje
                {
                    Title = "Contraseña actualizada",
                    TituloMensaje = "Contraseña actualizada",
                    Contenido = "Tu contraseña fue actualizada."
                }.ShowDialog();
                ventanaPrincipal.Navigate(new Login());
            }
            else
            {
                new Mensaje
                {
                    TituloMensaje = "No se pudo actualizar la contraseña",
                    Contenido = "No se pudo actualizar la contraseña. Intente de nuevo."
                }.ShowDialog();
            }
        }

        /// <summary>
        /// Lógica para controlar la notificación del resultado de verificación.
        /// </summary>
        /// <param name="resultado">Resultado de la verificación</param>
        public void NotificarResultadoVerificación(bool resultado)
        {
            if (resultado)
            {
                ventanaPrincipal.Navigate(new RecuperacionCuenta());
            }
            else
            {
                new Mensaje
                {
                    TituloMensaje = "La clave introducida es incorrecta",
                    Contenido = "Por favor verifique la clave e intente de nuevo."
                }.ShowDialog();
            }
        }
    }
}