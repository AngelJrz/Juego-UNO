// Skipping function EsCartaValida(none, none), it contains poisonous unsupported syntaxes

func @_UNOGui.Logica.Reglas.ElJugadorGano$System.Collections.Generic.List$UNOGui.JuegoUNOServicio.Carta$$(none) -> i1 loc("D:\\Juego-UNO\\UNOGui\\Logica\\Reglas.cs" :45 :8) {
^entry (%_mazoJugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\Reglas.cs" :45 :41)
cbde.store %_mazoJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\Reglas.cs" :45 :41)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\Reglas.cs" :47 :19) // Not a variable of known type: mazoJugador
%2 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Logica\\Reglas.cs" :47 :19) // mazoJugador.Count (SimpleMemberAccessExpression)
%3 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOGui\\Logica\\Reglas.cs" :47 :40)
%4 = cmpi "eq", %2, %3 : i32 loc("D:\\Juego-UNO\\UNOGui\\Logica\\Reglas.cs" :47 :19)
return %4 : i1 loc("D:\\Juego-UNO\\UNOGui\\Logica\\Reglas.cs" :47 :12)

^1: // ExitBlock
cbde.unreachable

}
