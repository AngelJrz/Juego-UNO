using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Dominio
{
    [Serializable]
    public class Carta
    {
        public ColoresCartas Color { get; set; }
        public int Numero { get; set; }
        public String Ruta { get; set; }
        public EfectosCarta Efecto { get; set; }

        public Carta(ColoresCartas colorCarta, int numeroCarta)
        {
            this.Numero = numeroCarta;
            this.Color = colorCarta;
            this.Ruta = $"/Imagenes/RecursosTablero/{colorCarta}-{numeroCarta}.png";
            this.Efecto = EfectosCarta.SinEfecto;
        }

        public Carta(ColoresCartas colorCarta, EfectosCarta efectoCarta)
        {
            this.Color = colorCarta;
            this.Efecto = efectoCarta;
            this.Ruta = $"/Imagenes/RecursosTablero/{colorCarta}-{efectoCarta}.png";
            this.Numero = 0;
        }
    }
}
