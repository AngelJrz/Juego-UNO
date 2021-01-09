// Skipping function ObtenerIdiomaActual(), it contains poisonous unsupported syntaxes

func @_UNOGui.Paginas.MiPerfil.GuardarCambios$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :59 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :59 :36)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :59 :36)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :59 :51)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :59 :51)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :61 :16) // Not a variable of known type: cambioIdioma
cond_br %2, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :61 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CambiarIdioma
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :63 :16) // CambiarIdioma() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :64 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.Mensaje_CambioIdiomaTitulo,                      Contenido = Properties.Resources.Mensaje_CambioIdiomaMensaje,                      Title = Properties.Resources.Mensaje_CambioIdiomaTitulo                  } (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :66 :36) // Properties.Resources (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :66 :36) // Properties.Resources.Mensaje_CambioIdiomaTitulo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :67 :32) // Properties.Resources (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :67 :32) // Properties.Resources.Mensaje_CambioIdiomaMensaje (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :68 :28) // Properties.Resources (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :68 :28) // Properties.Resources.Mensaje_CambioIdiomaTitulo (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :64 :16) // new Mensaje                  {                      TituloMensaje = Properties.Resources.Mensaje_CambioIdiomaTitulo,                      Contenido = Properties.Resources.Mensaje_CambioIdiomaMensaje,                      Title = Properties.Resources.Mensaje_CambioIdiomaTitulo                  }.ShowDialog() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AbrirLogin
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :71 :16) // AbrirLogin() (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_UNOGui.Paginas.MiPerfil.AbrirLogin$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :75 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :77 :30) // new Principal() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :78 :12) // Not a variable of known type: login
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :78 :12) // login.Show() (InvocationExpression)
// Entity from another assembly: Window
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :79 :29) // this (ThisExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :79 :12) // Window.GetWindow(this) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :79 :12) // Window.GetWindow(this).Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.MiPerfil.CambiarIdioma$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :82 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :84 :12) // Properties.Settings (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :84 :12) // Properties.Settings.Default (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :84 :12) // Properties.Settings.Default.Idioma (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :84 :49) // Not a variable of known type: idiomaSeleccionado
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :84 :49) // idiomaSeleccionado.Nomenclatura (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :85 :12) // Properties.Settings (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :85 :12) // Properties.Settings.Default (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :85 :12) // Properties.Settings.Default.Save() (InvocationExpression)
// Entity from another assembly: Thread
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :86 :12) // Thread.CurrentThread (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :86 :12) // Thread.CurrentThread.CurrentUICulture (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :86 :89) // Not a variable of known type: idiomaSeleccionado
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :86 :89) // idiomaSeleccionado.Nomenclatura (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :86 :52) // new System.Globalization.CultureInfo(idiomaSeleccionado.Nomenclatura) (ObjectCreationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.MiPerfil.VerificarSeleccion$object.System.Windows.Controls.SelectionChangedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :89 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :89 :40)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :89 :40)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :89 :55)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :89 :55)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :91 :33) // Not a variable of known type: idiomaCombobox
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :91 :33) // idiomaCombobox.SelectedItem (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :91 :33) // idiomaCombobox.SelectedItem as Idioma (AsExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :93 :17) // Not a variable of known type: idiomaSeleccionado
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :93 :17) // idiomaSeleccionado.Nomenclatura (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :93 :56) // Not a variable of known type: nomenclaturaIdiomaActual
%8 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :93 :17) // idiomaSeleccionado.Nomenclatura.Equals(nomenclaturaIdiomaActual) (InvocationExpression)
%9 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :93 :16) // !idiomaSeleccionado.Nomenclatura.Equals(nomenclaturaIdiomaActual) (LogicalNotExpression)
cond_br %9, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :93 :16)

^1: // SimpleBlock
%10 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :95 :31) // true
br ^3

^2: // SimpleBlock
%11 = constant 0 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\MiPerfil.xaml.cs" :99 :31) // false
br ^3

^3: // ExitBlock
return

}
