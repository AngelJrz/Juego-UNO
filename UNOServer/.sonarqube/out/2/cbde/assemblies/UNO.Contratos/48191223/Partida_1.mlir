func @_UNO.Contratos.LogicaJuego.Partida.CambiarTurno$$() -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :27 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :29 :16) // Not a variable of known type: SentidoJuego
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :29 :36) // "DERECHA" (StringLiteralExpression)
%2 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :29 :16) // SentidoJuego.Equals("DERECHA") (InvocationExpression)
cond_br %2, ^1, ^2 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :29 :16)

^1: // BinaryBranchBlock
%3 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :31 :20) // Not a variable of known type: turno
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :31 :28) // Not a variable of known type: JugadoresEnPartida
%5 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :31 :28) // JugadoresEnPartida.Count (SimpleMemberAccessExpression)
%6 = cmpi "slt", %3, %5 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :31 :20)
cond_br %6, ^3, ^4 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :31 :20)

^3: // SimpleBlock
%7 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :33 :20) // Not a variable of known type: turno
%8 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :33 :20) // Inc/Decrement of field or property turno
br ^5

^4: // SimpleBlock
%9 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :37 :28)
br ^5

^2: // BinaryBranchBlock
%10 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :42 :20) // Not a variable of known type: turno
%11 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :42 :28)
%12 = cmpi "sgt", %10, %11 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :42 :20)
cond_br %12, ^6, ^7 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :42 :20)

^6: // SimpleBlock
%13 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :44 :20) // Not a variable of known type: turno
%14 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :44 :20) // Inc/Decrement of field or property turno
br ^5

^7: // SimpleBlock
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :48 :28) // Not a variable of known type: JugadoresEnPartida
%16 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :48 :28) // JugadoresEnPartida.Count (SimpleMemberAccessExpression)
br ^5

^5: // JumpBlock
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :52 :19) // Not a variable of known type: JugadoresEnPartida
%18 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :52 :48) // Not a variable of known type: turno
%19 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :52 :56)
%20 = subi %18, %19 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :52 :48)
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :52 :19) // JugadoresEnPartida.ElementAt(turno - 1) (InvocationExpression)
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :52 :19) // JugadoresEnPartida.ElementAt(turno - 1).Nickname (SimpleMemberAccessExpression)
return %22 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :52 :12)

^8: // ExitBlock
cbde.unreachable

}
func @_UNO.Contratos.LogicaJuego.Partida.ObtenerSiguienteJugador$$() -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :59 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :61 :32) // Not a variable of known type: turno
%1 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :61 :16) // turnoAuxiliar
cbde.store %0, %1 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :61 :16)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :63 :16) // Not a variable of known type: SentidoJuego
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :63 :36) // "DERECHA" (StringLiteralExpression)
%4 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :63 :16) // SentidoJuego.Equals("DERECHA") (InvocationExpression)
cond_br %4, ^1, ^2 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :63 :16)

^1: // BinaryBranchBlock
%5 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :65 :20) // Not a variable of known type: turno
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :65 :28) // Not a variable of known type: JugadoresEnPartida
%7 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :65 :28) // JugadoresEnPartida.Count (SimpleMemberAccessExpression)
%8 = cmpi "slt", %5, %7 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :65 :20)
cond_br %8, ^3, ^4 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :65 :20)

^3: // SimpleBlock
%9 = cbde.load %1 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :67 :20)
%10 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :67 :20)
%11 = addi %9, %10 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :67 :20)
cbde.store %11, %1 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :67 :20)
br ^5

^4: // SimpleBlock
%12 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :71 :36)
cbde.store %12, %1 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :71 :20)
br ^5

^2: // BinaryBranchBlock
%13 = cbde.load %1 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :76 :20)
%14 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :76 :36)
%15 = cmpi "sgt", %13, %14 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :76 :20)
cond_br %15, ^6, ^7 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :76 :20)

^6: // SimpleBlock
%16 = cbde.load %1 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :78 :20)
%17 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :78 :20)
%18 = subi %16, %17 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :78 :20)
cbde.store %18, %1 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :78 :20)
br ^5

^7: // SimpleBlock
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :82 :36) // Not a variable of known type: JugadoresEnPartida
%20 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :82 :36) // JugadoresEnPartida.Count (SimpleMemberAccessExpression)
cbde.store %20, %1 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :82 :20)
br ^5

