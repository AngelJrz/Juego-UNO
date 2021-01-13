func @_UNOGui.Logica.JuegoCallbackAdmin.ActualizarSala$System.Collections.Generic.List$string$$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :16 :8) {
^entry (%_jugadores : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :16 :35)
cbde.store %_jugadores, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :16 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :18 :92) // Not a variable of known type: jugadores
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :18 :59) // new ObservableCollection<string>(jugadores) (ObjectCreationExpression)
// Entity from another assembly: Application
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :19 :33) // Application.Current (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :19 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :19 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :19 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :20 :40) // Not a variable of known type: ventanaJuego
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :20 :40) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :20 :40) // ventanaJuego.PaginaActual as Paginas.Lobby (AsExpression)
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :22 :12) // Not a variable of known type: paginaLobby
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :22 :12) // paginaLobby.jugadoresEnSala (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :22 :12) // paginaLobby.jugadoresEnSala.ItemsSource (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :22 :54) // Not a variable of known type: jugadoresEnSala
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.AgregarNuevoJugador$UNOGui.JuegoUNOServicio.Jugador$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :29 :8) {
^entry (%_nuevoJugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :29 :40)
cbde.store %_nuevoJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :29 :40)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :31 :33) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :31 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :31 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :31 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :32 :40) // Not a variable of known type: ventanaJuego
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :32 :40) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :32 :40) // ventanaJuego.PaginaActual as Paginas.Lobby (AsExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :34 :12) // Not a variable of known type: paginaLobby
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :34 :12) // paginaLobby.Jugadores (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :34 :38) // Not a variable of known type: nuevoJugador
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :34 :12) // paginaLobby.Jugadores.Add(nuevoJugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.EliminarCreador$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :40 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CerrarSala
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :42 :12) // CerrarSala() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.NotificarCreacionDeSala$UNOGui.JuegoUNOServicio.Sala$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :49 :8) {
^entry (%_salaCreada : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :49 :44)
cbde.store %_salaCreada, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :49 :44)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :51 :33) // new Juego() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :52 :12) // Not a variable of known type: ventanaJuego
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :52 :12) // ventanaJuego.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :53 :40) // new Paginas.Lobby              {                  Jugadores = new ObservableCollection<Jugador>(salaCreada.JugadoresEnSala.Keys),                  DataContext = salaCreada              } (ObjectCreationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :55 :62) // Not a variable of known type: salaCreada
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :55 :62) // salaCreada.JugadoresEnSala (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :55 :62) // salaCreada.JugadoresEnSala.Keys (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :55 :28) // new ObservableCollection<Jugador>(salaCreada.JugadoresEnSala.Keys) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :56 :30) // Not a variable of known type: salaCreada
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :58 :12) // Not a variable of known type: paginaLobby
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :58 :12) // paginaLobby.jugadoresEnSala (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :58 :12) // paginaLobby.jugadoresEnSala.ItemsSource (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :58 :54) // Not a variable of known type: paginaLobby
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :58 :54) // paginaLobby.Jugadores (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :59 :12) // Not a variable of known type: paginaLobby
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :59 :12) // paginaLobby.ConfigurarSalaParaHost() (InvocationExpression)
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :60 :12) // Not a variable of known type: ventanaJuego
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :60 :12) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :60 :40) // Not a variable of known type: paginaLobby
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :61 :12) // Not a variable of known type: ventanaJuego
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :61 :12) // ventanaJuego.frameNavegacion (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :61 :12) // ventanaJuego.frameNavegacion.Content (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :61 :51) // Not a variable of known type: paginaLobby
// Entity from another assembly: Application
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :63 :42) // Application.Current (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :63 :42) // Application.Current.Windows (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :63 :42) // Application.Current.Windows.OfType<MenuPrincipal>() (InvocationExpression)
%29 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :63 :42) // Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault() (InvocationExpression)
%31 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :64 :12) // Not a variable of known type: menuPrincipal
%32 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :64 :12) // menuPrincipal.Hide() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.NotificarEliminacionDeSala$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :70 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :72 :12) // new Mensaje              {                  Title = "Sala eliminada",                  TituloMensaje = "Sala eliminada",                  Contenido = "El host eliminó la sala. Unete a otra sala."              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :74 :24) // "Sala eliminada" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :75 :32) // "Sala eliminada" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :76 :28) // "El host eliminó la sala. Unete a otra sala." (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :72 :12) // new Mensaje              {                  Title = "Sala eliminada",                  TituloMensaje = "Sala eliminada",                  Contenido = "El host eliminó la sala. Unete a otra sala."              }.ShowDialog() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CerrarSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :79 :12) // CerrarSala() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.NotificarFaltaDeJugadores$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :85 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :87 :12) // new Mensaje              {                  Title = "Sala eliminada",                  TituloMensaje = "Sala eliminada",                  Contenido = "No existen suficientes jugadores en la sala para seguir jugando."              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :89 :24) // "Sala eliminada" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :90 :32) // "Sala eliminada" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :91 :28) // "No existen suficientes jugadores en la sala para seguir jugando." (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :87 :12) // new Mensaje              {                  Title = "Sala eliminada",                  TituloMensaje = "Sala eliminada",                  Contenido = "No existen suficientes jugadores en la sala para seguir jugando."              }.ShowDialog() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CerrarSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :94 :12) // CerrarSala() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.JuegoCallbackAdmin.NotificarSalidaDeSala$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :100 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CerrarSala
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :102 :12) // CerrarSala() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function NotificarUnionASala(none), it contains poisonous unsupported syntaxes

