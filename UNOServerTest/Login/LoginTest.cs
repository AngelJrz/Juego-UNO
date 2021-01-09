using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.ServiceModel;
using UNOServerTest.UNOServer;

namespace UNOServerTest.Login
{
    /// <summary>
    /// Descripción resumida de LoginTest
    /// </summary>
    [TestClass]
    public class LoginTest : ILoginCallback
    {
        //public LoginTest()
        //{

        //}

        //private TestContext testContextInstance;

        ///// <summary>
        /////Obtiene o establece el contexto de las pruebas que proporciona
        /////información y funcionalidad para la serie de pruebas actual.
        /////</summary>
        //public TestContext TestContext
        //{
        //    get
        //    {
        //        return testContextInstance;
        //    }
        //    set
        //    {
        //        testContextInstance = value;
        //    }
        //}

        #region Atributos de prueba adicionales
        //
        // Puede usar los siguientes atributos adicionales conforme escribe las pruebas:
        //
        // Use ClassInitialize para ejecutar el código antes de ejecutar la primera prueba en la clase
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // Use ClassCleanup para ejecutar el código una vez ejecutadas todas las pruebas en una clase
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        // Usar TestInitialize para ejecutar el código antes de ejecutar cada prueba 
        // [TestInitialize()]
        // public void MyTestInitialize() { }
        //
        // Use TestCleanup para ejecutar el código una vez ejecutadas todas las pruebas
        // [TestCleanup()]
        // public void MyTestCleanup() { }
        //
        #endregion

        InstanceContext contexto;
        LoginClient servidor;
        LoginCallbackAdmin loginCallback;

        public ResultadoLogin Resultado { get; set; }

        public void NotificarResultadoLogin(ResultadoLogin resultado)
        {
            Resultado = resultado;
        }

        public void ObtenerJugadoresTop(Jugador[] jugadoresTop)
        {
            //throw new NotImplementedException();
        }

        [TestMethod]
        public void ObtenerResultadoLogin_NoExisteNickname()
        {
            //loginCallback = new LoginCallbackAdmin();
            //contexto = new InstanceContext(this);
            //servidor = new LoginClient(contexto);
            string nickname = "elrevo2";
            string contraseña = "micontraseña";

            ResultadoLogin resultadoEsperado = Login.IniciarSesion(nickname, contraseña);

            Assert.AreEqual(resultadoEsperado, ResultadoLogin.NoExisteNickname);
        }
    }
}
