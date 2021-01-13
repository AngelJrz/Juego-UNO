func @_UNO.Contratos.AdministrarJugador.GeneradorClave.GenerarClaveValidacion$$() -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\AdministrarJugador\\GeneradorClave.cs" :14 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\AdministrarJugador\\GeneradorClave.cs" :16 :28) // new Random() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\AdministrarJugador\\GeneradorClave.cs" :18 :37) // Not a variable of known type: random
%3 = constant 10000 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\AdministrarJugador\\GeneradorClave.cs" :18 :49)
%4 = constant 99999 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\AdministrarJugador\\GeneradorClave.cs" :18 :56)
%5 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\AdministrarJugador\\GeneradorClave.cs" :18 :37) // random.Next(10000, 99999) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\AdministrarJugador\\GeneradorClave.cs" :18 :37) // random.Next(10000, 99999).ToString() (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\AdministrarJugador\\GeneradorClave.cs" :20 :19) // Not a variable of known type: claveValidacion
return %8 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\AdministrarJugador\\GeneradorClave.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