func @_UNOGui.Logica.JuegoCallbackAdmin.ObtenerInformacionDeSala$UNOGui.JuegoUNOServicio.Sala$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :162 :8) {
^entry (%_sala : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :162 :45)
cbde.store %_sala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :162 :45)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :164 :40) // new Paginas.Lobby              {                  DataContext = sala,                  Jugadores = new ObservableCollection<Jugador>(sala.JugadoresEnSala.Keys)              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :166 :30) // Not a variable of known type: sala
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :167 :62) // Not a variable of known type: sala
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :167 :62) // sala.JugadoresEnSala (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :167 :62) // sala.JugadoresEnSala.Keys (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :167 :28) // new ObservableCollection<Jugador>(sala.JugadoresEnSala.Keys) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :169 :12) // Not a variable of known type: paginaLobby
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :169 :12) // paginaLobby.jugadoresEnSala (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :169 :12) // paginaLobby.jugadoresEnSala.ItemsSource (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :169 :54) // Not a variable of known type: paginaLobby
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :169 :54) // paginaLobby.Jugadores (SimpleMemberAccessExpression)
// Entity from another assembly: Application
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :170 :33) // Application.Current (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :170 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :170 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :170 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :171 :12) // Not a variable of known type: ventanaJuego
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :171 :12) // ventanaJuego.PaginaActual (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :171 :40) // Not a variable of known type: paginaLobby
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :172 :12) // Not a variable of known type: ventanaJuego
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :172 :12) // ventanaJuego.frameNavegacion (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :172 :12) // ventanaJuego.frameNavegacion.Content (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :172 :51) // Not a variable of known type: paginaLobby
br ^1

^1: // ExitBlock
return

}
// Skipping function SacarJugador(none), it contains poisonous unsupported syntaxes

func @_UNOGui.Logica.JuegoCallbackAdmin.CerrarSala$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :195 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :197 :42) // Application.Current (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :197 :42) // Application.Current.Windows (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :197 :42) // Application.Current.Windows.OfType<MenuPrincipal>() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :197 :42) // Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault() (InvocationExpression)
// Entity from another assembly: Application
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :198 :31) // Application.Current (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :198 :31) // Application.Current.Windows (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :198 :31) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :198 :31) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :199 :12) // Not a variable of known type: ventanaJuego
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :199 :12) // ventanaJuego.Close() (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :201 :12) // Not a variable of known type: menuPrincipal
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\SalaCallbackAdmin.cs" :201 :12) // menuPrincipal.Show() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
