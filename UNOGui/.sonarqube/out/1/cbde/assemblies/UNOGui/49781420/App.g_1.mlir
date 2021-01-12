func @_UNOGui.App.InitializeComponent$$() -> () loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :47 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :50 :16) // Not a variable of known type: _contentLoaded
cond_br %0, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :50 :16)

^1: // JumpBlock
return loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :51 :16)

^2: // SimpleBlock
%1 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :53 :29) // true
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :56 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :56 :12) // this.StartupUri (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :56 :45) // "Ventanas/Principal.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :56 :72) // System.UriKind (SimpleMemberAccessExpression)
%6 = constant unit loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :56 :72) // System.UriKind.Relative (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :56 :30) // new System.Uri("Ventanas/Principal.xaml", System.UriKind.Relative) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :60 :56) // "/UNOGui;component/app.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :60 :86) // System.UriKind (SimpleMemberAccessExpression)
%10 = constant unit loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :60 :86) // System.UriKind.Relative (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :60 :41) // new System.Uri("/UNOGui;component/app.xaml", System.UriKind.Relative) (ObjectCreationExpression)
// Entity from another assembly: System
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :63 :12) // System.Windows.Application (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :63 :53) // this (ThisExpression)
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :63 :59) // Not a variable of known type: resourceLocater
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :63 :12) // System.Windows.Application.LoadComponent(this, resourceLocater) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_UNOGui.App.Main$$() -> () loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :72 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :76 :29) // new UNOGui.App() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :77 :12) // Not a variable of known type: app
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :77 :12) // app.InitializeComponent() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :78 :12) // Not a variable of known type: app
%5 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\App.g.cs" :78 :12) // app.Run() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
