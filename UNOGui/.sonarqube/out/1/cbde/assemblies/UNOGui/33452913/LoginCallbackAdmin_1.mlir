func @_UNOGui.Logica.LoginCallbackAdmin.NotificarResultadoLogin$UNOGui.JuegoUNOServicio.ResultadoLogin$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :19 :8) {
^entry (%_resultado : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :19 :44)
cbde.store %_resultado, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :19 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :21 :16) // Not a variable of known type: resultado
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :21 :29) // Not a variable of known type: ResultadoLogin
%3 = constant unit loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :21 :29) // ResultadoLogin.ExisteJugador (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :21 :16) // comparison of unknown type: resultado == ResultadoLogin.ExisteJugador
cond_br %4, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :21 :16)

^1: // SimpleBlock
// Entity from another assembly: Application
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :23 :45) // Application.Current (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :23 :45) // Application.Current.Windows (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :23 :45) // Application.Current.Windows.OfType<Principal>() (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :23 :45) // Application.Current.Windows.OfType<Principal>()                      .SingleOrDefault() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :26 :48) // Not a variable of known type: ventanaPrincipal
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :26 :48) // ventanaPrincipal.Content (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :26 :48) // ventanaPrincipal.Content as Login (AsExpression)
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :26 :47) // (ventanaPrincipal.Content as Login).JugadorNickname (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :28 :46) // new MenuPrincipal()                  {                      DataContext = new Jugador                      {                          Nickname = nicknameJugadorActual                      }                  } (ObjectCreationExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :30 :34) // new Jugador                      {                          Nickname = nicknameJugadorActual                      } (ObjectCreationExpression)
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :32 :35) // Not a variable of known type: nicknameJugadorActual
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :36 :16) // Not a variable of known type: menuPrincipal
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :36 :16) // menuPrincipal.Show() (InvocationExpression)
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :37 :16) // Not a variable of known type: ventanaPrincipal
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :37 :16) // ventanaPrincipal.Close() (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :41 :41) // new Mensaje() (ObjectCreationExpression)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :43 :20) // Not a variable of known type: resultado
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :43 :33) // Not a variable of known type: ResultadoLogin
%27 = constant unit loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :43 :33) // ResultadoLogin.SesionIniciada (SimpleMemberAccessExpression)
%28 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :43 :20) // comparison of unknown type: resultado == ResultadoLogin.SesionIniciada
cond_br %28, ^4, ^5 loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :43 :20)

^4: // SimpleBlock
%29 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :45 :20) // Not a variable of known type: ventanaMensaje
%30 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :45 :20) // ventanaMensaje.Title (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%31 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :45 :43) // Properties.Resources (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :45 :43) // Properties.Resources.Login_MensajeSesionIniciadaTitulo (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :46 :20) // Not a variable of known type: ventanaMensaje
%34 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :46 :20) // ventanaMensaje.TituloMensaje (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%35 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :46 :51) // Properties.Resources (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :46 :51) // Properties.Resources.Login_MensajeSesionIniciadaTitulo (SimpleMemberAccessExpression)
%37 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :47 :20) // Not a variable of known type: ventanaMensaje
%38 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :47 :20) // ventanaMensaje.Contenido (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%39 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :47 :47) // Properties.Resources (SimpleMemberAccessExpression)
%40 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :47 :47) // Properties.Resources.Login_MensajeSesionIniciadaContenido (SimpleMemberAccessExpression)
br ^6

^5: // BinaryBranchBlock
%41 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :49 :25) // Not a variable of known type: resultado
%42 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :49 :38) // Not a variable of known type: ResultadoLogin
%43 = constant unit loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :49 :38) // ResultadoLogin.NoExisteNickname (SimpleMemberAccessExpression)
%44 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :49 :25) // comparison of unknown type: resultado == ResultadoLogin.NoExisteNickname
cond_br %44, ^7, ^8 loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :49 :25)

