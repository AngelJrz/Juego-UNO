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

        public void CancelarRegistro()
        {
            IRegistrarJugadorCallback callbackActual = ObtenerCallbackActual;

            if (jugadoresARegistrar.ContainsKey(callbackActual))
            {
                jugadoresARegistrar.Remove(callbackActual);
            }

            callbackActual.NotificarCancelacionRegistro();
        }

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
