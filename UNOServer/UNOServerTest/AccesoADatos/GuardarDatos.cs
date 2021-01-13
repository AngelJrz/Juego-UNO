using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UNO.AccesoADatos.AdministrarDatos;

namespace UNOServerTest.AccesoADatos
{
    [TestClass]
    public class GuardarDatos
    {
        private AdminDatosJugador adminDatosJugador;

        [TestInitialize]
        public void InicioPrueba()
        {
            adminDatosJugador = new AdminDatosJugador();
        }

        [TestMethod]
        public void GuardarJugador_NuevoJugador_GuardaElJugador()
        {
            UNO.Dominio.Jugador nuevoJugador = new UNO.Dominio.Jugador
            {
                Nickname = "unolover",
                CorreoElectronico = "zs18012174@estudiantes.uv.mx",
                Contraseña = "unolover"
            };

            adminDatosJugador.GuardarJugador(nuevoJugador);
            UNO.Dominio.Jugador jugadorRegistrado = adminDatosJugador.ObtenerJugador(nuevoJugador.Nickname);

            Assert.IsTrue
            (
                jugadorRegistrado.Nickname.Equals(nuevoJugador.Nickname) &&
                jugadorRegistrado.CorreoElectronico.Equals(nuevoJugador.CorreoElectronico)
            );
        }
    }
}
