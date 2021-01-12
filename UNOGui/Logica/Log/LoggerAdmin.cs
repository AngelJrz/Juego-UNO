using System;

namespace UNOGui.Logica.Log
{
    public static class LoggerAdmin
    {
        private static readonly log4net.ILog log =
        log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Logica para realizar el log de un error.
        /// </summary>
        /// <param name="message">Mensaje a mostrar</param>
        /// <param name="ex">Excepción a loggear</param>
        public static void EscribirLog(string message, Exception ex)
        {
            log.Error(message, ex);
        }
    }
}
