using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;

namespace UNO.AccesoADatos.AdministrarDatos
{
    /// <summary>
    /// Lógica para la administración de datos de un Jugador.
    /// </summary>
    public class AdminDatosJugador
    {
        private readonly JuegoUNOContext baseDeDatos;

        /// <summary>
        /// Constructor de la clase AdminDatosJugador.
        /// </summary>
        public AdminDatosJugador()
        {
            baseDeDatos = new JuegoUNOContext();
        }

        /// <summary>
        /// Verifica si existe el Nickname del Jugador.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador.</param>
        /// <returns>
        /// true si encuentra existe el Nickname, false si no existe.
        /// </returns>
        public bool ExisteNickname(string nickname)
        {
            bool existe = false;

            existe = baseDeDatos.Jugador.Any(jugador => jugador.Nickname.Equals(nickname));

            return existe;
        }

        /// <summary>
        /// Verifica si la contraseña del Jugador es correcta.
        /// </summary>
        /// <param name="nickname">Nickname del Jugador a buscar.</param>
        /// <param name="contraseña">Contraseña del Jugador.</param>
        /// <returns>
        /// true si la contraseña es correcta, false si no lo es.
        /// </returns>
        public bool EsContraseñaCorrecta(string nickname, string contraseña)
        {
            bool esCorrecta = false;
            string contraseñaConHash = AdministradorHash.GenerarHash(contraseña);

            var jugadorBuscado = baseDeDatos.Jugador.Where(jugador => jugador.Nickname.Equals(nickname))
                .FirstOrDefault<Jugador>();

            if (AdministradorHash.CompararHash(jugadorBuscado.Contraseña, contraseñaConHash))
            {
                esCorrecta = true;
            }

            return esCorrecta;
        }

        /// <summary>
        /// Verifica si existe el correo electrónico del Jugador.
        /// </summary>
        /// <param name="correoElectronico">Correo electrónico del Jugador.</param>
        /// <returns>true si existe el correo, falso si no existe.</returns>
        public bool ExisteCorreoElectronico(string correoElectronico)
        {
            bool existe = false;

            existe = baseDeDatos.Jugador.Any(jugador => jugador.CorreoElectronico.Equals(correoElectronico));

            return existe;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="nuevoJugador"></param>
        public void GuardarJugador(Dominio.Jugador nuevoJugador)
        {
            Jugador entidadJugador = new Jugador
            {
                Nickname = nuevoJugador.Nickname,
                CorreoElectronico = nuevoJugador.CorreoElectronico,
                Contraseña = AdministradorHash.GenerarHash(nuevoJugador.Contraseña),
                Nivel = 1,
                Experiencia = 0,
                PartidasGanadas = 0,
                PartidasJugadas = 0,
                PuntajeTotal = 0
            };

            baseDeDatos.Jugador.Add(entidadJugador);

            try
            {
                baseDeDatos.SaveChanges();
            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException("Error al agregar nuevo jugador");
            }
            
        }

        /// <summary>
        /// Obtiene los mejores 5 Jugadores del juego, de acuerdo con su puntaje total.
        /// </summary>
        /// <returns>Una lista de los jugadores</returns>
        public List<Dominio.Jugador> ObtenerMejoresJugadores()
        {
            List<Dominio.Jugador> mejoresJugadores = new List<Dominio.Jugador>();

            var jugadoresConsultados = baseDeDatos.Jugador
                .AsNoTracking()
                .OrderByDescending(jugador => jugador.PuntajeTotal).Take(5);

            foreach (var jugador in jugadoresConsultados)
            {
                mejoresJugadores.Add(
                    new Dominio.Jugador 
                    { 
                        Nickname = jugador.Nickname,
                        PuntajeTotal = (int)jugador.PuntajeTotal,
                        Nivel = jugador.Nivel
                    }
                );
            }

            return mejoresJugadores;
        }

        public Dominio.Jugador ObtenerJugador(string nickname)
        {
            Dominio.Jugador jugador;

            var jugadorBuscado = baseDeDatos.Jugador.Find(nickname);

            jugador = new Dominio.Jugador
            {
                Nickname = nickname,
                CorreoElectronico = jugadorBuscado.CorreoElectronico,
                PuntajeTotal = (int)jugadorBuscado.PuntajeTotal,
                Nivel = jugadorBuscado.Nivel,
                Experiencia = (int)jugadorBuscado.Experiencia,
                PartidasGanadas = (int)jugadorBuscado.PartidasGanadas,
                PartidasJugadas = (int)jugadorBuscado.PartidasJugadas
            };

            return jugador;
        }
    }
}
