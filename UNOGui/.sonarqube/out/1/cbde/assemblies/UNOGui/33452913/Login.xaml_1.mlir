func @_UNOGui.Paginas.Login.IrARegistrarCuenta$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :30 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :30 :40)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :30 :40)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :30 :55)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :30 :55)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :32 :12) // Identifier from another assembly: NavigationService
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :32 :39) // new RegistrarCuenta() (ObjectCreationExpression)
%4 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :32 :12) // NavigationService.Navigate(new RegistrarCuenta()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.Login.IrAVerificarCodigo$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :35 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :35 :40)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :35 :40)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :35 :55)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :35 :55)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :37 :12) // Identifier from another assembly: NavigationService
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :37 :39) // new VerificarCodigo() (ObjectCreationExpression)
%4 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Login.xaml.cs" :37 :12) // NavigationService.Navigate(new VerificarCodigo()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function IniciarSesionBoton(none, none), it contains poisonous unsupported syntaxes

// Skipping function CamposCompletos(), it contains poisonous unsupported syntaxes

