using System.Collections.Generic;
using System.ServiceModel;
using UNO.Contratos.AdministrarJugador;
using UNO.Dominio;
using UNO.AccesoADatos.AdministrarDatos;
using UNO.Contratos.AdministradorEmail;
using System.Net.Mail;
using System.Data.Entity.Infrastructure;

namespace UNO.Contratos
{

    public partial class JuegoUNOServicio : IRegistrarJugador
    {
        private readonly Dictionary<IRegistrarJugadorCallback, Jugador> jugadoresARegistrar = new Dictionary<IRegistrarJugadorCallback, Jugador>();
        private readonly AdminDatosJugador administradorDatosJugador = new AdminDatosJugador();
        private readonly CorreoElectronico adminCorreoElectronico = new CorreoElectronico();

        /// <summary>
        /// REgistra un nuevo jugador en el sistema
        /// </summary>
        /// <param name="jugador">Jugador que se desa registrar</param>
        public void RegistrarJugador(Jugador jugador)
        {
            ResultadoRegistro resultadoRegistro;

            if (administradorDatosJugador.ExisteNickname(jugador.Nickname))
            {
                resultadoRegistro = ResultadoRegistro.UsuarioYaExiste;
            }
            else if (administradorDatosJugador.ExisteCorreoElectronico(jugador.CorreoElectronico))
            {
                resultadoRegistro = ResultadoRegistro.CorreoYaExiste;
            }
            else
            {
                string claveValidacion = GeneradorClave.GenerarClaveValidacion();
                jugador.ClaveValidacion = claveValidacion;
                
                try
                {
                    adminCorreoElectronico.EnviarClaveValidacion(jugador);
                }
                catch (SmtpException)
                {
                    throw new SmtpException();
                }

                jugadoresARegistrar.Add(ObtenerCallbackActual, jugador);
                resultadoRegistro = ResultadoRegistro.RegistroExitoso;
            }

            ObtenerCallbackActual.NotificarRegistro(resultadoRegistro);
        }

        /// <summary>
        /// Verifica si la clave enviada por correo electronico es valida
        /// </summary>
        /// <param name="clave">Clave enviada por correo electronico</param>
        public void VerificarClave(string clave)
        {
            bool esClaveCorrecta = false;

            foreach (var jugador in jugadoresARegistrar)
            {
                if (jugador.Key == ObtenerCallbackActual)
                {
                    if (jugador.Value.ClaveValidacion.Equals(clave))
                    {
                        esClaveCorrecta = true;

                        try
                        {
                            administradorDatosJugador.GuardarJugador(jugador.Value);
                        }
                        catch (DbUpdateException)
                        {
                            throw new DbUpdateException("Error al agregar nuevo jugador");
                        }
                    }
                    break;
                }
            }

            if (esClaveCorrecta)
            {
                jugadoresARegistrar.Remove(ObtenerCallbackActual);
            }

            ObtenerCallbackActual.NotificarResultadoClave(esClaveCorrecta);
        }

        /// <summary>
        /// Cancela en registro del jugador en el sistema
        /// </summary>
        public void CancelarRegistro()
        {
            IRegistrarJugadorCallback callbackActual = ObtenerCallbackActual;

            if (jugadoresARegistrar.ContainsKey(callbackActual))
            {
                jugadoresARegistrar.Remove(callbackActual);
            }

            callbackActual.NotificarCancelacionRegistro();
        }

        /// <summary>
        /// Vuelve a enviar la clave asignada para la verificación al correo electronico ingresado
        /// </summary>
        public void EnviarClaveDeNuevo()
        {
            IRegistrarJugadorCallback callbackActual = ObtenerCallbackActual;
            jugadoresARegistrar.TryGetValue(callbackActual, out Jugador jugador);

            if (jugador != null)
            {
                try
                {
                    adminCorreoElectronico.EnviarClaveValidacion(jugador);
                }
                catch (SmtpException)
                {
                    throw new SmtpException();
                }

                callbackActual.NotificarEnvioDeClave();
            }
        }

        private IRegistrarJugadorCallback ObtenerCallbackActual
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IRegistrarJugadorCallback>();
            }
        }
    }
}
