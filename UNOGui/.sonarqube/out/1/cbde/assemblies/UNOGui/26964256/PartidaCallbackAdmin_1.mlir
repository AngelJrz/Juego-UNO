func @_UNOGui.Logica.JuegoCallbackAdmin.NotificarInicioPartida$UNOGui.JuegoUNOServicio.Sala$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :11 :8) {
^entry (%_sala : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :11 :43)
cbde.store %_sala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :11 :43)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :21 :33) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :21 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :21 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :21 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :22 :12) // Not a variable of known type: ventanaJuego
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :22 :12) // ventanaJuego.Height (SimpleMemberAccessExpression)
%8 = constant 450 : i32 loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :22 :34)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :23 :12) // Not a variable of known type: ventanaJuego
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :23 :12) // ventanaJuego.Width (SimpleMemberAccessExpression)
%11 = constant 800 : i32 loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :23 :33)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :24 :12) // Not a variable of known type: ventanaJuego
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :24 :12) // ventanaJuego.frameNavegacion (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :24 :50) // new Partida() (ObjectCreationExpression)
%15 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :24 :12) // ventanaJuego.frameNavegacion.Navigate(new Partida()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.ObtenerMaso$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :27 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :29 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %0 :  none loc("D:\\Juego-UNO\\UNOGui\\Logica\\PartidaCallbackAdmin.cs" :29 :12)

^1: // ExitBlock
return

}
