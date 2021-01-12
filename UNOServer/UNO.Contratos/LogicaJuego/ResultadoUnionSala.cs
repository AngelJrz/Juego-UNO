
namespace UNO.Contratos.LogicaJuego
{
    /// <summary>
    /// Posibles resultados al intentar unirse a una sala
    /// </summary>
    public enum ResultadoUnionSala
    {
        /// <summary>
        /// La sala buscada no existe
        /// </summary>
        NoExisteId = 1,
        /// <summary>
        /// La contraseña para ingresar a la sala es incorrecta
        /// </summary>
        ContraseñaIncorrecta = 2,
        /// <summary>
        /// La sala a la que se intenta unir no tiene cupo
        /// </summary>
        NoHayCupo = 3,
        /// <summary>
        /// El jugador se pudo unir a la sala exitosamente
        /// </summary>
        UnionExitosa = 4,
        /// <summary>
        /// La sala a la que se esta intentando unir se encuentra con una partida en curso
        /// </summary>
        EnJuego = 5
    }
}
