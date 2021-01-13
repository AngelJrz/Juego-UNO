
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UNO.AccesoADatos.AdministrarDatos;

namespace UNOServerTest.AccesoADatos
{
    [TestClass]
    public class ObtenerDatos
    {
        private AdminDatosJugador adminDatosJugador;

        [TestInitialize]
        public void InicioPrueba()
        {
            adminDatosJugador = new AdminDatosJugador();
        }

        [TestMethod]
        public void ExisteNickname_NicknameExistente_RetornaVerdadero()
        {
            string nicknameExistente = "elrevo";
            bool existeNickname = adminDatosJugador.ExisteNickname(nicknameExistente);

            Assert.IsTrue(existeNickname);
        }

        [TestMethod]
        public void ExisteNickname_NicknameNoExiste_RetornaFalso()
        {
            string nicknameInexistente = "elrevoIncorrectoNickname";
            bool existeNickname = adminDatosJugador.ExisteNickname(nicknameInexistente);

            Assert.IsFalse(existeNickname);
        }

        [TestMethod]
        public void EsContraseñaCorrecta_ContraseñaCorrecta_RegresaVerdadero()
        {
            string nicknameExistente = "elrevo";
            string contraseñaCorrecta = "elrevo";
            bool esContraseñaCorrecta = adminDatosJugador.EsContraseñaCorrecta(nicknameExistente, contraseñaCorrecta);

            Assert.IsTrue(esContraseñaCorrecta);
        }

        [TestMethod]
        public void EsContraseñaCorrecta_ContraseñaIncorrecta_RegresaFalso()
        {
            string nicknameExistente = "elrevo";
            string contraseñaIncorrecta = "elrevoContraIncorrecta";
            bool esContraseñaCorrecta = adminDatosJugador.EsContraseñaCorrecta(nicknameExistente, contraseñaIncorrecta);

            Assert.IsFalse(esContraseñaCorrecta);
        }

        [TestMethod]
        public void ExisteCorreoElectronico_CorreoExistente_RegresaVerdadero()
        {
            string correoExistente = "elrevo@gmail.com";
            bool existeCorreo = adminDatosJugador.ExisteCorreoElectronico(correoExistente);

            Assert.IsTrue(existeCorreo);
        }

        [TestMethod]
        public void ExisteCorreoElectronico_CorreoNoExistente_RegresaFalso()
        {
            string correoInexistente = "elrevo@gmail.com.noexiste.otro";
            bool existeCorreo = adminDatosJugador.ExisteCorreoElectronico(correoInexistente);

            Assert.IsFalse(existeCorreo);
        }

        [TestMethod]
        public void ObtenerMejoresJugadores_HayJugadores_RegresaCincoJugadores()
        {
            List<UNO.Dominio.Jugador> mejoresJugadores = adminDatosJugador.ObtenerMejoresJugadores();
            int numeroJugadoresObtenidos = mejoresJugadores.Count;
            int numeroJugadoresEsperados = 5;
            Assert.AreEqual(numeroJugadoresEsperados, numeroJugadoresObtenidos);
        }

        [TestMethod]
        public void ObtenerJugador_JugadorExistente_RegresaInfoCorrecta()
        {
            UNO.Dominio.Jugador jugadorEsperado = new UNO.Dominio.Jugador
            {
                Nickname = "elrevo",
                CorreoElectronico = "elrevo@gmail.com",
                Experiencia = 44,
                PuntajeTotal = 53,
                PartidasGanadas = 4,
                PartidasJugadas = 6,
                Nivel = 1
            };

            UNO.Dominio.Jugador jugadorObtenido = adminDatosJugador.ObtenerJugador(jugadorEsperado.Nickname);

            Assert.IsTrue
            (
                jugadorEsperado.Nickname.Equals(jugadorObtenido.Nickname) &&
                jugadorEsperado.CorreoElectronico.Equals(jugadorObtenido.CorreoElectronico) &&
                jugadorEsperado.Experiencia == jugadorObtenido.Experiencia &&
                jugadorEsperado.PuntajeTotal == jugadorObtenido.PuntajeTotal &&
                jugadorEsperado.PartidasGanadas == jugadorObtenido.PartidasGanadas &&
                jugadorEsperado.PartidasJugadas == jugadorObtenido.PartidasJugadas &&
                jugadorEsperado.Nivel == jugadorObtenido.Nivel
            );
        }

        [TestMethod]
        public void ObtenerJugador_JugadorNoExistente_RegresaNull()
        {

            string nicknameInexistente = "elrevoNicknameNoExiste";
            UNO.Dominio.Jugador jugadorObtenido = adminDatosJugador.ObtenerJugador(nicknameInexistente);

            Assert.IsNull(jugadorObtenido);
        }
    }
}
