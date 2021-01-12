using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNOGui.JuegoUNOServicio;

namespace UNOGui.Logica
{
    /// <summary>
    /// Establece las reglas del juego
    /// </summary>
    public static class Reglas
    {
        /// <summary>
        /// Verifica si la carta que se desea colocar es valida
        /// </summary>
        /// <param name="cartaDeMano">Carta que se desea poner</param>
        /// <param name="cartaEnTablero">Carta actual en el tablero</param>
        /// <returns>True si es valida, de otro modo false</returns>
        public static bool EsCartaValida(Carta cartaDeMano, Carta cartaEnTablero)
        {
            bool esValida = false;

            if (cartaEnTablero.Colork__BackingField == ColoresCartas.Negro)
            {
                esValida = true;
            }
            else if (cartaDeMano.Colork__BackingField == ColoresCartas.Negro)
            {
                esValida = true;
            }
            else if (cartaDeMano.Colork__BackingField == cartaEnTablero.Colork__BackingField)
            {
                esValida = true;
            }
            else if ((cartaDeMano.Numerok__BackingField == cartaEnTablero.Numerok__BackingField) && (cartaDeMano.Efectok__BackingField == EfectosCarta.SinEfecto))
            {
                esValida = true;
            }

            return esValida;
        }

        /// <summary>
        /// Verifica si el jugador gano la partida
        /// </summary>
        /// <param name="mazoJugador">Mano actual del jugador</param>
        /// <returns>True si el jugador gano, de otro modo false</returns>
        public static bool ElJugadorGano(List<Carta> mazoJugador)
        {
            return mazoJugador.Count == 0;
        }
    }
}
