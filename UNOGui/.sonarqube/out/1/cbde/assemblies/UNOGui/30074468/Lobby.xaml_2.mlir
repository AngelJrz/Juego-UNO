func @_UNOGui.Ventanas.Lobby.SalirDeSala$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :37 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :37 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :37 :33)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :37 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :37 :48)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :39 :28) // Not a variable of known type: idSalaActual
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :39 :28) // idSalaActual.Text (SimpleMemberAccessExpression)
// Entity from another assembly: Application
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :40 :42) // Application.Current (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :40 :42) // Application.Current.Windows (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :40 :42) // Application.Current.Windows.OfType<MenuPrincipal>() (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :40 :42) // Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :41 :26) // Not a variable of known type: menuPrincipal
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :41 :26) // menuPrincipal.DataContext (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :41 :26) // menuPrincipal.DataContext as Jugador (AsExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SalaAdmin
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :43 :34) // Not a variable of known type: idSala
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :43 :42) // Not a variable of known type: jugador
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :43 :42) // jugador.Nickname (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :43 :12) // SalaAdmin.SalirDeSala(idSala, jugador.Nickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Ventanas.Lobby.RegresarMenuPrincipal$object.System.ComponentModel.CancelEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :46 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :46 :43)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :46 :43)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :46 :58)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :46 :58)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :48 :12) // Not a variable of known type: menuPrincipal
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :48 :12) // menuPrincipal.Show() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Ventanas.Lobby.ConfigurarSalaParaHost$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :54 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :56 :12) // Not a variable of known type: mensajeParaInvitado
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :56 :12) // mensajeParaInvitado.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :56 :45) // Visibility.Collapsed (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :57 :12) // Not a variable of known type: mensajeParaHost
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :57 :12) // mensajeParaHost.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :57 :41) // Visibility.Visible (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :58 :12) // Not a variable of known type: iniciarPartidaBoton
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :58 :12) // iniciarPartidaBoton.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Lobby.xaml.cs" :58 :45) // Visibility.Visible (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function IniciarPartida(none, none), it contains poisonous unsupported syntaxes

