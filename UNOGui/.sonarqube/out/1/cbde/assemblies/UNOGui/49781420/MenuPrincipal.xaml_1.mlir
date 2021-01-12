func @_UNOGui.Ventanas.MenuPrincipal.CerrarSecion$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :24 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :24 :34)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :24 :34)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :24 :49)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :24 :49)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :26 :37) // new Principal() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :28 :12) // Not a variable of known type: ventanaLogin
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :28 :12) // ventanaLogin.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :29 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :29 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Ventanas.MenuPrincipal.IrAUnirseASala$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :32 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :32 :36)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :32 :36)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :32 :51)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :32 :51)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :34 :16) // Not a variable of known type: frameNavegacion
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :34 :16) // frameNavegacion.Content (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :34 :16) // frameNavegacion.Content.GetType() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :34 :53) // typeof(UnirseASala) (TypeOfExpression)
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :34 :16) // comparison of unknown type: frameNavegacion.Content.GetType() != typeof(UnirseASala)
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :34 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :36 :16) // Not a variable of known type: frameNavegacion
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :36 :41) // new UnirseASala() (ObjectCreationExpression)
%9 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :36 :16) // frameNavegacion.Navigate(new UnirseASala()) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_UNOGui.Ventanas.MenuPrincipal.IrACrearSala$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :40 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :40 :34)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :40 :34)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :40 :49)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :40 :49)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :42 :16) // Not a variable of known type: frameNavegacion
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :42 :16) // frameNavegacion.Content (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :42 :16) // frameNavegacion.Content.GetType() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :42 :53) // typeof(CreacionDeSala) (TypeOfExpression)
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :42 :16) // comparison of unknown type: frameNavegacion.Content.GetType() != typeof(CreacionDeSala)
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :42 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :44 :16) // Not a variable of known type: frameNavegacion
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :44 :41) // new CreacionDeSala() (ObjectCreationExpression)
%9 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :44 :16) // frameNavegacion.Navigate(new CreacionDeSala()) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function IrAMiPerfil(none, none), it contains poisonous unsupported syntaxes

func @_UNOGui.Ventanas.MenuPrincipal.IrAInicio$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :73 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :73 :31)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :73 :31)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :73 :46)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :73 :46)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :75 :16) // Not a variable of known type: frameNavegacion
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :75 :16) // frameNavegacion.Content (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :75 :16) // frameNavegacion.Content.GetType() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :75 :53) // typeof(Inicio) (TypeOfExpression)
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :75 :16) // comparison of unknown type: frameNavegacion.Content.GetType() != typeof(Inicio)
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :75 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :77 :16) // Not a variable of known type: frameNavegacion
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :77 :41) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :77 :41) // this.PaginaIncio (SimpleMemberAccessExpression)
%10 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :77 :16) // frameNavegacion.Navigate(this.PaginaIncio) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_UNOGui.Ventanas.MenuPrincipal.ObtenerInformacionJugador$UNOGui.JuegoUNOServicio.Jugador$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :81 :8) {
^entry (%_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :81 :46)
cbde.store %_jugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :81 :46)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :83 :12) // Not a variable of known type: frameNavegacion
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :83 :37) // new MiPerfil()               {                   DataContext = jugador               } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :85 :30) // Not a variable of known type: jugador
%4 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :83 :12) // frameNavegacion.Navigate(new MiPerfil()               {                   DataContext = jugador               }) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
