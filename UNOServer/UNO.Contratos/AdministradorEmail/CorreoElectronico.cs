using System.Net.Mail;
using System.Net;
using UNO.Dominio;
using System.Configuration;

namespace UNO.Contratos.AdministradorEmail
{
    /// <summary>
    /// Implementa la lógica para enviar un correo electrónico.
    /// </summary>
    public class CorreoElectronico
    {
        private readonly SmtpClient cliente;
        private readonly MailAddress remitente;
        private readonly string usuario = ConfigurationManager.AppSettings["UsuarioCorreo"];
        private readonly string contraseña = ConfigurationManager.AppSettings["ContraseñaCorreo"];
        private const string DIRECCION = "juegouno.proyecto@gmail.com";
        private const string NOMBRE_A_MOSTRAR = "Juego UNO Inc.";

        /// <summary>
        /// Constructor de la clase.
        /// </summary>
        public CorreoElectronico()
        {
            cliente = new SmtpClient
            {
                Credentials = new NetworkCredential(usuario, contraseña),
                Port = 587,
                EnableSsl = true,
                Host = "smtp.gmail.com",
            };

            remitente = new MailAddress(DIRECCION, NOMBRE_A_MOSTRAR);
        }

        /// <summary>
        /// Envía la clave de validación por correo electrónico de registro de cuenta.
        /// </summary>
        /// <param name="jugadorDestino">Jugador al que se le va a enviar la clave.</param>
        /// <exception cref="SmtpException"></exception>
        public void EnviarClaveValidacion(Jugador jugadorDestino)
        {
            MailMessage mensaje = new MailMessage();
            mensaje.To.Add(jugadorDestino.CorreoElectronico);
            mensaje.Subject = "Confirma tu registro";
            mensaje.IsBodyHtml = true;
            mensaje.Body = $"<h1>¡Hola, {jugadorDestino.Nickname}!</h1>" +
                "<h2>¡Este es el último paso para registrar tu cuenta!</h2> " +
                $"<h3>Ingresa la siguiente clave en la ventana de verificación: <code>{jugadorDestino.ClaveValidacion}</code></h3>";
            mensaje.From = remitente;

            try
            {
                cliente.Send(mensaje);
            }
            catch (SmtpException)
            {
                throw new SmtpException("Error al enviar el correo.");
            }
        }

        /// <summary>
        /// Envía la clave de recuperación a un correo especificado.
        /// </summary>
        /// <param name="correoDestino">Correo donde se enviará la clave</param>
        /// <param name="claveValidacion">La clave a enviar</param>
        /// <exception cref="SmtpException"></exception>
        public void EnviarClaveRecuperacion(string correoDestino, string claveValidacion)
        {
            MailMessage mensaje = new MailMessage();
            mensaje.To.Add(correoDestino);
            mensaje.Subject = "Cambio de contraseña";
            mensaje.IsBodyHtml = true;
            mensaje.Body = $"<h1>¡Hola, Recupera tu cuenta!</h1>" +
                "<h2>¡Este es el último paso para recuperar tu cuenta!</h2> " +
                $"<h3>Ingresa la siguiente clave en la ventana de verificación: <code>{claveValidacion}</code></h3>";
            mensaje.From = remitente;

            try
            {
                cliente.Send(mensaje);
            }
            catch (SmtpException)
            {
                throw new SmtpException("Error al enviar el correo.");
            }
        }
    }
}
