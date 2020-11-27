using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNOGui.JuegoUNOServicio;

namespace UNOGui.Logica
{
    public static class RegistroJugadorAdmin
    {
        private static readonly InstanceContext contexto = new InstanceContext(new RegistroJugadorCallback());
        private static readonly RegistrarJugadorClient servidor = new RegistrarJugadorClient(contexto);

        public static void RegistrarNuevoJugador(Jugador nuevoJugador)
        {
            servidor.RegistrarJugador(nuevoJugador);
        }

        public static void VerificarClaveIngresada(string clave)
        {
            servidor.VerificarClave(clave);
        }

        public static void CancelarRegistrarJugador()
        {
            servidor.CancelarRegistro();
        }

        public static void EnviarClave()
        {
            servidor.EnviarClaveDeNuevo();
        }
    }
}
