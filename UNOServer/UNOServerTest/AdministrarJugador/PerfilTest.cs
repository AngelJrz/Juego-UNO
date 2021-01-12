using System;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.ServiceModel.Description;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UNOServerTest.JuegoUNOServicioTest;

namespace UNOServerTest.AdministrarJugador
{
    [TestClass]
    public class PerfilTest
    {
        private static ServiceHost serviceHost;
        private static InstanceContext instanceContext;
        private static PerfilCallbackAdmin perfilAdmin;
        private static PerfilClient perfilCliente;

        //Use TestCleanup para ejecutar el código una vez ejecutadas todas las pruebas
        [ClassCleanup]
        public static void CleanupClass()
        {
            serviceHost.Close();
        }

        [TestMethod]
        public void ObtenerInformacionJugador_ExisteJugador_InformacionCorrecta()
        {
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

                perfilAdmin = new PerfilCallbackAdmin();
                instanceContext = new InstanceContext(perfilAdmin);
                perfilCliente = new PerfilClient(instanceContext);
                endpoint.Name = perfilCliente.Endpoint.Name;

                serviceHost.Open();

                Jugador jugadorEsperado = new Jugador
                {
                    Nickname = "elrevo",
                    CorreoElectronico = "elrevo@gmail.com",
                    Experiencia = 44,
                };

                perfilCliente.BuscarJugador(jugadorEsperado.Nickname);

                Jugador jugadorObtenido = perfilAdmin.Jugador;

                Assert.IsTrue
                (
                    jugadorEsperado.Nickname == jugadorObtenido.Nickname &&
                    jugadorEsperado.CorreoElectronico == jugadorObtenido.CorreoElectronico &&
                    jugadorEsperado.Experiencia == jugadorObtenido.Experiencia
                );
            }
            catch (EndpointNotFoundException)
            {

            }
        }

        [TestMethod]
        public void ObtenerInformacionJugador_NoExisteJugador_JugadorNulo()
        {
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

                perfilAdmin = new PerfilCallbackAdmin();
                instanceContext = new InstanceContext(perfilAdmin);
                perfilCliente = new PerfilClient(instanceContext);
                endpoint.Name = perfilCliente.Endpoint.Name;

                serviceHost.Open();

                string nicknameIncorrecto = "nicknameIncorrecto";

                perfilCliente.BuscarJugador(nicknameIncorrecto);

                Jugador jugadorObtenido = perfilAdmin.Jugador;

                Assert.IsNull(jugadorObtenido);
            }
            catch (EndpointNotFoundException)
            {

            }
        }
    }
}
