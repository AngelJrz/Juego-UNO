// Skipping function RegistrarJugador(none), it contains poisonous unsupported syntaxes

// Skipping function VerificarClave(none), it contains poisonous unsupported syntaxes

func @_UNO.Contratos.JuegoUNOServicio.CancelarRegistro$$() -> () loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\JuegoUNOServicio.cs" :95 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\JuegoUNOServicio.cs" :97 :55) // Not a variable of known type: ObtenerCallbackActual
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\JuegoUNOServicio.cs" :99 :16) // Not a variable of known type: jugadoresARegistrar
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\JuegoUNOServicio.cs" :99 :48) // Not a variable of known type: callbackActual
%4 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\JuegoUNOServicio.cs" :99 :16) // jugadoresARegistrar.ContainsKey(callbackActual) (InvocationExpression)
cond_br %4, ^1, ^2 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\JuegoUNOServicio.cs" :99 :16)

^1: // SimpleBlock
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\JuegoUNOServicio.cs" :101 :16) // Not a variable of known type: jugadoresARegistrar
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\JuegoUNOServicio.cs" :101 :43) // Not a variable of known type: callbackActual
%7 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\JuegoUNOServicio.cs" :101 :16) // jugadoresARegistrar.Remove(callbackActual) (InvocationExpression)
br ^2

^2: // SimpleBlock
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\JuegoUNOServicio.cs" :104 :12) // Not a variable of known type: callbackActual
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\JuegoUNOServicio.cs" :104 :12) // callbackActual.NotificarCancelacionRegistro() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function EnviarClaveDeNuevo(), it contains poisonous unsupported syntaxes

