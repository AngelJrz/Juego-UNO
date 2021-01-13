func @_UNOGui.Logica.JuegoCallbackAdmin.NotificarInicioPartida$UNOGui.JuegoUNOServicio.Sala$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :18 :8) {
^entry (%_sala : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :18 :43)
cbde.store %_sala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :18 :43)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :20 :33) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :20 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :20 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :20 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :21 :12) // Not a variable of known type: ventanaJuego
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :21 :12) // ventanaJuego.Height (SimpleMemberAccessExpression)
%8 = constant 550 : i32 loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :21 :34)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :22 :12) // Not a variable of known type: ventanaJuego
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :22 :12) // ventanaJuego.Width (SimpleMemberAccessExpression)
%11 = constant 800 : i32 loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :22 :33)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :24 :64) // Not a variable of known type: sala
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :24 :64) // sala.Id (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :24 :44) // new Paginas.Partida(sala.Id) (ObjectCreationExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :25 :12) // Not a variable of known type: paginaPartida
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :25 :51) // Not a variable of known type: sala
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :25 :51) // sala.CreadaPor (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :25 :12) // paginaPartida.EstablecerJugadorEnTurno(sala.CreadaPor) (InvocationExpression)
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :26 :12) // Not a variable of known type: paginaPartida
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :26 :43) // Not a variable of known type: sala
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :26 :12) // paginaPartida.PintarJungadores(sala) (InvocationExpression)
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :27 :12) // Not a variable of known type: ventanaJuego
%24 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :27 :12) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :27 :40) // Not a variable of known type: paginaPartida
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :28 :12) // Not a variable of known type: ventanaJuego
%27 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :28 :12) // ventanaJuego.frameNavegacion (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :28 :50) // Not a variable of known type: paginaPartida
%29 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :28 :12) // ventanaJuego.frameNavegacion.Navigate(paginaPartida) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.ObtenerMazo$System.Collections.Generic.List$UNOGui.JuegoUNOServicio.Carta$$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :35 :8) {
^entry (%_mazoJugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :35 :32)
cbde.store %_mazoJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :35 :32)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :37 :33) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :37 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :37 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :37 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :38 :45) // Not a variable of known type: ventanaJuego
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :38 :45) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :38 :45) // ventanaJuego.PaginaActual as Paginas.Partida (AsExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :40 :12) // Not a variable of known type: ventanaPartida
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :40 :42) // Not a variable of known type: mazoJugador
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :40 :12) // ventanaPartida.EntregarCartas(mazoJugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.ActualizarCartaCentral$UNOGui.JuegoUNOServicio.Carta$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :47 :8) {
^entry (%_cartaCentral : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :47 :43)
cbde.store %_cartaCentral, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :47 :43)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :49 :33) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :49 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :49 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :49 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :50 :45) // Not a variable of known type: ventanaJuego
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :50 :45) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :50 :45) // ventanaJuego.PaginaActual as Paginas.Partida (AsExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :52 :12) // Not a variable of known type: ventanaPartida
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :52 :50) // Not a variable of known type: cartaCentral
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :52 :12) // ventanaPartida.ActualizarCartaCentral(cartaCentral) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.RecibirCarta$UNOGui.JuegoUNOServicio.Carta$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :59 :8) {
^entry (%_cartaTomada : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :59 :33)
cbde.store %_cartaTomada, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :59 :33)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :61 :33) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :61 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :61 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :61 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :62 :45) // Not a variable of known type: ventanaJuego
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :62 :45) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :62 :45) // ventanaJuego.PaginaActual as Paginas.Partida (AsExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :64 :12) // Not a variable of known type: ventanaPartida
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :64 :40) // Not a variable of known type: cartaTomada
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :64 :12) // ventanaPartida.AniadirCarta(cartaTomada) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.NotificarGanador$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :71 :8) {
^entry (%_jugadorGanador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :71 :37)
cbde.store %_jugadorGanador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :71 :37)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :73 :33) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :73 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :73 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :73 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :74 :45) // Not a variable of known type: ventanaJuego
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :74 :45) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :74 :45) // ventanaJuego.PaginaActual as Paginas.Partida (AsExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :76 :12) // Not a variable of known type: ventanaPartida
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :76 :49) // Not a variable of known type: jugadorGanador
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :76 :12) // ventanaPartida.MostrarMensajeGanador(jugadorGanador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.CambiarTurno$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :83 :8) {
^entry (%_nuevoTurno : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :83 :33)
cbde.store %_nuevoTurno, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :83 :33)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :85 :33) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :85 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :85 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :85 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :86 :45) // Not a variable of known type: ventanaJuego
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :86 :45) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :86 :45) // ventanaJuego.PaginaActual as Paginas.Partida (AsExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :88 :12) // Not a variable of known type: ventanaPartida
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :88 :52) // Not a variable of known type: nuevoTurno
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :88 :12) // ventanaPartida.EstablecerJugadorEnTurno(nuevoTurno) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.ActualizarNumeroDeCartas$string.string$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :96 :8) {
^entry (%_nickname : none, %_numeroDeCartas : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :96 :45)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :96 :45)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :96 :62)
cbde.store %_numeroDeCartas, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :96 :62)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :98 :33) // Application.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :98 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :98 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :98 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :99 :45) // Not a variable of known type: ventanaJuego
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :99 :45) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :99 :45) // ventanaJuego.PaginaActual as Paginas.Partida (AsExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :101 :12) // Not a variable of known type: ventanaPartida
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :101 :50) // Not a variable of known type: nickname
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :101 :60) // Not a variable of known type: numeroDeCartas
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :101 :12) // ventanaPartida.ActualizarNumeroCartas(nickname, numeroDeCartas) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.ActualizarPuntajeDeJugador$string.int$(none, i32) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :109 :8) {
^entry (%_nickname : none, %_puntajeASumar : i32):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :109 :47)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :109 :47)
%1 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :109 :64)
cbde.store %_puntajeASumar, %1 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :109 :64)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :111 :33) // Application.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :111 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :111 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :111 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :112 :45) // Not a variable of known type: ventanaJuego
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :112 :45) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :112 :45) // ventanaJuego.PaginaActual as Paginas.Partida (AsExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :114 :12) // Not a variable of known type: ventanaPartida
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :114 :54) // Not a variable of known type: nickname
%13 = cbde.load %1 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :114 :64)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :114 :12) // ventanaPartida.ActualizarPuntajeDeJugador(nickname, puntajeASumar) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.ObtenerCuatroCartas$System.Collections.Generic.List$UNOGui.JuegoUNOServicio.Carta$$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :121 :8) {
^entry (%_nuevasCartas : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :121 :40)
cbde.store %_nuevasCartas, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :121 :40)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AñadirCartasAJugador
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :123 :33) // Not a variable of known type: nuevasCartas
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :123 :12) // AñadirCartasAJugador(nuevasCartas) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.ObtenerDosCartas$System.Collections.Generic.List$UNOGui.JuegoUNOServicio.Carta$$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :130 :8) {
^entry (%_nuevasCartas : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :130 :37)
cbde.store %_nuevasCartas, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :130 :37)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AñadirCartasAJugador
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :132 :33) // Not a variable of known type: nuevasCartas
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :132 :12) // AñadirCartasAJugador(nuevasCartas) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function AñadirCartasAJugador(none), it contains poisonous unsupported syntaxes

func @_UNOGui.Logica.JuegoCallbackAdmin.ObtenerTurnoActual$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :150 :8) {
^entry (%_turnoActual : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :150 :39)
cbde.store %_turnoActual, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :150 :39)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :152 :33) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :152 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :152 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :152 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :153 :45) // Not a variable of known type: ventanaJuego
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :153 :45) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :153 :45) // ventanaJuego.PaginaActual as Paginas.Partida (AsExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :155 :12) // Not a variable of known type: ventanaPartida
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :155 :52) // Not a variable of known type: turnoActual
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :155 :12) // ventanaPartida.EstablecerJugadorEnTurno(turnoActual) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
