func @_UNOGui.Paginas.VerificarCodigo.InitializeComponent$$() -> () loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :56 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :59 :16) // Not a variable of known type: _contentLoaded
cond_br %0, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :59 :16)

^1: // JumpBlock
return loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :60 :16)

^2: // SimpleBlock
%1 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :62 :29) // true
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :63 :56) // "/UNOGui;component/paginas/verificarcodigo.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :63 :106) // System.UriKind (SimpleMemberAccessExpression)
%4 = constant unit loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :63 :106) // System.UriKind.Relative (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :63 :41) // new System.Uri("/UNOGui;component/paginas/verificarcodigo.xaml", System.UriKind.Relative) (ObjectCreationExpression)
// Entity from another assembly: System
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :66 :12) // System.Windows.Application (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :66 :53) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :66 :59) // Not a variable of known type: resourceLocater
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\obj\\Debug\\Paginas\\VerificarCodigo.g.cs" :66 :12) // System.Windows.Application.LoadComponent(this, resourceLocater) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function Connect(i32, none), it contains poisonous unsupported syntaxes

