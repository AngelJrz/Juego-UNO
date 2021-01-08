func @_UNOGui.Paginas.IndexConverter.Convert$object.System.Type.object.System.Globalization.CultureInfo$(none, none, none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :23 :8) {
^entry (%_value : none, %_TargetType : none, %_parameter : none, %_culture : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :23 :30)
cbde.store %_value, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :23 :30)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :23 :44)
cbde.store %_TargetType, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :23 :44)
%2 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :23 :61)
cbde.store %_parameter, %2 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :23 :61)
%3 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :23 :79)
cbde.store %_culture, %3 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :23 :79)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :25 :37) // Not a variable of known type: value
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :25 :23) // (ListViewItem)value (CastExpression)
// Entity from another assembly: ItemsControl
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :26 :70) // Not a variable of known type: item
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :26 :27) // ItemsControl.ItemsControlFromItemContainer(item) (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :26 :27) // ItemsControl.ItemsControlFromItemContainer(item) as ListView (AsExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :27 :24) // Not a variable of known type: listView
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :27 :24) // listView.ItemContainerGenerator (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :27 :75) // Not a variable of known type: item
%14 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :27 :24) // listView.ItemContainerGenerator.IndexFromContainer(item) (InvocationExpression)
%15 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :27 :83)
%16 = addi %14, %15 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :27 :24)
%17 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :27 :16) // index
cbde.store %16, %17 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :27 :16)
%18 = cbde.load %17 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :28 :19)
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :28 :19) // index.ToString() (InvocationExpression)
return %19 : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.Paginas.IndexConverter.ConvertBack$object.System.Type.object.System.Globalization.CultureInfo$(none, none, none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :31 :8) {
^entry (%_value : none, %_targetType : none, %_parameter : none, %_culture : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :31 :34)
cbde.store %_value, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :31 :34)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :31 :48)
cbde.store %_targetType, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :31 :48)
%2 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :31 :65)
cbde.store %_parameter, %2 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :31 :65)
%3 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :31 :83)
cbde.store %_culture, %3 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :31 :83)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :33 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %4 :  none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Inicio.xaml.cs" :33 :12)

^1: // ExitBlock
cbde.unreachable

}
