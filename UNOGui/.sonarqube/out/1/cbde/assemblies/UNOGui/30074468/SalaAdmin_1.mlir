func @_UNOGui.Logica.SalaAdmin.UnirseASala$UNOGui.JuegoUNOServicio.Sala.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :19 :8) {
^entry (%_salaBuscada : none, %_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :19 :39)
cbde.store %_salaBuscada, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :19 :39)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :19 :57)
cbde.store %_jugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :19 :57)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :21 :12) // Not a variable of known type: servidor
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :21 :33) // Not a variable of known type: salaBuscada
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :21 :46) // Not a variable of known type: jugador
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :21 :12) // servidor.UnirseASala(salaBuscada, jugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.SalaAdmin.CrearSala$UNOGui.JuegoUNOServicio.Sala.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :29 :8) {
^entry (%_nuevaSala : none, %_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :29 :37)
cbde.store %_nuevaSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :29 :37)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :29 :53)
cbde.store %_jugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :29 :53)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :31 :12) // Not a variable of known type: servidor
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :31 :31) // Not a variable of known type: nuevaSala
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :31 :42) // Not a variable of known type: jugador
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaAdmin.cs" :31 :12) // servidor.CrearSala(nuevaSala, jugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function SalirDeSala(none, none), it contains poisonous unsupported syntaxes

