using System.Net.Mail;
using System.Net;
using UNO.Dominio;

namespace UNO.Contratos.AdministradorEmail
{
    public class CorreoElectronico
    {
        private readonly SmtpClient cliente;
        private readonly MailAddress remitente;
        private const string USUARIO = "juegouno.proyecto@gmail.com";
        private const string CONTRASEÑA = "proyectoJuegoTecnologias2020";
        private const string DIRECCION = "juegouno.proyecto@gmail.com";
        private const string NOMBRE_A_MOSTRAR = "Juego UNO Inc.";

        public CorreoElectronico()
        {
            cliente = new SmtpClient
            {
                Credentials = new NetworkCredential(USUARIO, CONTRASEÑA),
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
    }
}
