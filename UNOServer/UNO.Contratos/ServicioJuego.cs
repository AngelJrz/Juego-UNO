using System;
using System.ServiceModel;
using UNO.Contratos.LogicaJuego;

namespace UNO.Contratos
{
    //[ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, ConcurrencyMode = ConcurrencyMode.Multiple)]
    //public partial class JuegoUNOServicio : IAdministrarJuego
    //{
    //    public void SalirDeSala(string idSala, string nickname)
    //    {
    //        var salaActual = salasCreadas.Find(sala => sala.Id.Equals(idSala));

    //        if (salaActual != null)
    //        {
    //            IJuegoCallback callbackActual = JuegoCallbackActual;
    //            Console.WriteLine($"Callback actual: {callbackActual.ToString()}");
    //            //salaActual.JugadoresEnSala.TryGetValue(callbackActual, out Dominio.Jugador jugadorASacar);

    //            foreach (var jugador in salaActual.JugadoresEnSala)
    //            {
    //                Console.WriteLine($"Callback jugador buscando: {jugador.Value.ToString()}");
    //                if (jugador.Key.Nickname.Equals(nickname))
    //                {
    //                    if (EsCreadorDeLaSala(salaActual, jugador.Key))
    //                    {
    //                        callbackActual.EliminarCreador();
    //                        salaActual.JugadoresEnSala.Remove(jugador.Key);
    //                        EliminarSala(salaActual);
    //                    }
    //                    else
    //                    {
    //                        callbackActual.NotificarSalidaDeSala();
    //                        salaActual.JugadoresEnSala.Remove(jugador.Key);
    //                        NotificarJugadorEliminado(salaActual, jugador.Key);
    //                    }
    //                    break;
    //                }
    //            }

    //            //if (EsCreadorDeLaSala(salaActual, jugadorASacar))
    //            //{
    //            //    callbackActual.EliminarCreador();
    //            //    salaActual.JugadoresEnSala.Remove(callbackActual);
    //            //    EliminarSala(salaActual);
    //            //}
    //            //else
    //            //{
    //            //    callbackActual.NotificarSalidaDeSala();
    //            //    salaActual.JugadoresEnSala.Remove(callbackActual);
    //            //    NotificarJugadorEliminado(salaActual, jugadorASacar);
    //            //}
    //        }
    //    }

    //    private void NotificarJugadorEliminado(Sala salaActual, Dominio.Jugador jugadorASacar)
    //    {
    //        foreach (var jugador in salaActual.JugadoresEnSala)
    //        {
    //            jugador.Value.SacarJugador(jugadorASacar);
    //        }
    //    }

    //    private void EliminarSala(Sala salaActual)
    //    {
    //        if (salaActual.JugadoresEnSala.Count > 0)
    //        {
    //            foreach (var jugador in salaActual.JugadoresEnSala)
    //            {
    //                jugador.Value.NotificarEliminacionDeSala();
    //            }

    //            salaActual.JugadoresEnSala.Clear();
    //        }

    //        salasCreadas.Remove(salaActual);
    //    }

    //    private bool EsCreadorDeLaSala(Sala sala, Dominio.Jugador jugador)
    //    {
    //        bool esCreador = false;

    //        if (sala.CreadaPor.Equals(jugador.Nickname))
    //        {
    //            esCreador = true;
    //        }

    //        return esCreador;
    //    }

    //    private IJuegoCallback JuegoCallbackActual
    //    {
    //        get
    //        {
    //            return OperationContext.Current.GetCallbackChannel<IJuegoCallback>();
    //        }
    //    }
    //}
    
}
