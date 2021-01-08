func @_UNOGui.Ventanas.Principal.InitializeComponent$$() -> () loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :47 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :50 :16) // Not a variable of known type: _contentLoaded
cond_br %0, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :50 :16)

^1: // JumpBlock
return loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :51 :16)

^2: // SimpleBlock
%1 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :53 :29) // true
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :54 :56) // "/UNOGui;component/ventanas/principal.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :54 :101) // System.UriKind (SimpleMemberAccessExpression)
%4 = constant unit loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :54 :101) // System.UriKind.Relative (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :54 :41) // new System.Uri("/UNOGui;component/ventanas/principal.xaml", System.UriKind.Relative) (ObjectCreationExpression)
// Entity from another assembly: System
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :57 :12) // System.Windows.Application (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :57 :53) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :57 :59) // Not a variable of known type: resourceLocater
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :57 :12) // System.Windows.Application.LoadComponent(this, resourceLocater) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_UNOGui.Ventanas.Principal.System.Windows.Markup.IComponentConnector.Connect$int.object$(i32, none) -> () loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :63 :8) {
^entry (%_connectionId : i32, %_target : none):
%0 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :69 :63)
cbde.store %_connectionId, %0 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :69 :63)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :69 :81)
cbde.store %_target, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :69 :81)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :70 :12) // this (ThisExpression)
%3 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :70 :12) // this._contentLoaded (SimpleMemberAccessExpression)
%4 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Ventanas\\Principal.g.cs" :70 :34) // true
br ^1

^1: // ExitBlock
return

}
