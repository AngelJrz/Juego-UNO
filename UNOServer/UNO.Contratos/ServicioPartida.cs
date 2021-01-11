﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNO.Contratos.LogicaJuego;
using UNO.Dominio;

namespace UNO.Contratos
{
    public partial class JuegoUNOServicio
    { 
        private List<Carta> mazoSala = CrearMazo();

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
            Carta cartaMulticolor = new Carta(ColoresCartas.Negro, EfectosCarta.MultiColor);
            Carta cartaMulticolor2 = new Carta(ColoresCartas.Negro, EfectosCarta.MultiColor);
            Carta cartaTomaCuatro = new Carta(ColoresCartas.Negro, EfectosCarta.TomaCuatro);
            Carta cartaTomaCuatro2 = new Carta(ColoresCartas.Negro, EfectosCarta.TomaCuatro);

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

        public void ColocarCartaCentral(Carta cartaCentral, String idSalaJugador)
        {
            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(idSalaJugador));

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                jugador.Value.ActualizarCartaCentral(cartaCentral);
            }

            CambiarTurno(salaBuscada);
        }

        private void CambiarTurno(Sala sala)
        {
            String nuevoTurno = sala.PartidaDeSala.CambiarTurno();

            foreach (var jugador in sala.JugadoresEnSala)
            {
                jugador.Value.CambiarTurno(nuevoTurno);
            }
        }

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

        public void AnunciarGanador(String idSalaJugador)
        {
            Jugador ganador = new Jugador();
            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(idSalaJugador));

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                if (jugador.Value == JuegoCallbackActual)
                {
                    ganador = jugador.Key;
                }
            }

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                jugador.Value.NotificarGanador(ganador.Nickname);
            }
        }

        public void ActualizarNumeroDeCarta(String idSalaJugador, String nickname, String numeroDeCartas)
        {
            var salaBuscada = salasCreadas.Find(sala => sala.Id.Equals(idSalaJugador));

            foreach (var jugador in salaBuscada.JugadoresEnSala)
            {
                jugador.Value.ActualizarNumeroDeCartas(nickname,numeroDeCartas);
            }
        }
    }
}
