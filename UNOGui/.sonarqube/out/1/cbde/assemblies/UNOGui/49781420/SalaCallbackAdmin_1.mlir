func @_UNOGui.Logica.JuegoCallbackAdmin.ActualizarSala$string$$$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :14 :8) {
^entry (%_jugadores : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :14 :35)
cbde.store %_jugadores, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :14 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :16 :92) // Not a variable of known type: jugadores
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :16 :59) // new ObservableCollection<string>(jugadores) (ObjectCreationExpression)
// Entity from another assembly: Application
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :20 :33) // Application.Current (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :20 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :20 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :20 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :21 :40) // Not a variable of known type: ventanaJuego
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :21 :40) // ventanaJuego.frameNavegacion (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :21 :40) // ventanaJuego.frameNavegacion.Content (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :21 :40) // ventanaJuego.frameNavegacion.Content as Paginas.Lobby (AsExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :23 :12) // Not a variable of known type: paginaLobby
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :23 :12) // paginaLobby.jugadoresEnSala (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :23 :12) // paginaLobby.jugadoresEnSala.ItemsSource (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :23 :54) // Not a variable of known type: jugadoresEnSala
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.AgregarNuevoJugador$UNOGui.JuegoUNOServicio.Jugador$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :30 :8) {
^entry (%_nuevoJugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :30 :40)
cbde.store %_nuevoJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :30 :40)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :34 :33) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :34 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :34 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :34 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :35 :40) // Not a variable of known type: ventanaJuego
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :35 :40) // ventanaJuego.frameNavegacion (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :35 :40) // ventanaJuego.frameNavegacion.Content (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :35 :40) // ventanaJuego.frameNavegacion.Content as Paginas.Lobby (AsExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :37 :12) // Not a variable of known type: paginaLobby
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :37 :12) // paginaLobby.Jugadores (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :37 :38) // Not a variable of known type: nuevoJugador
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :37 :12) // paginaLobby.Jugadores.Add(nuevoJugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.EliminarCreador$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :43 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CerrarSala
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :45 :12) // CerrarSala() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.NotificarCreacionDeSala$UNOGui.JuegoUNOServicio.Sala$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :52 :8) {
^entry (%_salaCreada : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :52 :44)
cbde.store %_salaCreada, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :52 :44)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :66 :33) // new Juego() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :67 :12) // Not a variable of known type: ventanaJuego
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :67 :12) // ventanaJuego.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :68 :40) // new Paginas.Lobby              {                  Jugadores = new ObservableCollection<Jugador>(salaCreada.JugadoresEnSala.Keys),                  DataContext = salaCreada              } (ObjectCreationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :70 :62) // Not a variable of known type: salaCreada
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :70 :62) // salaCreada.JugadoresEnSala (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :70 :62) // salaCreada.JugadoresEnSala.Keys (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :70 :28) // new ObservableCollection<Jugador>(salaCreada.JugadoresEnSala.Keys) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :71 :30) // Not a variable of known type: salaCreada
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :73 :12) // Not a variable of known type: paginaLobby
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :73 :12) // paginaLobby.jugadoresEnSala (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :73 :12) // paginaLobby.jugadoresEnSala.ItemsSource (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :73 :54) // Not a variable of known type: paginaLobby
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :73 :54) // paginaLobby.Jugadores (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :74 :12) // Not a variable of known type: paginaLobby
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :74 :12) // paginaLobby.ConfigurarSalaParaHost() (InvocationExpression)
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :75 :12) // Not a variable of known type: ventanaJuego
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :75 :12) // ventanaJuego.frameNavegacion (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :75 :12) // ventanaJuego.frameNavegacion.Content (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :75 :51) // Not a variable of known type: paginaLobby
// Entity from another assembly: Application
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :77 :42) // Application.Current (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :77 :42) // Application.Current.Windows (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :77 :42) // Application.Current.Windows.OfType<MenuPrincipal>() (InvocationExpression)
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :77 :42) // Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault() (InvocationExpression)
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :78 :12) // Not a variable of known type: menuPrincipal
%29 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :78 :12) // menuPrincipal.Hide() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.NotificarEliminacionDeSala$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :84 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :88 :12) // new Mensaje              {                  Title = "Sala eliminada",                  TituloMensaje = "Sala eliminada",                  Contenido = "El host eliminó la sala. Unete a otra sala."              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :90 :24) // "Sala eliminada" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :91 :32) // "Sala eliminada" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :92 :28) // "El host eliminó la sala. Unete a otra sala." (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :88 :12) // new Mensaje              {                  Title = "Sala eliminada",                  TituloMensaje = "Sala eliminada",                  Contenido = "El host eliminó la sala. Unete a otra sala."              }.ShowDialog() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CerrarSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :95 :12) // CerrarSala() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.NotificarSalidaDeSala$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :101 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CerrarSala
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :103 :12) // CerrarSala() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function NotificarUnionASala(none), it contains poisonous unsupported syntaxes

func @_UNOGui.Logica.JuegoCallbackAdmin.ObtenerInformacionDeSala$UNOGui.JuegoUNOServicio.Sala$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :165 :8) {
^entry (%_sala : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :165 :45)
cbde.store %_sala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :165 :45)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :172 :40) // new Paginas.Lobby              {                  DataContext = sala,                  Jugadores = new ObservableCollection<Jugador>(sala.JugadoresEnSala.Keys)              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :174 :30) // Not a variable of known type: sala
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :175 :62) // Not a variable of known type: sala
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :175 :62) // sala.JugadoresEnSala (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :175 :62) // sala.JugadoresEnSala.Keys (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :175 :28) // new ObservableCollection<Jugador>(sala.JugadoresEnSala.Keys) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :177 :12) // Not a variable of known type: paginaLobby
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :177 :12) // paginaLobby.jugadoresEnSala (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :177 :12) // paginaLobby.jugadoresEnSala.ItemsSource (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :177 :54) // Not a variable of known type: paginaLobby
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :177 :54) // paginaLobby.Jugadores (SimpleMemberAccessExpression)
// Entity from another assembly: Application
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :178 :33) // Application.Current (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :178 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :178 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :178 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :179 :12) // Not a variable of known type: ventanaJuego
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :179 :12) // ventanaJuego.frameNavegacion (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :179 :12) // ventanaJuego.frameNavegacion.Content (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :179 :51) // Not a variable of known type: paginaLobby
br ^1

^1: // ExitBlock
return

}
// Skipping function SacarJugador(none), it contains poisonous unsupported syntaxes

func @_UNOGui.Logica.JuegoCallbackAdmin.CerrarSala$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :198 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :205 :42) // Application.Current (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :205 :42) // Application.Current.Windows (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :205 :42) // Application.Current.Windows.OfType<MenuPrincipal>() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :205 :42) // Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault() (InvocationExpression)
// Entity from another assembly: Application
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :206 :31) // Application.Current (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :206 :31) // Application.Current.Windows (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :206 :31) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :206 :31) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :207 :12) // Not a variable of known type: ventanaJuego
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :207 :12) // ventanaJuego.Close() (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :209 :12) // Not a variable of known type: menuPrincipal
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :209 :12) // menuPrincipal.Show() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
