func @_UNOGui.Paginas.RegistrarCuenta.CancelarRegistro$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :21 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :21 :38)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :21 :38)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :21 :53)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :21 :53)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :23 :12) // Identifier from another assembly: NavigationService
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :23 :12) // NavigationService.GoBack() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function RegistrarNuevaCuenta(none, none), it contains poisonous unsupported syntaxes

// Skipping function CamposCompletos(), it contains poisonous unsupported syntaxes

func @_UNOGui.Paginas.RegistrarCuenta.SonContraseniasIguales$$() -> i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :76 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = constant 0 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :78 :27) // false
%1 = cbde.alloca i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :78 :17) // iguales
cbde.store %0, %1 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :78 :17)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :80 :16) // Not a variable of known type: contraseniaIngresada
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :80 :16) // contraseniaIngresada.Password (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :80 :16) // contraseniaIngresada.Password.Trim() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :80 :56) // Not a variable of known type: contraseniaDosIngresada
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :80 :56) // contraseniaDosIngresada.Password (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :80 :56) // contraseniaDosIngresada.Password.Trim() (InvocationExpression)
%8 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :80 :16) // comparison of unknown type: contraseniaIngresada.Password.Trim() == contraseniaDosIngresada.Password.Trim()
cond_br %8, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :80 :16)

^1: // SimpleBlock
%9 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :82 :26) // true
cbde.store %9, %1 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :82 :16)
br ^3

^2: // SimpleBlock
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :86 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.Registro_MensajeContraseñasTitulo,                      Contenido = Properties.Resources.Registro_MensajeContraseñasContenido                  } (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :88 :36) // Properties.Resources (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :88 :36) // Properties.Resources.Registro_MensajeContraseñasTitulo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :89 :32) // Properties.Resources (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :89 :32) // Properties.Resources.Registro_MensajeContraseñasContenido (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :86 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.Registro_MensajeContraseñasTitulo,                      Contenido = Properties.Resources.Registro_MensajeContraseñasContenido                  }.ShowDialog() (InvocationExpression)
br ^3

^3: // JumpBlock
%16 = cbde.load %1 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :93 :19)
return %16 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :93 :12)

^4: // ExitBlock
cbde.unreachable

}
func @_UNOGui.Paginas.RegistrarCuenta.CorreoValido$$() -> i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :96 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = constant 0 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :98 :26) // false
%1 = cbde.alloca i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :98 :17) // valido
cbde.store %0, %1 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :98 :17)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :100 :36) // "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :100 :26) // new Regex("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$") (ObjectCreationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :102 :16) // Not a variable of known type: email
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :102 :30) // Not a variable of known type: correoElectronicoIngresado
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :102 :30) // correoElectronicoIngresado.Text (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :102 :30) // correoElectronicoIngresado.Text.Trim() (InvocationExpression)
%9 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :102 :16) // email.IsMatch(correoElectronicoIngresado.Text.Trim()) (InvocationExpression)
cond_br %9, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :102 :16)

^1: // SimpleBlock
%10 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :104 :25) // true
cbde.store %10, %1 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :104 :16)
br ^3

^2: // SimpleBlock
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :108 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.Registro_MensajeCorreoTitulo,                      Contenido = Properties.Resources.Registro_MensajeCorreoContenido                  } (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :110 :36) // Properties.Resources (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :110 :36) // Properties.Resources.Registro_MensajeCorreoTitulo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :111 :32) // Properties.Resources (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :111 :32) // Properties.Resources.Registro_MensajeCorreoContenido (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :108 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.Registro_MensajeCorreoTitulo,                      Contenido = Properties.Resources.Registro_MensajeCorreoContenido                  }.ShowDialog() (InvocationExpression)
br ^3

^3: // JumpBlock
%17 = cbde.load %1 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :115 :19)
return %17 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistrarCuenta.xaml.cs" :115 :12)

^4: // ExitBlock
cbde.unreachable

}
