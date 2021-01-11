using System;
using System.Collections.Generic;
using System.Linq;
using UNO.Contratos.LogicaJuego;
using UNO.Dominio;

namespace UNO.Contratos
{
    public partial class JuegoUNOServicio
    { 
        private readonly List<Carta> mazoSala = CrearMazo();

        /// <summary>
        /// Lógica para iniciar la partida en una sala.
        /// </summary>
        /// <param name="idSala">Id de la sala donde se inicia la partida</param>
        public void IniciarPartida(string idSala)
        {
            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(idSala));
            PonerSalaEnJuego(idSala);

            salaBuscada.PartidaDeSala = new Partida()
            {
                JugadoresEnPartida = salaBuscada.JugadoresEnSala.Keys.ToList()
            };

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                jugador.Value.NotificarInicioPartida(salaBuscada);
            }

            RepartirCartas(salaBuscada);
            ColocarCartaCentral(TomaCarta(), salaBuscada.Id);
            CambiarTurno(salaBuscada);
        }

        private void PonerSalaEnJuego(string idSala)
        {
            salasCreadas.Where(sala => sala.Id.Equals(idSala)).FirstOrDefault().EnJuego = true;
        }

        private static List<Carta> CrearMazo()
        {
            List<Carta> mazocompleto = new List<Carta>();
            mazocompleto.AddRange(CrearCartasDeColor(ColoresCartas.Rojo));
            mazocompleto.AddRange(CrearCartasDeColor(ColoresCartas.Amarillo));
            mazocompleto.AddRange(CrearCartasDeColor(ColoresCartas.Azul));
            mazocompleto.AddRange(CrearCartasDeColor(ColoresCartas.Verde));
            mazocompleto.AddRange(CrearCartasEspeciales());

            return mazocompleto;

        }

        private static List<Carta> CrearCartasDeColor(ColoresCartas colorMazo)
        {
            List<Carta> cartasDelMazo = new List<Carta>();
            int NUMERO_MINIMO_CARTA = 1;
            int NUMERO_MAXIMO_CARTA = 9;

            for (int i = NUMERO_MINIMO_CARTA; i <= NUMERO_MAXIMO_CARTA; i++)
            {
                Carta cartaNueva = new Carta(colorMazo, i);
                cartasDelMazo.Add(cartaNueva);
            }

            Carta cartaCancelar = new Carta(colorMazo, EfectosCarta.Cancelar);
            Carta cartaReversa = new Carta(colorMazo, EfectosCarta.Reversa);
            Carta cartaTomaDos = new Carta(colorMazo, EfectosCarta.TomaDos);

            cartasDelMazo.Add(cartaCancelar);
            cartasDelMazo.Add(cartaReversa);
            cartasDelMazo.Add(cartaTomaDos);

            return cartasDelMazo;
        }

        private static List<Carta> CrearCartasEspeciales()
        {
            List<Carta> cartasEspeciales = new List<Carta>();
            Carta cartaMulticolor = new Carta(ColoresCartas.Negro, EfectosCarta.MultiColor) { Numero = 10 };
            Carta cartaMulticolor2 = new Carta(ColoresCartas.Negro, EfectosCarta.MultiColor) { Numero = 10 };
            Carta cartaTomaCuatro = new Carta(ColoresCartas.Negro, EfectosCarta.TomaCuatro) { Numero = 10 };
            Carta cartaTomaCuatro2 = new Carta(ColoresCartas.Negro, EfectosCarta.TomaCuatro) { Numero = 10 };

            cartasEspeciales.Add(cartaMulticolor);
            cartasEspeciales.Add(cartaMulticolor2);
            cartasEspeciales.Add(cartaTomaCuatro);
            cartasEspeciales.Add(cartaTomaCuatro2);

            return cartasEspeciales;
        }

        private void RepartirCartas(Sala sala)
        {
            foreach (var jugador in sala.JugadoresEnSala)
            {
                jugador.Value.ObtenerMazo(CrearMano());
            }
        }

        private List<Carta> CrearMano()
        {
            int MAXIMO_DE_CARTAS = 7;
            int MINIMO_DE_CARTAS = 1;
            int posicionDeCartaEnMazo;
            Random number = new Random();
            List<Carta> miMano = new List<Carta>();

            for (int i = MINIMO_DE_CARTAS; i <= MAXIMO_DE_CARTAS; i++)
            {
                posicionDeCartaEnMazo = number.Next(0, mazoSala.Count - 1);
                miMano.Add(mazoSala.ElementAt(posicionDeCartaEnMazo));
                mazoSala.RemoveAt(posicionDeCartaEnMazo);
            }

            return miMano;

        }

        private Carta TomaCarta()
        {
            Carta cartaTomada;
            Random number = new Random();
            int posicionAleatoria = number.Next(0, mazoSala.Count - 1);

            cartaTomada = mazoSala.ElementAt(posicionAleatoria);

            return cartaTomada;
        }

        /// <summary>
        /// Lógica para colocar la nueva carta central.
        /// </summary>
        /// <param name="cartaCentral">Nueva carta central</param>
        /// <param name="idSalaJugador">Id de la sala a colocar la carta</param>
        public void ColocarCartaCentral(Carta cartaCentral, String idSalaJugador)
        {
            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(idSalaJugador));           

            if (cartaCentral.Efecto == EfectosCarta.Cancelar)
            {
                salaBuscada.PartidaDeSala.CancelarSiguienteJugador();
                string turnoActual = salaBuscada.PartidaDeSala.ObtenerJugadorEnTurno();

                NotificarJugadorCancelado(salaBuscada, turnoActual);
            }
            else
            {
                if (cartaCentral.Efecto == EfectosCarta.Reversa)
                {
                    CambiarSentidoPartida(salaBuscada);
                }
                else
                {
                    string nicknameSiguienteJugador = salaBuscada.PartidaDeSala.ObtenerSiguienteJugador();

                    if (cartaCentral.Efecto == EfectosCarta.TomaDos)
                    {
                        AgregarDosCartas(salaBuscada, nicknameSiguienteJugador);
                    }
                    else if (cartaCentral.Efecto == EfectosCarta.TomaCuatro)
                    {
                        AgregarCuatroCartas(salaBuscada, nicknameSiguienteJugador);
                    }
                }

                CambiarTurno(salaBuscada);
            }

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                jugador.Value.ActualizarCartaCentral(cartaCentral);
            }  
        }

        private void NotificarJugadorCancelado(Sala sala, string turnoActual)
        {
            foreach (var jugador in sala.JugadoresEnSala)
            {
                jugador.Value.ObtenerTurnoActual(turnoActual);
            }
        }

        private void AgregarCuatroCartas(Sala salaBuscada, string nicknameJugador)
        {
            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                if (jugador.Key.Nickname.Equals(nicknameJugador))
                {
                    jugador.Value.ObtenerCuatroCartas(TomarCuatroCartasDelMazo());
                    break;
                }
            }
        }

        private List<Carta> TomarDosCartasDelMazo()
        {
            List<Carta> cartasTomadas = new List<Carta>();
            Random number = new Random();
            int posicionAleatoriaCarta1 = number.Next(0, mazoSala.Count - 1);
            int posicionAleatoriaCarta2 = number.Next(0, mazoSala.Count - 1);

            cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta1));
            cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta2));

            return cartasTomadas;
        }

        private List<Carta> TomarCuatroCartasDelMazo()
        {
            List<Carta> cartasTomadas = new List<Carta>();
            Random number = new Random();
            int posicionAleatoriaCarta1 = number.Next(0, mazoSala.Count - 1);
            int posicionAleatoriaCarta2 = number.Next(0, mazoSala.Count - 1);
            int posicionAleatoriaCarta3 = number.Next(0, mazoSala.Count - 1);
            int posicionAleatoriaCarta4 = number.Next(0, mazoSala.Count - 1);

            cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta1));
            cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta2));
            cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta3));
            cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta4));

            return cartasTomadas;
        }

        private void AgregarDosCartas(Sala salaBuscada, string nicknameJugador)
        {
            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                if (jugador.Key.Nickname.Equals(nicknameJugador))
                {
                    jugador.Value.ObtenerDosCartas(TomarDosCartasDelMazo());
                    break;
                }
            }
        }

        private void CambiarSentidoPartida(Sala salaBuscada)
        {
            salaBuscada.PartidaDeSala.SentidoJuego = "IZQUIERDA";
        }

        private void CambiarTurno(Sala sala)
        {
            String nuevoTurno = sala.PartidaDeSala.CambiarTurno();

            foreach (var jugador in sala.JugadoresEnSala)
            {
                jugador.Value.CambiarTurno(nuevoTurno);
            }
        }

        /// <summary>
        /// Lógica para tomar una carta del mazo.
        /// </summary>
        /// <param name="idSalaJugador">Id de la sala donde se tomará la carta</param>
        /// <param name="nickname">Nickname del jugador que tomará la carta</param>
        public void TomarCarta(String idSalaJugador, String nickname)
        {
            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(idSalaJugador));

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                if (jugador.Key.Nickname.Equals(nickname))
                {
                    jugador.Value.RecibirCarta(TomaCarta());
                    break;
                }
            }
        }

        /// <summary>
        /// Lógica para anunciar a los clientes el ganador.
        /// </summary>
        /// <param name="idSalaJugador">Id de la sala donde ganó el jugador</param>
        /// <param name="jugadorGanador">Jugador que ganó la partida</param>
        public void AnunciarGanador(String idSalaJugador, Jugador jugadorGanador)
        {
            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(idSalaJugador));

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                jugador.Value.NotificarGanador(jugadorGanador.Nickname);

                if (jugador.Key.Nickname.Equals(jugadorGanador.Nickname))
                {
                    ActualizarDatosJugadorGanador(jugadorGanador);
                }
                else
                {
                    ActualizarDatosJugador(jugador.Key);
                }
            }

            TerminarPartida(salaBuscada);
        }

        private void ActualizarDatosJugador(Jugador jugador)
        {
            administradorDatosJugador.ActualizarPartidasJugadas(jugador);
        }

        private void ActualizarDatosJugadorGanador(Jugador jugadorGanador)
        {
            administradorDatosJugador.ActualizarEstadisticasDeJugador(jugadorGanador);
        }

        /// <summary>
        /// Lógica para actualizar el número de cartas de un jugador.
        /// </summary>
        /// <param name="idSalaJugador">Id de sala donde se actualizará</param>
        /// <param name="nickname">Nickname del jugador que se actualizará su número de carta</param>
        /// <param name="numeroDeCartas">Número de cartas que se actualizará</param>
        public void ActualizarNumeroDeCarta(String idSalaJugador, String nickname, String numeroDeCartas)
        {
            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(idSalaJugador));

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                jugador.Value.ActualizarNumeroDeCartas(nickname, numeroDeCartas);
            }
        }

        /// <summary>
        /// Lógica pra actualizar el puntaje de un jugador en la sala.
        /// </summary>
        /// <param name="idSalaJugador">Id de sala donde se actualizará</param>
        /// <param name="nickname">Nickname del jugador que se actualizará su puntaje</param>
        /// <param name="puntajeASumar">Puntaje a sumar en el jugador</param>
        public void ActualizarPuntaje(String idSalaJugador, String nickname, int puntajeASumar)
        {
            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(idSalaJugador));

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                jugador.Value.ActualizarPuntajeDeJugador(nickname, puntajeASumar);
            }
        }

        private void TerminarPartida(Sala sala)
        {
            salasCreadas.Remove(sala);
        }
    }
}
