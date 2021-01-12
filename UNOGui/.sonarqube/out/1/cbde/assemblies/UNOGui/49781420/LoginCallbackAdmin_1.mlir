func @_UNOGui.Logica.LoginCallbackAdmin.NotificarResultadoLogin$UNOGui.JuegoUNOServicio.ResultadoLogin$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :14 :8) {
^entry (%_resultado : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :14 :44)
cbde.store %_resultado, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :14 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :16 :16) // Not a variable of known type: resultado
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :16 :29) // Not a variable of known type: ResultadoLogin
%3 = constant unit loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :16 :29) // ResultadoLogin.ExisteJugador (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :16 :16) // comparison of unknown type: resultado == ResultadoLogin.ExisteJugador
cond_br %4, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :16 :16)

^1: // SimpleBlock
// Entity from another assembly: Application
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :18 :45) // Application.Current (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :18 :45) // Application.Current.Windows (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :18 :45) // Application.Current.Windows.OfType<Principal>() (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :18 :45) // Application.Current.Windows.OfType<Principal>()                      .SingleOrDefault() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :21 :48) // Not a variable of known type: ventanaPrincipal
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :21 :48) // ventanaPrincipal.Content (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :21 :48) // ventanaPrincipal.Content as Login (AsExpression)
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :21 :47) // (ventanaPrincipal.Content as Login).JugadorNickname (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :23 :46) // new MenuPrincipal()                  {                      DataContext = new Jugador                      {                          Nickname = nicknameJugadorActual                      }                  } (ObjectCreationExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :25 :34) // new Jugador                      {                          Nickname = nicknameJugadorActual                      } (ObjectCreationExpression)
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :27 :35) // Not a variable of known type: nicknameJugadorActual
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :31 :16) // Not a variable of known type: menuPrincipal
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :31 :16) // menuPrincipal.Show() (InvocationExpression)
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :32 :16) // Not a variable of known type: ventanaPrincipal
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :32 :16) // ventanaPrincipal.Close() (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :36 :41) // new Mensaje() (ObjectCreationExpression)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :38 :20) // Not a variable of known type: resultado
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :38 :33) // Not a variable of known type: ResultadoLogin
%27 = constant unit loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :38 :33) // ResultadoLogin.NoExisteNickname (SimpleMemberAccessExpression)
%28 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :38 :20) // comparison of unknown type: resultado == ResultadoLogin.NoExisteNickname
cond_br %28, ^4, ^5 loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :38 :20)

^4: // SimpleBlock
%29 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :40 :20) // Not a variable of known type: ventanaMensaje
%30 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :40 :20) // ventanaMensaje.Title (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%31 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :40 :43) // Properties.Resources (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :40 :43) // Properties.Resources.Login_MensajeNicknameTitulo (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :41 :20) // Not a variable of known type: ventanaMensaje
%34 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :41 :20) // ventanaMensaje.TituloMensaje (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%35 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :41 :51) // Properties.Resources (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :41 :51) // Properties.Resources.Login_MensajeNicknameTitulo (SimpleMemberAccessExpression)
%37 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :42 :20) // Not a variable of known type: ventanaMensaje
%38 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :42 :20) // ventanaMensaje.Contenido (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%39 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :42 :47) // Properties.Resources (SimpleMemberAccessExpression)
%40 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :42 :47) // Properties.Resources.Login_MensajeNicknameContenido (SimpleMemberAccessExpression)
br ^6

^5: // BinaryBranchBlock
%41 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :44 :25) // Not a variable of known type: resultado
%42 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :44 :38) // Not a variable of known type: ResultadoLogin
%43 = constant unit loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :44 :38) // ResultadoLogin.ContraseñaIncorrecta (SimpleMemberAccessExpression)
%44 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :44 :25) // comparison of unknown type: resultado == ResultadoLogin.ContraseñaIncorrecta
cond_br %44, ^7, ^6 loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :44 :25)

^7: // SimpleBlock
%45 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :46 :20) // Not a variable of known type: ventanaMensaje
%46 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :46 :20) // ventanaMensaje.Title (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%47 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :46 :43) // Properties.Resources (SimpleMemberAccessExpression)
%48 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :46 :43) // Properties.Resources.Login_MensajeContraseñaTitulo (SimpleMemberAccessExpression)
%49 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :47 :20) // Not a variable of known type: ventanaMensaje
%50 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :47 :20) // ventanaMensaje.TituloMensaje (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%51 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :47 :51) // Properties.Resources (SimpleMemberAccessExpression)
%52 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :47 :51) // Properties.Resources.Login_MensajeContraseñaTitulo (SimpleMemberAccessExpression)
%53 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :48 :20) // Not a variable of known type: ventanaMensaje
%54 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :48 :20) // ventanaMensaje.Contenido (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%55 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :48 :47) // Properties.Resources (SimpleMemberAccessExpression)
%56 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :48 :47) // Properties.Resources.Login_MensajeContraseñaContenido (SimpleMemberAccessExpression)
br ^6

^6: // SimpleBlock
%57 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :51 :16) // Not a variable of known type: ventanaMensaje
%58 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :51 :16) // ventanaMensaje.ShowDialog() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_UNOGui.Logica.LoginCallbackAdmin.ObtenerJugadoresTop$UNOGui.JuegoUNOServicio.Jugador$$$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :55 :8) {
^entry (%_jugadoresTop : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :55 :40)
cbde.store %_jugadoresTop, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :55 :40)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :57 :42) // Application.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :57 :42) // Application.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :57 :42) // Application.Current.Windows.OfType<MenuPrincipal>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :57 :42) // Application.Current.Windows.OfType<MenuPrincipal>()                      .SingleOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :60 :12) // Not a variable of known type: menuPrincipal
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :60 :12) // menuPrincipal.PaginaIncio (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :60 :12) // menuPrincipal.PaginaIncio.TablaPuntaciones (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :60 :12) // menuPrincipal.PaginaIncio.TablaPuntaciones.ItemsSource (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :60 :103) // Not a variable of known type: jugadoresTop
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\LoginCallbackAdmin.cs" :60 :69) // new ObservableCollection<Jugador>(jugadoresTop) (ObjectCreationExpression)
br ^1

^1: // ExitBlock
return

}
