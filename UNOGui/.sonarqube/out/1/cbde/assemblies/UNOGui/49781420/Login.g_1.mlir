func @_UNOGui.Paginas.Login.InitializeComponent$$() -> () loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :63 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :66 :16) // Not a variable of known type: _contentLoaded
cond_br %0, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :66 :16)

^1: // JumpBlock
return loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :67 :16)

^2: // SimpleBlock
%1 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :69 :29) // true
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :70 :56) // "/UNOGui;component/paginas/login.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :70 :96) // System.UriKind (SimpleMemberAccessExpression)
%4 = constant unit loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :70 :96) // System.UriKind.Relative (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :70 :41) // new System.Uri("/UNOGui;component/paginas/login.xaml", System.UriKind.Relative) (ObjectCreationExpression)
// Entity from another assembly: System
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :73 :12) // System.Windows.Application (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :73 :53) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :73 :59) // Not a variable of known type: resourceLocater
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\Login.g.cs" :73 :12) // System.Windows.Application.LoadComponent(this, resourceLocater) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function Connect(i32, none), it contains poisonous unsupported syntaxes

