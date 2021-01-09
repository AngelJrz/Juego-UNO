func @_UNOGui.Logica.RegistroJugadorCallback.NotificarCancelacionRegistro$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :12 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :14 :12) // Not a variable of known type: ventanaPrincipal
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :14 :38) // new Login() (ObjectCreationExpression)
%2 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :14 :12) // ventanaPrincipal.Navigate(new Login()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.RegistroJugadorCallback.NotificarEnvioDeClave$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :17 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :19 :12) // new Mensaje              {                  Title = Properties.Resources.RegistroEnEspera_ClaveValidacion,                  TituloMensaje = Properties.Resources.Registro_NuevaClaveTituloMensaje,                  Contenido = Properties.Resources.Registro_NuevaClaveMensaje              } (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :21 :24) // Properties.Resources (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :21 :24) // Properties.Resources.RegistroEnEspera_ClaveValidacion (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :22 :32) // Properties.Resources (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :22 :32) // Properties.Resources.Registro_NuevaClaveTituloMensaje (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :23 :28) // Properties.Resources (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :23 :28) // Properties.Resources.Registro_NuevaClaveMensaje (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :19 :12) // new Mensaje              {                  Title = Properties.Resources.RegistroEnEspera_ClaveValidacion,                  TituloMensaje = Properties.Resources.Registro_NuevaClaveTituloMensaje,                  Contenido = Properties.Resources.Registro_NuevaClaveMensaje              }.ShowDialog() (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :26 :13) // Not a variable of known type: ventanaPrincipal
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :26 :13) // ventanaPrincipal.Content (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :26 :13) // ventanaPrincipal.Content as RegistroEnEspera (AsExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :26 :12) // (ventanaPrincipal.Content as RegistroEnEspera).IniciarTemporizador() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Logica.RegistroJugadorCallback.NotificarRegistro$UNOGui.JuegoUNOServicio.ResultadoRegistro$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :29 :8) {
^entry (%_resultado : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :29 :38)
cbde.store %_resultado, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :29 :38)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :31 :16) // Not a variable of known type: resultado
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :31 :29) // Not a variable of known type: ResultadoRegistro
%3 = constant unit loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :31 :29) // ResultadoRegistro.UsuarioYaExiste (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :31 :16) // comparison of unknown type: resultado == ResultadoRegistro.UsuarioYaExiste
cond_br %4, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :31 :16)

^1: // SimpleBlock
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :33 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.Registro_NicknameExisteTitulo,                      Contenido = Properties.Resources.Registro_NicknameExisteMensaje                  } (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :35 :36) // Properties.Resources (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :35 :36) // Properties.Resources.Registro_NicknameExisteTitulo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :36 :32) // Properties.Resources (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :36 :32) // Properties.Resources.Registro_NicknameExisteMensaje (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :33 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.Registro_NicknameExisteTitulo,                      Contenido = Properties.Resources.Registro_NicknameExisteMensaje                  }.ShowDialog() (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :39 :21) // Not a variable of known type: resultado
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :39 :34) // Not a variable of known type: ResultadoRegistro
%13 = constant unit loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :39 :34) // ResultadoRegistro.CorreoYaExiste (SimpleMemberAccessExpression)
%14 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :39 :21) // comparison of unknown type: resultado == ResultadoRegistro.CorreoYaExiste
cond_br %14, ^4, ^5 loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :39 :21)

^4: // SimpleBlock
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :41 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.Registro_CorreoExisteTitulo,                      Contenido = Properties.Resources.Registro_CorreoExisteMensaje                  } (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :43 :36) // Properties.Resources (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :43 :36) // Properties.Resources.Registro_CorreoExisteTitulo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :44 :32) // Properties.Resources (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :44 :32) // Properties.Resources.Registro_CorreoExisteMensaje (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :41 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.Registro_CorreoExisteTitulo,                      Contenido = Properties.Resources.Registro_CorreoExisteMensaje                  }.ShowDialog() (InvocationExpression)
br ^3

^5: // BinaryBranchBlock
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :47 :21) // Not a variable of known type: resultado
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :47 :34) // Not a variable of known type: ResultadoRegistro
%23 = constant unit loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :47 :34) // ResultadoRegistro.RegistroExitoso (SimpleMemberAccessExpression)
%24 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :47 :21) // comparison of unknown type: resultado == ResultadoRegistro.RegistroExitoso
cond_br %24, ^6, ^3 loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :47 :21)

^6: // SimpleBlock
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :49 :16) // Not a variable of known type: ventanaPrincipal
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :49 :42) // new RegistroEnEspera() (ObjectCreationExpression)
%27 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :49 :16) // ventanaPrincipal.Navigate(new RegistroEnEspera()) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_UNOGui.Logica.RegistroJugadorCallback.NotificarResultadoClave$bool$(i1) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :53 :8) {
^entry (%_claveValida : i1):
%0 = cbde.alloca i1 loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :53 :44)
cbde.store %_claveValida, %0 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :53 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :55 :37) // new Mensaje() (ObjectCreationExpression)
%3 = cbde.load %0 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :57 :16)
cond_br %3, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :57 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :59 :16) // Not a variable of known type: ventanaMensaje
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :59 :16) // ventanaMensaje.Title (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :59 :39) // Properties.Resources (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :59 :39) // Properties.Resources.Registro_ExitoTitulo (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :60 :16) // Not a variable of known type: ventanaMensaje
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :60 :16) // ventanaMensaje.TituloMensaje (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :60 :47) // Properties.Resources (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :60 :47) // Properties.Resources.Registro_ExitoTitulo (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :61 :16) // Not a variable of known type: ventanaMensaje
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :61 :16) // ventanaMensaje.Contenido (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :61 :43) // Properties.Resources (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :61 :43) // Properties.Resources.Registro_ExitoMensaje (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :62 :16) // Not a variable of known type: ventanaMensaje
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :62 :16) // ventanaMensaje.ShowDialog() (InvocationExpression)
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :64 :16) // Not a variable of known type: ventanaPrincipal
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :64 :42) // new Login() (ObjectCreationExpression)
%20 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :64 :16) // ventanaPrincipal.Navigate(new Login()) (InvocationExpression)
br ^3

^2: // SimpleBlock
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :68 :16) // Not a variable of known type: ventanaMensaje
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :68 :16) // ventanaMensaje.TituloMensaje (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :68 :47) // Properties.Resources (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :68 :47) // Properties.Resources.Registro_ClaveInvalidaTitulo (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :69 :16) // Not a variable of known type: ventanaMensaje
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :69 :16) // ventanaMensaje.Contenido (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%27 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :69 :43) // Properties.Resources (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :69 :43) // Properties.Resources.Registro_ClaveInvalidaMensaje (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :70 :16) // Not a variable of known type: ventanaMensaje
%30 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\RegistroJugadorCallback.cs" :70 :16) // ventanaMensaje.ShowDialog() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
