namespace UNO.Contratos.AdministrarJugador
{
    /// <summary>
    /// Posibles resultados que tiene un registro hecho
    /// </summary>
    public enum ResultadoRegistro
    {
        /// <summary>
        /// El registro concluyo exitosamente
        /// </summary>
        RegistroExitoso = 1,
        /// <summary>
        /// Ocurrio un error durante el registro
        /// </summary>
        ErrorRegistro = 2,
        /// <summary>
        /// El usuario que se intenta registrar ya existe
        /// </summary>
        UsuarioYaExiste = 3,
        /// <summary>
        /// El correo ingresado ya cuenta con un registro en el juego
        /// </summary>
        CorreoYaExiste = 4
    }
}
