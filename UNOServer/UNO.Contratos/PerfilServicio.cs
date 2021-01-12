using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using UNO.AccesoADatos.AdministrarDatos;
using UNO.Contratos.AdministrarJugador;

namespace UNO.Contratos
{
    public partial class JuegoUNOServicio : IPerfil
    {
        /// <summary>
        /// Nusca un jugador registrado en el sistema
        /// </summary>
        /// <param name="nickname">Nickname del jugador que se desea buscar</param>
        public void BuscarJugador(string nickname)
        {
            AdminDatosJugador adminDatosJugador = new AdminDatosJugador();
            Dominio.Jugador jugadorBuscado = adminDatosJugador.ObtenerJugador(nickname);

            PerfilCallback.ObtenerInformacionJugador(jugadorBuscado);
        }

        private IPerfilCallback PerfilCallback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IPerfilCallback>();
            }
        }
    }
}
