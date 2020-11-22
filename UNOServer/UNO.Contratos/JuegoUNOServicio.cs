using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNO.Contratos.RegistrarJugador;
using UNO.Dominio;

namespace UNO.Contratos
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, ConcurrencyMode = ConcurrencyMode.Multiple)]
    public partial class JuegoUNOServicio : IRegistrarJugador
    {
        public void RegistrarJugador(Jugador jugador)
        {
            throw new NotImplementedException();
        }

        public void VerificarClave(string clave)
        {
            throw new NotImplementedException();
        }
    }
}
