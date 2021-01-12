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

            var jugadorBuscado = baseDeDatos.Jugador.Where(jugador => jugador.Nickname.Equals(nickname))
                .FirstOrDefault<Jugador>();

            if (AdministradorHash.CompararHash(contraseña, jugadorBuscado.Contraseña))
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
        /// Guarda un nuevo jugador en la base de datos
        /// </summary>
        /// <param name="nuevoJugador">Nuevo jugador a guardar</param>
        /// <exception cref="DbUpdateException"></exception>
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

        /// <summary>
        /// Obtiene un Jugador.
        /// </summary>
        /// <param name="nickname">Nickname del jugador a obtener</param>
        /// <returns>Jugador buscado</returns>
        public Dominio.Jugador ObtenerJugador(string nickname)
        {
            Dominio.Jugador jugador = null;

            var jugadorBuscado = baseDeDatos.Jugador.Find(nickname);

            if (jugadorBuscado != null)
            {
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
            }
            
            return jugador;
        }

        /// <summary>
        /// Actualiza las estadísticas en el juego de un jugador.
        /// </summary>
        /// <param name="jugador">Jugador a actualizar estadísticas</param>
        /// <exception cref="DbUpdateException"></exception>
        public void ActualizarEstadisticasDeJugador(Dominio.Jugador jugador)
        {
            Jugador jugadorBuscado = baseDeDatos.Jugador.Find(jugador.Nickname);

            jugadorBuscado.PuntajeTotal = jugador.PuntajeTotal;
            jugadorBuscado.PartidasJugadas += 1;
            jugadorBuscado.PartidasGanadas += 1;

            int experienciaCalculada = 75 + jugador.PuntajeTotal;
            
            jugadorBuscado.Experiencia += experienciaCalculada;

            int nivelCalculado = CalcularNuevoNivel((int)jugadorBuscado.Experiencia);
            jugadorBuscado.Nivel = nivelCalculado;

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
        /// Actualiza las estadisticas de un jugador en la base de datos
        /// </summary>
        /// <param name="jugador">Jugador a actualizar</param>
        /// <exception cref="DbUpdateException"></exception>
        public void ActualizarPartidasJugadas(Dominio.Jugador jugador)
        {
            Jugador jugadorBuscado = baseDeDatos.Jugador.Find(jugador.Nickname);

            jugadorBuscado.PartidasJugadas++;
            int experienciaCalculada = 40 + jugador.PuntajeTotal;
            jugadorBuscado.Experiencia += experienciaCalculada;

            int nivelCalculado = CalcularNuevoNivel((int)jugadorBuscado.Experiencia);
            jugadorBuscado.Nivel = nivelCalculado;

            try
            {
                baseDeDatos.SaveChanges();
            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException("Error al agregar nuevo jugador");
            }
        }

        private int CalcularNuevoNivel(int experiencia)
        {
            int nivelCalculado = experiencia / 100;

            if (nivelCalculado == 0)
            {
                nivelCalculado = 1;
            }

            return nivelCalculado;
        }
    }
}
