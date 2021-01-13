using System;


namespace UNO.Contratos.AdministrarJugador
{
    /// <summary>
    /// Implementa la lógica para generar una clave de validación.
    /// </summary>
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
