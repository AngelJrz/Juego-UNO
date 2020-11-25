using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.AdministrarJugador
{
    /// <summary>
    /// 
    /// </summary>
    [ServiceContract]
    public interface IRegistrarJugadorCallback
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="resultado"></param>
        [OperationContract(IsOneWay = true)]
        void NotificarRegistro(ResultadoRegistro resultado);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="claveValida"></param>
        [OperationContract(IsOneWay = true)]
        void NotificarResultadoClave(bool claveValida);
    }
}
