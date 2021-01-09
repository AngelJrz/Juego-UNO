using System;
using System.ServiceModel;

namespace UNO.Servicio
{
    public static class Program
    {
        public static void Main(string[] args)
        {
            using (ServiceHost host = new ServiceHost(typeof(UNO.Contratos.JuegoUNOServicio)))
            {
                host.Open();
                Console.WriteLine("Server is running");
                Console.ReadLine();

                if (host.State == CommunicationState.Opened)
                {
                    host.Close();
                }
            }
        }
    }
}
