using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNO.Contratos.AdministrarSala;

namespace UNO.Contratos
{
    public partial class JuegoUNOServicio : IAdministrarSala
    {
        private readonly List<Sala> salasCreadas = new List<Sala>();

        public void CrearSala(Sala nuevaSala)
        {
            throw new NotImplementedException();
        }

        public void SalirDeSala(string idSala)
        {
            throw new NotImplementedException();
        }

        public void UnirseASala(Sala salaAUnirse)
        {
            throw new NotImplementedException();
        }
    }
}
