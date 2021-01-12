using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Dominio
{
    /// <summary>
    /// Posibles efectos que puede tener una carta del juego
    /// </summary>
    public enum EfectosCarta
    {
        /// <summary>
        /// La carta no cuenta con ningun efecto especial
        /// </summary>
        SinEfecto = 0,
        /// <summary>
        /// La carta cancela el turno del siguiente jugador
        /// </summary>
        Cancelar = 10,
        /// <summary>
        /// El sentido de la partida cambia al lado contrario
        /// </summary>
        Reversa = 20,
        /// <summary>
        /// El siguiente jugador toma dos cartas
        /// </summary>
        TomaDos = 30,
        /// <summary>
        /// El siguiente jugador toma cuatro cartas
        /// </summary>
        TomaCuatro = 40,
        /// <summary>
        /// El siguiente jugador puede colocar una carta de cualquier color
        /// </summary>
        MultiColor = 50
    }
}
