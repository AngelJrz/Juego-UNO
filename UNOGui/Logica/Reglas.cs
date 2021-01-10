using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNOGui.JuegoUNOServicio;

namespace UNOGui.Logica
{
    public static class Reglas
    {
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

        public static bool ElJugadorGano(List<Carta> mazoJugador)
        {
            return mazoJugador.Count == 0;
        }
    }
}
