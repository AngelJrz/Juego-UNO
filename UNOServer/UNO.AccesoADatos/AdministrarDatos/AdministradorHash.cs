using System.Security.Cryptography;
using System.Text;

namespace UNO.AccesoADatos.AdministrarDatos
{
    /// <summary>
    /// Administra métodos relacionados al cifrado Hash MD5.
    /// </summary>
    public static class AdministradorHash
    {
        /// <summary>
        /// Genera un Hash sobre el texto deseado.
        /// </summary>
        /// <param name="texto">Texto a realizar el Hash.</param>
        /// <returns>Hash del texto pasado.</returns>
        public static string GenerarHash(string texto)
        {
            byte[] textoFuente;
            byte[] textoHash;
            MD5 md5Code = MD5.Create();

            textoFuente = Encoding.ASCII.GetBytes(texto);
            textoHash = md5Code.ComputeHash(textoFuente);

            StringBuilder textoConHash = new StringBuilder();

            foreach (var letra in textoHash)
            {
                textoConHash.Append(letra.ToString("X2"));
            }

            return textoConHash.ToString();
        }

        /// <summary>
        /// Compara dos texto Hash.
        /// </summary>
        /// <param name="hashOriginal">Hash sobre el cual se va a comparar.</param>
        /// <param name="hashAComparar">Hash que va a ser comparado.</param>
        /// <returns>true si son iguales, false si no lo son.</returns>
        public static bool CompararHash(string hashOriginal, string hashAComparar)
        {
            bool sonIguales = false;

            if (hashOriginal == hashAComparar)
            {
                sonIguales = true;
            }

            return sonIguales;
        }
    }
}
