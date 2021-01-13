using System;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.ServiceModel.Description;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UNO.Contratos.LogicaJuego;
using UNOServerTest.JuegoUNOServicioTest;

namespace UNOServerTest.Servicio_de_Sala
{
    [TestClass]
    public class SalaTest
    {
        private static ServiceHost serviceHost;
        private static InstanceContext instanceContext;
        private static SalaCallbackAdmin salaAdmin;
        private static AdministrarJuegoClient salaCliente;

        //Use TestCleanup para ejecutar el código una vez ejecutadas todas las pruebas
        [ClassCleanup]
        public static void CleanupClass()
        {
            serviceHost.Close();
        }

        [TestMethod]
        public void CrearNuevaSala_InformaciónCorrecta()
        {
            try
            {
                Uri baseAddress = new Uri("net.tcp://localhost:8090/UNO.Contratos");
                serviceHost = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio), baseAddress);
                Binding binding = new NetTcpBinding();
                EndpointAddress endpointAddress = new EndpointAddress("net.tcp://localhost:8090/UNOServerTest");
                var endpoint = serviceHost.AddServiceEndpoint(typeof(UNO.Contratos.LogicaJuego.IAdministrarJuego), binding, endpointAddress.Uri);
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior
                {
                    HttpGetEnabled = false
                };
                serviceHost.Description.Behaviors.Add(smb);

                salaAdmin = new SalaCallbackAdmin();
                instanceContext = new InstanceContext(salaAdmin);
                salaCliente = new AdministrarJuegoClient(instanceContext);
                endpoint.Name = salaCliente.Endpoint.Name;

                serviceHost.Open();

                Jugador creadorSala = new Jugador
                {
                    Nickname = "angelJuarez"
                };

                Sala salaEsperada = new Sala
                {
                    Contraseña = "123456",
                    NumeroTotalDeJugadores = 3,
                    CreadaPor = creadorSala.Nickname
                };

                salaCliente.CrearSala(salaEsperada,creadorSala);

                Sala salaObtenida = salaAdmin.SalaCreada;

                Assert.IsTrue(
                    salaObtenida.Contraseña == salaEsperada.Contraseña &&
                    salaObtenida.NumeroTotalDeJugadores == salaEsperada.NumeroTotalDeJugadores &&
                    salaObtenida.CreadaPor == salaEsperada.CreadaPor
                    
                    );
            }
            catch (EndpointNotFoundException)
            {

            }
        }

        [TestMethod]
        public void UnionASala_ExisteSala_InformaciónCorrecta()
        {
            try
            {
                Uri baseAddress = new Uri("net.tcp://localhost:8090/UNO.Contratos");
                serviceHost = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio), baseAddress);
                Binding binding = new NetTcpBinding();
                EndpointAddress endpointAddress = new EndpointAddress("net.tcp://localhost:8090/UNOServerTest");
                var endpoint = serviceHost.AddServiceEndpoint(typeof(UNO.Contratos.LogicaJuego.IAdministrarJuego), binding, endpointAddress.Uri);
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior
                {
                    HttpGetEnabled = false
                };
                serviceHost.Description.Behaviors.Add(smb);

                salaAdmin = new SalaCallbackAdmin();
                instanceContext = new InstanceContext(salaAdmin);
                salaCliente = new AdministrarJuegoClient(instanceContext);
                endpoint.Name = salaCliente.Endpoint.Name;

                serviceHost.Open();

                Jugador nuevoJugador = new Jugador
                {
                    Nickname = "angelJuarez"
                };

                Sala salaAUnirse = new Sala
                {
                    Id = "774809",
                    Contraseña = "123456",
                    NumeroTotalDeJugadores = 3
                };

                salaCliente.UnirseASala(salaAUnirse, nuevoJugador);

                ResultadoUnionSala resultadoUnionObtenido = salaAdmin.ResultadoUnion;
                ResultadoUnionSala resultadoUnionEsperado = ResultadoUnionSala.UnionExitosa;

                Assert.IsTrue(resultadoUnionObtenido == resultadoUnionEsperado);
            }
            catch (EndpointNotFoundException)
            {

            }
        }

        [TestMethod]
        public void SalirDeSala_SalidaExitosa()
        {
            try
            {
                Uri baseAddress = new Uri("net.tcp://localhost:8090/UNO.Contratos");
                serviceHost = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio), baseAddress);
                Binding binding = new NetTcpBinding();
                EndpointAddress endpointAddress = new EndpointAddress("net.tcp://localhost:8090/UNOServerTest");
                var endpoint = serviceHost.AddServiceEndpoint(typeof(UNO.Contratos.LogicaJuego.IAdministrarJuego), binding, endpointAddress.Uri);
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior
                {
                    HttpGetEnabled = false
                };
                serviceHost.Description.Behaviors.Add(smb);

                salaAdmin = new SalaCallbackAdmin();
                instanceContext = new InstanceContext(salaAdmin);
                salaCliente = new AdministrarJuegoClient(instanceContext);
                endpoint.Name = salaCliente.Endpoint.Name;

                serviceHost.Open();

                String idSala = "774809";
                String nicknameJugadorASacar = "angelJuarez";
                salaCliente.SalirDeSala(idSala, nicknameJugadorASacar);
                String jugadorSacadoObtenido = salaAdmin.JugadorSacado;

                Assert.IsTrue(jugadorSacadoObtenido.Equals(nicknameJugadorASacar));
            }
            catch (EndpointNotFoundException)
            {

            }
        }
    }
}
