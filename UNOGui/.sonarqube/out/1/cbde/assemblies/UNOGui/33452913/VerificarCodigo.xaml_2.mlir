func @_UNOGui.Ventanas.VerificarCodigo.IrARecuperacionDeCuenta$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :26 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :26 :45)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :26 :45)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :26 :60)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :26 :60)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CamposCompletos
%2 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :28 :16) // CamposCompletos() (InvocationExpression)
cond_br %2, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :28 :16)

^1: // SimpleBlock
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :30 :58) // new RecuperacionCuenta() (ObjectCreationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :31 :16) // Not a variable of known type: recuperacionDeCuenta
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :31 :16) // recuperacionDeCuenta.Show() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :33 :16) // this (ThisExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :33 :16) // this.Close() (InvocationExpression)
br ^3

^2: // SimpleBlock
// Entity from another assembly: MessageBox
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :37 :32) // "El campo no esta completo" (StringLiteralExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :37 :16) // MessageBox.Show("El campo no esta completo") (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_UNOGui.Ventanas.VerificarCodigo.Cancelar$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :41 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :41 :30)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :41 :30)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :41 :45)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :41 :45)
br ^0

^0: // ExitBlock
return

}
func @_UNOGui.Ventanas.VerificarCodigo.CamposCompletos$$() -> i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :51 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :53 :19) // Not a variable of known type: codigoIngresado
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :53 :19) // codigoIngresado.Text (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :53 :19) // codigoIngresado.Text.Trim() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :53 :50) // "" (StringLiteralExpression)
%4 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :53 :19) // comparison of unknown type: codigoIngresado.Text.Trim() != ""
return %4 : i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\VerificarCodigo.xaml.cs" :53 :12)

^1: // ExitBlock
cbde.unreachable

}
