using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNO.Dominio;

namespace UNO.Contratos.AdministrarSala
{
    public class Sala
    {
        public string Id { get; set; }
        public string Contraseña { get; set; }
        public int NumeroTotalDeJugadores { get; set; }
        public Dictionary<ISalaCallback, Jugador> JugadoresEnSala { get; set; }
    }
}
