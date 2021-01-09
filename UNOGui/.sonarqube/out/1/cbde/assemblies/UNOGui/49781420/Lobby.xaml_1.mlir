func @_UNOGui.Paginas.Lobby.ConfigurarSalaParaHost$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :29 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :31 :12) // Not a variable of known type: mensajeParaInvitado
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :31 :12) // mensajeParaInvitado.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :31 :45) // Visibility.Collapsed (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :32 :12) // Not a variable of known type: mensajeParaHost
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :32 :12) // mensajeParaHost.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :32 :41) // Visibility.Visible (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :33 :12) // Not a variable of known type: iniciarPartidaBoton
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :33 :12) // iniciarPartidaBoton.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :33 :45) // Visibility.Visible (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function IniciarPartida(none, none), it contains poisonous unsupported syntaxes

func @_UNOGui.Paginas.Lobby.SalirDeSala$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :64 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :64 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :64 :33)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :64 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :64 :48)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :66 :28) // Not a variable of known type: idSalaActual
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :66 :28) // idSalaActual.Text (SimpleMemberAccessExpression)
// Entity from another assembly: Application
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :67 :42) // Application.Current (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :67 :42) // Application.Current.Windows (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :67 :42) // Application.Current.Windows.OfType<MenuPrincipal>() (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :67 :42) // Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :68 :26) // Not a variable of known type: menuPrincipal
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :68 :26) // menuPrincipal.DataContext (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :68 :26) // menuPrincipal.DataContext as Jugador (AsExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SalaAdmin
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :70 :34) // Not a variable of known type: idSala
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :70 :42) // Not a variable of known type: jugador
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :70 :42) // jugador.Nickname (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :70 :12) // SalaAdmin.SalirDeSala(idSala, jugador.Nickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.Lobby.HayMinimoDeJugadores$$() -> i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :73 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = constant 0 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :75 :29) // false
%1 = cbde.alloca i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :75 :17) // hayMinimo
cbde.store %0, %1 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :75 :17)
%2 = constant 2 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :76 :36)
%3 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :76 :16) // minimoDeJugadores
cbde.store %2, %3 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :76 :16)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :78 :16) // Not a variable of known type: Jugadores
%5 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :78 :16) // Jugadores.Count (SimpleMemberAccessExpression)
%6 = cbde.load %3 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :78 :35)
%7 = cmpi "sge", %5, %6 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :78 :16)
cond_br %7, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :78 :16)

^1: // SimpleBlock
%8 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :80 :28) // true
cbde.store %8, %1 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :80 :16)
br ^2

^2: // JumpBlock
%9 = cbde.load %1 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :83 :19)
return %9 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Lobby.xaml.cs" :83 :12)

^3: // ExitBlock
cbde.unreachable

}
