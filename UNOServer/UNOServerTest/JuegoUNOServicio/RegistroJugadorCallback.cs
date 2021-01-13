using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNOServerTest.JuegoUNOServicioTest;

namespace UNOServerTest.JuegoUNOServicio
{
    public class RegistroJugadorCallback : IRegistrarJugadorCallback
    {
        public UNO.Contratos.AdministrarJugador.ResultadoRegistro ResultadoDelRegistro { get; set; }
        public bool ClaveCorrecta { get; set; }
        public bool RegistroCancelado { get; set; }
        public bool ClaveEnviada { get; set; }

        public void NotificarCancelacionRegistro()
        {
            this.RegistroCancelado = true;
        }

        public void NotificarEnvioDeClave()
        {
            this.ClaveEnviada = true;
        }

        public void NotificarRegistro(UNO.Contratos.AdministrarJugador.ResultadoRegistro resultado)
        {
            this.ResultadoDelRegistro = resultado;
        }

        public void NotificarResultadoClave(bool claveValida)
        {
            this.ClaveCorrecta = claveValida;
        }
    }
}
