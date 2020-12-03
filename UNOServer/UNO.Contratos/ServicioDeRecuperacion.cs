using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net.Mail;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNO.AccesoADatos.AdministrarDatos;
using UNO.Contratos.AdministradorEmail;
using UNO.Contratos.AdministrarJugador;
using UNO.Dominio;

namespace UNO.Contratos
{
    
    public partial class JuegoUNOServicio : IRecuperarCuenta
    {
        private readonly Dictionary<IRecuperarCuentaCallback, Jugador> jugadoresARecuperar = new Dictionary<IRecuperarCuentaCallback, Jugador>();

        public void EnviarClaveRecuperacion(Jugador infoJugador)
        {
            bool ClaveEnviada;

            if (administradorDatosJugador.ExisteCorreoElectronico(infoJugador.CorreoElectronico))
            {
                try
                {
                    string claveValidacion = GeneradorClave.GenerarClaveValidacion();

                    adminCorreoElectronico.EnviarClaveRecuperacion(infoJugador.CorreoElectronico, claveValidacion);
                    infoJugador.ClaveValidacion = claveValidacion;
                    jugadoresARecuperar.Add(ObtenerCallbackRecuperacion, infoJugador);

                    ClaveEnviada = true;
                }
                catch (SmtpException)
                {
                    throw new SmtpException();
                }

            }
            else
            {
                ClaveEnviada = false;
            }

            ObtenerCallbackRecuperacion.NotificarEnvioClave(ClaveEnviada);
        }

        public void VerificarClaveRecuperacion(string clave)
        {
            bool esClaveCorrecta = false;

            foreach (var jugador in jugadoresARecuperar)
            {
                if (jugador.Key == ObtenerCallbackRecuperacion)
                {
                    if (jugador.Value.ClaveValidacion.Equals(clave))
                    {
                        esClaveCorrecta = true;
                    }
                    break;
                }
            }

            ObtenerCallbackRecuperacion.NotificarResultadoVerificación(esClaveCorrecta);
        }

        public void ActualizarContrasenia(string contrasenia)
        {
            bool recuperacionTerminada = false;


            foreach (var jugador in jugadoresARecuperar)
            {
                if (jugador.Key == ObtenerCallbackRecuperacion)
                {
                    try
                    {
                        administradorDatosJugador.ActualizarContrasenia(jugador.Value, contrasenia);
                        recuperacionTerminada = true;
                    }
                    catch (DbUpdateException)
                    {
                        throw new DbUpdateException("Error al agregar nuevo jugador");
                    }
                    break;
                }
            }

            if (recuperacionTerminada)
            {
                jugadoresARecuperar.Remove(ObtenerCallbackRecuperacion);
            }

            ObtenerCallbackRecuperacion.NotificarResultadoRecuperacion(recuperacionTerminada);
        }

        private IRecuperarCuentaCallback ObtenerCallbackRecuperacion
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IRecuperarCuentaCallback>();
            }
        }

    }
}