^5: // JumpBlock
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :86 :19) // Not a variable of known type: JugadoresEnPartida
%22 = cbde.load %1 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :86 :48)
%23 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :86 :64)
%24 = subi %22, %23 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :86 :48)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :86 :19) // JugadoresEnPartida.ElementAt(turnoAuxiliar - 1) (InvocationExpression)
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :86 :19) // JugadoresEnPartida.ElementAt(turnoAuxiliar - 1).Nickname (SimpleMemberAccessExpression)
return %26 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :86 :12)

^8: // ExitBlock
cbde.unreachable

}
func @_UNO.Contratos.LogicaJuego.Partida.CancelarSiguienteJugador$$() -> () loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :92 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :94 :16) // Not a variable of known type: SentidoJuego
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :94 :36) // "DERECHA" (StringLiteralExpression)
%2 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :94 :16) // SentidoJuego.Equals("DERECHA") (InvocationExpression)
cond_br %2, ^1, ^2 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :94 :16)

^1: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SonDosJugadores
%3 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :96 :21) // SonDosJugadores() (InvocationExpression)
%4 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :96 :20) // !SonDosJugadores() (LogicalNotExpression)
cond_br %4, ^3, ^4 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :96 :20)

^3: // BinaryBranchBlock
%5 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :98 :20) // Not a variable of known type: turno
%6 = constant 2 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :98 :29)
%7 = addi %5, %6 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :98 :20)
%8 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :100 :24) // Not a variable of known type: turno
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :100 :32) // Not a variable of known type: JugadoresEnPartida
%10 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :100 :32) // JugadoresEnPartida.Count (SimpleMemberAccessExpression)
%11 = cmpi "sgt", %8, %10 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :100 :24)
cond_br %11, ^5, ^4 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :100 :24)

^5: // SimpleBlock
%12 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :102 :32)
br ^4

^2: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SonDosJugadores
%13 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :108 :21) // SonDosJugadores() (InvocationExpression)
%14 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :108 :20) // !SonDosJugadores() (LogicalNotExpression)
cond_br %14, ^6, ^4 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :108 :20)

^6: // BinaryBranchBlock
%15 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :110 :20) // Not a variable of known type: turno
%16 = constant 2 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :110 :29)
%17 = subi %15, %16 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :110 :20)
%18 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :112 :24) // Not a variable of known type: turno
%19 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :112 :32)
%20 = cmpi "slt", %18, %19 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :112 :24)
cond_br %20, ^7, ^4 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :112 :24)

^7: // SimpleBlock
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :114 :32) // Not a variable of known type: JugadoresEnPartida
%22 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :114 :32) // JugadoresEnPartida.Count (SimpleMemberAccessExpression)
br ^4

^4: // ExitBlock
return

}
func @_UNO.Contratos.LogicaJuego.Partida.ObtenerJugadorEnTurno$$() -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :124 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :126 :19) // Not a variable of known type: JugadoresEnPartida
%1 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :126 :48) // Not a variable of known type: turno
%2 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :126 :56)
%3 = subi %1, %2 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :126 :48)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :126 :19) // JugadoresEnPartida.ElementAt(turno - 1) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :126 :19) // JugadoresEnPartida.ElementAt(turno - 1).Nickname (SimpleMemberAccessExpression)
return %5 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :126 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNO.Contratos.LogicaJuego.Partida.ReiniciarTurnos$$() -> () loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :132 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :134 :20)
br ^1

^1: // ExitBlock
return

}
func @_UNO.Contratos.LogicaJuego.Partida.SacarJugador$UNO.Dominio.Jugador$(none) -> () loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :141 :8) {
^entry (%_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :141 :33)
cbde.store %_jugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :141 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :143 :12) // Not a variable of known type: JugadoresEnPartida
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :143 :38) // Not a variable of known type: jugador
%3 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :143 :12) // JugadoresEnPartida.Remove(jugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNO.Contratos.LogicaJuego.Partida.HaySuficientesJugadores$$() -> i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :150 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :152 :19) // Not a variable of known type: JugadoresEnPartida
%1 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :152 :19) // JugadoresEnPartida.Count (SimpleMemberAccessExpression)
%2 = constant 2 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :152 :47)
%3 = cmpi "sge", %1, %2 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :152 :19)
return %3 : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :152 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNO.Contratos.LogicaJuego.Partida.SonDosJugadores$$() -> i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :155 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :157 :19) // Not a variable of known type: JugadoresEnPartida
%1 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :157 :19) // JugadoresEnPartida.Count (SimpleMemberAccessExpression)
%2 = constant 2 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :157 :47)
%3 = cmpi "eq", %1, %2 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :157 :19)
return %3 : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LogicaJuego\\Partida.cs" :157 :12)

^1: // ExitBlock
cbde.unreachable

}
