using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNOGui.JuegoUNOServicio;

namespace UNOGui.Logica
{
    public static class RecuperarCuentaAdmin
    {
        private static readonly InstanceContext contexto = new InstanceContext(new RecuperarCuentaCallback());
        private static readonly RecuperarCuentaClient servidor = new RecuperarCuentaClient(contexto);
        public static void VerificarClave(string clave) {

            servidor.VerificarClaveRecuperacion(clave);
        }

        public static void EnviarClave(Jugador jugador){

            servidor.EnviarClaveRecuperacion(jugador);
        }

        public static void ActualizarContrasenia(string contrasenia){

            servidor.ActualizarContrasenia(contrasenia);
        }
    }
}
