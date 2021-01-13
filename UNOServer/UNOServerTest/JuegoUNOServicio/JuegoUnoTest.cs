using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.ServiceModel.Description;
using UNO.Contratos.AdministrarJugador;
using UNOServerTest.JuegoUNOServicioTest;

namespace UNOServerTest.JuegoUNOServicio
{
    [TestClass]
    public class JuegoUnoTest
    {
        private static ServiceHost serviceHost;
        private static InstanceContext instanceContext;
        private static RegistroJugadorCallback registroAdmin;
        private static RegistrarJugadorClient cliente;

        //Use TestCleanup para ejecutar el código una vez ejecutadas todas las pruebas
        [ClassCleanup]
        public static void CleanupClass()
        {
            serviceHost.Close();
        }

        [TestMethod]
        public void RegistrarUnUsuario_InformaciónCorrecta()
        {
            try
            {
                Uri baseAddress = new Uri("net.tcp://localhost:8090/UNO.Contratos");
                serviceHost = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio), baseAddress);
                Binding binding = new NetTcpBinding();
                EndpointAddress endpointAddress = new EndpointAddress("net.tcp://localhost:8090/UNOServerTest");
                var endpoint = serviceHost.AddServiceEndpoint(typeof(UNO.Contratos.AdministrarJugador.IRegistrarJugador), binding, endpointAddress.Uri);
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior
                {
                    HttpGetEnabled = false
                };
                serviceHost.Description.Behaviors.Add(smb);

                registroAdmin = new RegistroJugadorCallback();
                instanceContext = new InstanceContext(registroAdmin);
                cliente = new RegistrarJugadorClient(instanceContext);
                endpoint.Name = cliente.Endpoint.Name;

                serviceHost.Open();

                Jugador nuevoJugador = new Jugador
                {
                    Nickname = "angelJuarez2",
                    CorreoElectronico = "zS18012169@estudiantes.uv.mx",
                    Contraseña = "cuentaJuegoUno"
                };

                cliente.RegistrarJugador(nuevoJugador);

                ResultadoRegistro resultadoObtenido = registroAdmin.ResultadoDelRegistro;
                ResultadoRegistro resultadoEsperado = ResultadoRegistro.RegistroExitoso;

                Assert.IsTrue(resultadoEsperado == resultadoObtenido);
            }
            catch (EndpointNotFoundException)
            {

            }
        }

        [TestMethod]
        public void VerificarClave_InformaciónCorrecta()
        {
            try
            {
                Uri baseAddress = new Uri("net.tcp://localhost:8090/UNO.Contratos");
                serviceHost = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio), baseAddress);
                Binding binding = new NetTcpBinding();
                EndpointAddress endpointAddress = new EndpointAddress("net.tcp://localhost:8090/UNOServerTest");
                var endpoint = serviceHost.AddServiceEndpoint(typeof(UNO.Contratos.AdministrarJugador.IRegistrarJugador), binding, endpointAddress.Uri);
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior
                {
                    HttpGetEnabled = false
                };
                serviceHost.Description.Behaviors.Add(smb);

                registroAdmin = new RegistroJugadorCallback();
                instanceContext = new InstanceContext(registroAdmin);
                cliente = new RegistrarJugadorClient(instanceContext);
                endpoint.Name = cliente.Endpoint.Name;

                serviceHost.Open();

                String claveRegistro = "13254";

                cliente.VerificarClave(claveRegistro);

                bool resultadoObtenido = registroAdmin.ClaveCorrecta;

                Assert.IsTrue(resultadoObtenido);
            }
            catch (EndpointNotFoundException)
            {

            }
        }

        [TestMethod]
        public void CancelarRegistro_CancelacionExitosa()
        {
            try
            {
                Uri baseAddress = new Uri("net.tcp://localhost:8090/UNO.Contratos");
                serviceHost = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio), baseAddress);
                Binding binding = new NetTcpBinding();
                EndpointAddress endpointAddress = new EndpointAddress("net.tcp://localhost:8090/UNOServerTest");
                var endpoint = serviceHost.AddServiceEndpoint(typeof(UNO.Contratos.AdministrarJugador.IRegistrarJugador), binding, endpointAddress.Uri);
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior
                {
                    HttpGetEnabled = false
                };
                serviceHost.Description.Behaviors.Add(smb);

                registroAdmin = new RegistroJugadorCallback();
                instanceContext = new InstanceContext(registroAdmin);
                cliente = new RegistrarJugadorClient(instanceContext);
                endpoint.Name = cliente.Endpoint.Name;

                serviceHost.Open();

                cliente.CancelarRegistro();

                Assert.IsTrue(registroAdmin.RegistroCancelado);
            }
            catch (EndpointNotFoundException)
            {

            }
        }

        [TestMethod]
        public void ReenviarClave_ReenvioExitoso()
        {
            try
            {
                Uri baseAddress = new Uri("net.tcp://localhost:8090/UNO.Contratos");
                serviceHost = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio), baseAddress);
                Binding binding = new NetTcpBinding();
                EndpointAddress endpointAddress = new EndpointAddress("net.tcp://localhost:8090/UNOServerTest");
                var endpoint = serviceHost.AddServiceEndpoint(typeof(UNO.Contratos.AdministrarJugador.IRegistrarJugador), binding, endpointAddress.Uri);
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior
                {
                    HttpGetEnabled = false
                };
                serviceHost.Description.Behaviors.Add(smb);

                registroAdmin = new RegistroJugadorCallback();
                instanceContext = new InstanceContext(registroAdmin);
                cliente = new RegistrarJugadorClient(instanceContext);
                endpoint.Name = cliente.Endpoint.Name;

                serviceHost.Open();

                cliente.EnviarClaveDeNuevo();

                Assert.IsTrue(registroAdmin.ClaveEnviada);
            }
            catch (EndpointNotFoundException)
            {

            }
        }
    }
}
