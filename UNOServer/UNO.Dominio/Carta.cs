using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Dominio
{
    /// <summary>
    /// Maneja la información de una carta del juego
    /// </summary>
    [Serializable]
    public class Carta
    {
        /// <summary>
        /// Obtiene o establece un color de carta
        /// </summary>
        public ColoresCartas Color { get; set; }
        /// <summary>
        /// Obtiene o establece el numero de la carta
        /// </summary>
        public int Numero { get; set; }
        /// <summary>
        /// Obtiene o establece la ruta donde se encuentra el recurso de la carta
        /// </summary>
        public String Ruta { get; set; }
        /// <summary>
        /// Obtiene o establece el efecto de una carta
        /// </summary>
        public EfectosCarta Efecto { get; set; }

        /// <summary>
        /// Contruye una carta del mazo con un color y un numero
        /// </summary>
        /// <param name="colorCarta">Color de la carta generada</param>
        /// <param name="numeroCarta">Numero y valor de la carta</param>
        public Carta(ColoresCartas colorCarta, int numeroCarta)
        {
            this.Numero = numeroCarta;
            this.Color = colorCarta;
            this.Ruta = $"/Imagenes/RecursosTablero/{colorCarta}-{numeroCarta}.png";
            this.Efecto = EfectosCarta.SinEfecto;
        }

        /// <summary>
        /// Contruye una carta del mazo con un color y un efecto
        /// </summary>
        /// <param name="colorCarta">Color de la carta generada</param>
        /// <param name="efectoCarta">Efecto de la carta generada</param>
        public Carta(ColoresCartas colorCarta, EfectosCarta efectoCarta)
        {
            this.Color = colorCarta;
            this.Efecto = efectoCarta;
            this.Ruta = $"/Imagenes/RecursosTablero/{colorCarta}-{efectoCarta}.png";
            this.Numero = 0;
        }
    }
}
