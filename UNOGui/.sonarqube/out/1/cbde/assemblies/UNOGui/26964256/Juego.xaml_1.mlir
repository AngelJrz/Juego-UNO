func @_UNOGui.Ventanas.Juego.RegresarMenuPrincipal$object.System.ComponentModel.CancelEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Juego.xaml.cs" :28 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Juego.xaml.cs" :28 :43)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Juego.xaml.cs" :28 :43)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Juego.xaml.cs" :28 :58)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Juego.xaml.cs" :28 :58)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Juego.xaml.cs" :30 :42) // Application.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Juego.xaml.cs" :30 :42) // Application.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Juego.xaml.cs" :30 :42) // Application.Current.Windows.OfType<MenuPrincipal>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Juego.xaml.cs" :30 :42) // Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Juego.xaml.cs" :31 :12) // Not a variable of known type: menuPrincipal
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Ventanas\\Juego.xaml.cs" :31 :12) // menuPrincipal.Show() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
