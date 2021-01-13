// Skipping function CerrarSesion(none, none), it contains poisonous unsupported syntaxes

func @_UNOGui.Ventanas.MenuPrincipal.IrAUnirseASala$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :48 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :48 :36)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :48 :36)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :48 :51)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :48 :51)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :50 :16) // Not a variable of known type: frameNavegacion
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :50 :16) // frameNavegacion.Content (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :50 :16) // frameNavegacion.Content.GetType() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :50 :53) // typeof(UnirseASala) (TypeOfExpression)
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :50 :16) // comparison of unknown type: frameNavegacion.Content.GetType() != typeof(UnirseASala)
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :50 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :52 :16) // Not a variable of known type: frameNavegacion
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :52 :41) // new UnirseASala() (ObjectCreationExpression)
%9 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :52 :16) // frameNavegacion.Navigate(new UnirseASala()) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_UNOGui.Ventanas.MenuPrincipal.IrACrearSala$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :56 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :56 :34)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :56 :34)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :56 :49)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :56 :49)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :58 :16) // Not a variable of known type: frameNavegacion
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :58 :16) // frameNavegacion.Content (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :58 :16) // frameNavegacion.Content.GetType() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :58 :53) // typeof(CreacionDeSala) (TypeOfExpression)
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :58 :16) // comparison of unknown type: frameNavegacion.Content.GetType() != typeof(CreacionDeSala)
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :58 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :60 :16) // Not a variable of known type: frameNavegacion
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :60 :41) // new CreacionDeSala() (ObjectCreationExpression)
%9 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :60 :16) // frameNavegacion.Navigate(new CreacionDeSala()) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function IrAMiPerfil(none, none), it contains poisonous unsupported syntaxes

func @_UNOGui.Ventanas.MenuPrincipal.IrAInicio$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :89 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :89 :31)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :89 :31)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :89 :46)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :89 :46)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :91 :16) // Not a variable of known type: frameNavegacion
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :91 :16) // frameNavegacion.Content (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :91 :16) // frameNavegacion.Content.GetType() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :91 :53) // typeof(Inicio) (TypeOfExpression)
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :91 :16) // comparison of unknown type: frameNavegacion.Content.GetType() != typeof(Inicio)
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :91 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :93 :16) // Not a variable of known type: frameNavegacion
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :93 :41) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :93 :41) // this.PaginaIncio (SimpleMemberAccessExpression)
%10 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :93 :16) // frameNavegacion.Navigate(this.PaginaIncio) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_UNOGui.Ventanas.MenuPrincipal.ObtenerInformacionJugador$UNOGui.JuegoUNOServicio.Jugador$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :101 :8) {
^entry (%_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :101 :46)
cbde.store %_jugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :101 :46)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :103 :12) // Not a variable of known type: frameNavegacion
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :103 :37) // new MiPerfil()               {                   DataContext = jugador               } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :105 :30) // Not a variable of known type: jugador
%4 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\MenuPrincipal.xaml.cs" :103 :12) // frameNavegacion.Navigate(new MiPerfil()               {                   DataContext = jugador               }) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
