using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UNOGui.Logica
{
    /// <summary>
    /// Para administrar la información del idioma del juego.
    /// </summary>
    public class Idioma
    {
        /// <summary>
        /// Obtiene o establece el nombre del idioma.
        /// </summary>
        public string Nombre { get; set; }

        /// <summary>
        /// Obtiene o establece la nomenclatura para el idioma según la convención de National Language Support. 
        /// </summary>
        public string Nomenclatura { get; set; }
    }
}
