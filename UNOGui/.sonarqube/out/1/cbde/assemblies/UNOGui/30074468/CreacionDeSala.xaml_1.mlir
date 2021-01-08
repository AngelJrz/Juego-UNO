func @_UNOGui.Paginas.CreacionDeSala.CrearSala$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :38 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :38 :31)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :38 :31)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :38 :46)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :38 :46)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CamposCompletos
%2 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :40 :16) // CamposCompletos() (InvocationExpression)
cond_br %2, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :40 :16)

^1: // SimpleBlock
// Entity from another assembly: Window
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :42 :47) // this (ThisExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :42 :30) // Window.GetWindow(this) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :42 :30) // Window.GetWindow(this).DataContext (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :42 :30) // Window.GetWindow(this).DataContext as Jugador (AsExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :44 :33) // new Sala                  {                      Contraseña = contrasenia.Password,                      NumeroTotalDeJugadores = ObtenerJugadores(),                      CreadaPor = jugador.Nickname,                      JugadoresEnSala = new Dictionary<Jugador, object>()                  } (ObjectCreationExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :46 :33) // Not a variable of known type: contrasenia
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :46 :33) // contrasenia.Password (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ObtenerJugadores
%11 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :47 :45) // ObtenerJugadores() (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :48 :32) // Not a variable of known type: jugador
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :48 :32) // jugador.Nickname (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :49 :38) // new Dictionary<Jugador, object>() (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SalaAdmin
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :52 :36) // Not a variable of known type: nuevaSala
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :52 :47) // Not a variable of known type: jugador
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :52 :16) // SalaAdmin.CrearSala(nuevaSala, jugador) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LimpiarCampos
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :53 :16) // LimpiarCampos() (InvocationExpression)
br ^3

^2: // SimpleBlock
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :57 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.CamposIncompletosTitulo,                      Contenido = Properties.Resources.CrearSala_CamposIncompletosMensaje                  } (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :59 :36) // Properties.Resources (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :59 :36) // Properties.Resources.CamposIncompletosTitulo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :60 :32) // Properties.Resources (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :60 :32) // Properties.Resources.CrearSala_CamposIncompletosMensaje (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :57 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.CamposIncompletosTitulo,                      Contenido = Properties.Resources.CrearSala_CamposIncompletosMensaje                  }.ShowDialog() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_UNOGui.Paginas.CreacionDeSala.ObtenerJugadores$$() -> i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :65 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :67 :39) // Not a variable of known type: numeroDeJugadores
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :67 :39) // numeroDeJugadores.SelectedValue (SimpleMemberAccessExpression)
%2 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :67 :34) // (int)numeroDeJugadores.SelectedValue (CastExpression)
%3 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :67 :16) // numeroJugadores
cbde.store %2, %3 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :67 :16)
%4 = cbde.load %3 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :69 :19)
return %4 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :69 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function CamposCompletos(), it contains poisonous unsupported syntaxes

func @_UNOGui.Paginas.CreacionDeSala.LimpiarCampos$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :77 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :79 :12) // Not a variable of known type: contrasenia
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :79 :12) // contrasenia.Password (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :79 :35) // "" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :80 :12) // Not a variable of known type: numeroDeJugadores
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :80 :12) // numeroDeJugadores.SelectedItem (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :80 :45) // null (NullLiteralExpression)
br ^1

^1: // ExitBlock
return

}
