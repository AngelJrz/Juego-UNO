func @_UNOGui.Ventanas.Mensaje.CerrarVentana$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Mensaje.xaml.cs" :37 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Mensaje.xaml.cs" :37 :35)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Mensaje.xaml.cs" :37 :35)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Mensaje.xaml.cs" :37 :50)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Mensaje.xaml.cs" :37 :50)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Mensaje.xaml.cs" :39 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Mensaje.xaml.cs" :39 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
