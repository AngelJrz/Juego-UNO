using System;
using System.Collections.Generic;
using UNO.Contratos.LogicaJuego;
using UNOServerTest.JuegoUNOServicioTest;

namespace UNOServerTest.Servicio_de_Sala
{
    public class SalaCallbackAdmin : JuegoUNOServicioTest.IAdministrarJuegoCallback
    {
        public Sala SalaCreada { get; set; }
        public ResultadoUnionSala ResultadoUnion { get; set; }

        public String JugadorSacado { get; set; }

        public void ActualizarCartaCentral(Carta cartaCentral)
        {
            
        }

        public void ActualizarNumeroDeCartas(string nickname, string numeroDeCartas)
        {
            
        }

        public void ActualizarPuntajeDeJugador(string nickname, int puntajeASumar)
        {
            
        }

        public void ActualizarSala(string[] jugadores)
        {
            
        }

        public void AgregarNuevoJugador(Jugador nuevoJugador)
        {
            
        }

        public void CambiarTurno(string nuevoTurno)
        {
            
        }

        public void EliminarCreador()
        {
            
        }

        public void NotificarCreacionDeSala(Sala salaCreada)
        {
            this.SalaCreada = salaCreada;
        }

        public void NotificarEliminacionDeSala()
        {
            
        }

        public void NotificarFaltaDeJugadores()
        {
            
        }

        public void NotificarGanador(string jugadorGanador)
        {
            
        }

        public void NotificarInicioPartida(Sala sala)
        {
            
        }

        public void NotificarSalidaDeSala()
        {
            
        }

        public void NotificarUnionASala(ResultadoUnionSala resultado)
        {
            this.ResultadoUnion = resultado;
        }

        public void ObtenerCuatroCartas(Carta[] nuevasCartas)
        {
            
        }

        public void ObtenerDosCartas(Carta[] nuevasCartas)
        {
            
        }

        public void ObtenerInformacionDeSala(Sala sala)
        {
            
        }

        public void ObtenerMazo(Carta[] mazoDeJugador)
        {
            
        }

        public void ObtenerTurnoActual(string turnoActual)
        {
            
        }

        public void RecibirCarta(Carta cartaTomada)
        {
            
        }

        public void SacarJugador(Jugador jugadorASacar)
        {
            this.JugadorSacado = jugadorASacar.Nickname;
        }
    }
}
