using System;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.ServiceModel.Description;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UNO.Contratos.Login;
using UNOServerTest.JuegoUNOServicioTest;

namespace UNOServerTest.Login
{
    [TestClass]
    public class LoginTest
    {
        private static ServiceHost serviceHost;
        private static InstanceContext instanceContext;
        private static LoginCallbackAdmin loginAdmin;
        private static LoginClient loginCliente;

        //Use TestCleanup para ejecutar el código una vez ejecutadas todas las pruebas
        [ClassCleanup]
        public static void CleanupClass() 
        {
            serviceHost.Close();
        }

        [TestMethod]
        public void ObtenerResultadoLogin_NoExisteNickname()
        {
            string nicknameIncorrecto = "elrevo2212321";
            string contraseña = "elrevo";

            try
            {
                Uri baseAddress = new Uri("net.tcp://localhost:8090/UNO.Contratos");
                serviceHost = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio), baseAddress);
                Binding binding = new NetTcpBinding();
                EndpointAddress endpointAddress = new EndpointAddress("net.tcp://localhost:8090/UNOServerTest");
                var endpoint = serviceHost.AddServiceEndpoint(typeof(UNO.Contratos.Login.ILogin), binding, endpointAddress.Uri);
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior
                {
                    HttpGetEnabled = false
                };
                serviceHost.Description.Behaviors.Add(smb);

                loginAdmin = new LoginCallbackAdmin();
                instanceContext = new InstanceContext(loginAdmin);
                loginCliente = new LoginClient(instanceContext);
                endpoint.Name = loginCliente.Endpoint.Name;

                serviceHost.Open();


                loginCliente.IniciarSesion(nicknameIncorrecto, contraseña);
                
                ResultadoLogin resultadoObtenido = loginAdmin.Resultado;
                ResultadoLogin resultadoEsperado = ResultadoLogin.NoExisteNickname;

                Assert.AreEqual(resultadoEsperado, resultadoObtenido);
            }
            catch (EndpointNotFoundException)
            {

            } 
        }

        [TestMethod]
        public void ObtenerResultadoLogin_ContraseñaIncorrecta()
        {
            string nickname = "elrevo";
            string contraseñaIncorrecta = "elrevo1233";

            try
            {
                Uri baseAddress = new Uri("net.tcp://localhost:8090/UNO.Contratos");
                serviceHost = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio), baseAddress);
                Binding binding = new NetTcpBinding();
                EndpointAddress endpointAddress = new EndpointAddress("net.tcp://localhost:8090/UNOServerTest");
                var endpoint = serviceHost.AddServiceEndpoint(typeof(UNO.Contratos.Login.ILogin), binding, endpointAddress.Uri);
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior
                {
                    HttpGetEnabled = false
                };
                serviceHost.Description.Behaviors.Add(smb);

                loginAdmin = new LoginCallbackAdmin();
                instanceContext = new InstanceContext(loginAdmin);
                loginCliente = new LoginClient(instanceContext);
                endpoint.Name = loginCliente.Endpoint.Name;

                serviceHost.Open();


                loginCliente.IniciarSesion(nickname, contraseñaIncorrecta);

                ResultadoLogin resultadoObtenido = loginAdmin.Resultado;
                ResultadoLogin resultadoEsperado = ResultadoLogin.ContraseñaIncorrecta;

                Assert.AreEqual(resultadoEsperado, resultadoObtenido);
            }
            catch (EndpointNotFoundException)
            {

            }
        }

        [TestMethod]
        public void ObtenerResultadoLogin_ExisteUsuario()
        {
            string nickname = "elrevo";
            string contraseña = "elrevo";

            try
            {
                Uri baseAddress = new Uri("net.tcp://localhost:8090/UNO.Contratos");
                serviceHost = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio), baseAddress);
                Binding binding = new NetTcpBinding();
                EndpointAddress endpointAddress = new EndpointAddress("net.tcp://localhost:8090/UNOServerTest");
                var endpoint = serviceHost.AddServiceEndpoint(typeof(UNO.Contratos.Login.ILogin), binding, endpointAddress.Uri);
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior
                {
                    HttpGetEnabled = false
                };
                serviceHost.Description.Behaviors.Add(smb);

                
                instanceContext = new InstanceContext(new LoginCallbackAdmin());
                loginCliente = new LoginClient(instanceContext);
                endpoint.Name = loginCliente.Endpoint.Name;

                serviceHost.Open();


                loginCliente.IniciarSesion(nickname, contraseña);
                loginAdmin = new LoginCallbackAdmin();
                ResultadoLogin resultadoObtenido = loginAdmin.Resultado;
                ResultadoLogin resultadoEsperado = ResultadoLogin.ExisteJugador;

                Assert.AreEqual(resultadoEsperado, resultadoObtenido);
            }
            catch (EndpointNotFoundException)
            {

            }
        }

        [TestMethod]
        public void ObtenerResultadoLogin_SesionYaIniciada()
        {
            string nickname = "elrevo";
            string contraseña = "elrevo";

            try
            {
                Uri baseAddress = new Uri("net.tcp://localhost:8090/UNO.Contratos");
                serviceHost = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio), baseAddress);
                Binding binding = new NetTcpBinding();
                EndpointAddress endpointAddress = new EndpointAddress("net.tcp://localhost:8090/UNOServerTest");
                var endpoint = serviceHost.AddServiceEndpoint(typeof(UNO.Contratos.Login.ILogin), binding, endpointAddress.Uri);
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior
                {
                    HttpGetEnabled = false
                };
                serviceHost.Description.Behaviors.Add(smb);

                loginAdmin = new LoginCallbackAdmin();
                instanceContext = new InstanceContext(loginAdmin);
                loginCliente = new LoginClient(instanceContext);
                endpoint.Name = loginCliente.Endpoint.Name;

                serviceHost.Open();


                loginCliente.IniciarSesion(nickname, contraseña);
                loginCliente.IniciarSesion(nickname, contraseña);
                
                ResultadoLogin resultadoObtenido = loginAdmin.Resultado;
                ResultadoLogin resultadoEsperado = ResultadoLogin.SesionIniciada;

                Assert.AreEqual(resultadoEsperado, resultadoObtenido);
            }
            catch (EndpointNotFoundException)
            {

            }
        }
    }
}