^7: // SimpleBlock
%45 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :51 :20) // Not a variable of known type: ventanaMensaje
%46 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :51 :20) // ventanaMensaje.Title (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%47 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :51 :43) // Properties.Resources (SimpleMemberAccessExpression)
%48 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :51 :43) // Properties.Resources.Login_MensajeNicknameTitulo (SimpleMemberAccessExpression)
%49 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :52 :20) // Not a variable of known type: ventanaMensaje
%50 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :52 :20) // ventanaMensaje.TituloMensaje (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%51 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :52 :51) // Properties.Resources (SimpleMemberAccessExpression)
%52 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :52 :51) // Properties.Resources.Login_MensajeNicknameTitulo (SimpleMemberAccessExpression)
%53 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :53 :20) // Not a variable of known type: ventanaMensaje
%54 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :53 :20) // ventanaMensaje.Contenido (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%55 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :53 :47) // Properties.Resources (SimpleMemberAccessExpression)
%56 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :53 :47) // Properties.Resources.Login_MensajeNicknameContenido (SimpleMemberAccessExpression)
br ^6

^8: // BinaryBranchBlock
%57 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :55 :25) // Not a variable of known type: resultado
%58 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :55 :38) // Not a variable of known type: ResultadoLogin
%59 = constant unit loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :55 :38) // ResultadoLogin.ContraseñaIncorrecta (SimpleMemberAccessExpression)
%60 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :55 :25) // comparison of unknown type: resultado == ResultadoLogin.ContraseñaIncorrecta
cond_br %60, ^9, ^6 loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :55 :25)

^9: // SimpleBlock
%61 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :57 :20) // Not a variable of known type: ventanaMensaje
%62 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :57 :20) // ventanaMensaje.Title (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%63 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :57 :43) // Properties.Resources (SimpleMemberAccessExpression)
%64 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :57 :43) // Properties.Resources.Login_MensajeContraseñaTitulo (SimpleMemberAccessExpression)
%65 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :58 :20) // Not a variable of known type: ventanaMensaje
%66 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :58 :20) // ventanaMensaje.TituloMensaje (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%67 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :58 :51) // Properties.Resources (SimpleMemberAccessExpression)
%68 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :58 :51) // Properties.Resources.Login_MensajeContraseñaTitulo (SimpleMemberAccessExpression)
%69 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :59 :20) // Not a variable of known type: ventanaMensaje
%70 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :59 :20) // ventanaMensaje.Contenido (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%71 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :59 :47) // Properties.Resources (SimpleMemberAccessExpression)
%72 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :59 :47) // Properties.Resources.Login_MensajeContraseñaContenido (SimpleMemberAccessExpression)
br ^6

^6: // SimpleBlock
%73 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :62 :16) // Not a variable of known type: ventanaMensaje
%74 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :62 :16) // ventanaMensaje.ShowDialog() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_UNOGui.Logica.LoginCallbackAdmin.ObtenerJugadoresTop$System.Collections.Generic.List$UNOGui.JuegoUNOServicio.Jugador$$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :70 :8) {
^entry (%_jugadoresTop : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :70 :40)
cbde.store %_jugadoresTop, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :70 :40)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :72 :42) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :72 :42) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :72 :42) // Application.Current.Windows.OfType<MenuPrincipal>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :72 :42) // Application.Current.Windows.OfType<MenuPrincipal>()                      .SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :75 :12) // Not a variable of known type: menuPrincipal
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :75 :12) // menuPrincipal.PaginaIncio (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :75 :12) // menuPrincipal.PaginaIncio.TablaPuntaciones (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :75 :12) // menuPrincipal.PaginaIncio.TablaPuntaciones.ItemsSource (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :75 :103) // Not a variable of known type: jugadoresTop
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :75 :69) // new ObservableCollection<Jugador>(jugadoresTop) (ObjectCreationExpression)
br ^1

^1: // ExitBlock
return

}
