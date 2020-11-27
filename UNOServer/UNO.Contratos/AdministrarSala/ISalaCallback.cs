using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace UNO.Contratos.AdministrarSala
{
    /// <summary>
    /// 
    /// </summary>
    [ServiceContract]
    public interface ISalaCallback
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="salaCreada"></param>
        [OperationContract(IsOneWay = true)]
        void NotificarCreacionDeSala(Sala salaCreada);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="resultado"></param>
        [OperationContract(IsOneWay = true)]
        void NotificarUnionASala(ResultadoUnionSala resultado);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="jugadores"></param>
        [OperationContract(IsOneWay = true)]
        void ActualizarSala(List<string> jugadores);
    }
}
