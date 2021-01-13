func @_UNOGui.Ventanas.RecuperacionCuenta.CambiarContrasenia$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :14 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :14 :40)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :14 :40)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :14 :55)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :14 :55)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CamposCompletos
%2 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :16 :16) // CamposCompletos() (InvocationExpression)
cond_br %2, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :16 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :18 :32) // "Contraseña cambiada" (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :18 :16) // MessageBox.Show("Contraseña cambiada") (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_UNOGui.Ventanas.RecuperacionCuenta.Cancelar$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :22 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :22 :30)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :22 :30)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :22 :45)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\RecuperacionCuenta.xaml.cs" :22 :45)
br ^0

^0: // ExitBlock
return

}
// Skipping function CamposCompletos(), it contains poisonous unsupported syntaxes

