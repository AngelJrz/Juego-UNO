func @_UNOGui.Paginas.UnirseASala.Unirse$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :30 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :30 :28)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :30 :28)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :30 :43)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :30 :43)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CamposCompletos
%2 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :32 :16) // CamposCompletos() (InvocationExpression)
cond_br %2, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :32 :16)

^1: // SimpleBlock
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :34 :35) // new Sala                  {                      Id = nombreSala.Text,                      Contraseña = contrasenia.Password                  } (ObjectCreationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :36 :25) // Not a variable of known type: nombreSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :36 :25) // nombreSala.Text (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :37 :33) // Not a variable of known type: contrasenia
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :37 :33) // contrasenia.Password (SimpleMemberAccessExpression)
// Entity from another assembly: Window
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :40 :47) // this (ThisExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :40 :30) // Window.GetWindow(this) (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :40 :30) // Window.GetWindow(this).DataContext (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :40 :30) // Window.GetWindow(this).DataContext as Jugador (AsExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SalaAdmin
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :42 :38) // Not a variable of known type: salaAUnirse
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :42 :51) // Not a variable of known type: jugador
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :42 :16) // SalaAdmin.UnirseASala(salaAUnirse, jugador) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LimpiarCampos
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :43 :16) // LimpiarCampos() (InvocationExpression)
br ^3

^2: // SimpleBlock
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :47 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.CamposIncompletosTitulo,                      Contenido = Properties.Resources.UnirseSala_CamposIncompletosMensaje                  } (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :49 :36) // Properties.Resources (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :49 :36) // Properties.Resources.CamposIncompletosTitulo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :50 :32) // Properties.Resources (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :50 :32) // Properties.Resources.UnirseSala_CamposIncompletosMensaje (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :47 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.CamposIncompletosTitulo,                      Contenido = Properties.Resources.UnirseSala_CamposIncompletosMensaje                  }.ShowDialog() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_UNOGui.Paginas.UnirseASala.LimpiarCampos$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :55 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :57 :12) // Not a variable of known type: nombreSala
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :57 :12) // nombreSala.Text (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :57 :30) // "" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :58 :12) // Not a variable of known type: contrasenia
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :58 :12) // contrasenia.Password (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\UnirseASala.xaml.cs" :58 :35) // "" (StringLiteralExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function CamposCompletos(), it contains poisonous unsupported syntaxes

