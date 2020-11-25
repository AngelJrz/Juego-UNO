using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace UNO.Contratos.AdministrarJugador
{
    public static class GeneradorClave
    {
        /// <summary>
        /// Genera una clave de validación.
        /// </summary>
        /// <returns>Clave de validación.</returns>
        public static string GenerarClaveValidacion()
        {
            Random random = new Random();

            string claveValidacion = random.Next(10000, 99999).ToString();

            return claveValidacion;
        }
    }
}
