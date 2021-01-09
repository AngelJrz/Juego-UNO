using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNOServerTest.UNOServer;

namespace UNOServerTest.Login
{
    public class Login
    {
        private static InstanceContext contexto;
        private static LoginClient servidor;
        private static LoginCallbackAdmin loginCallback;

        public static ResultadoLogin IniciarSesion(string nickname, string contraseña)
        {
            ResultadoLogin resultado;

            loginCallback = new LoginCallbackAdmin();
            contexto = new InstanceContext(loginCallback);
            servidor = new LoginClient(contexto);

            servidor.IniciarSesion(nickname, contraseña);
            resultado = loginCallback.Resultado;

            return resultado;
        }
    }
}
