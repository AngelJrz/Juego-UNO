func @_UNOGui.Paginas.VerificarCodigo.IrARecuperacionDeCuenta$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :16 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :16 :45)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :16 :45)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :16 :60)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :16 :60)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CamposCompletos
%2 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :18 :16) // CamposCompletos() (InvocationExpression)
cond_br %2, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :18 :16)

^2: // SimpleBlock
// Entity from another assembly: MessageBox
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :29 :32) // "El campo no esta completo" (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :29 :16) // MessageBox.Show("El campo no esta completo") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.VerificarCodigo.Cancelar$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :33 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :33 :30)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :33 :30)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :33 :45)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :33 :45)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :35 :12) // Identifier from another assembly: NavigationService
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :35 :12) // NavigationService.GoBack() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.VerificarCodigo.CamposCompletos$$() -> i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :38 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :40 :19) // Not a variable of known type: codigoIngresado
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :40 :19) // codigoIngresado.Text (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :40 :19) // codigoIngresado.Text.Trim() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :40 :50) // "" (StringLiteralExpression)
%4 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :40 :19) // comparison of unknown type: codigoIngresado.Text.Trim() != ""
return %4 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\VerificarCodigo.xaml.cs" :40 :12)

^1: // ExitBlock
cbde.unreachable

}
