// Skipping function CrearSala(none, none), it contains poisonous unsupported syntaxes

func @_UNOGui.Paginas.CreacionDeSala.ObtenerJugadores$$() -> i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :67 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :69 :39) // Not a variable of known type: numeroDeJugadores
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :69 :39) // numeroDeJugadores.SelectedValue (SimpleMemberAccessExpression)
%2 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :69 :34) // (int)numeroDeJugadores.SelectedValue (CastExpression)
%3 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :69 :16) // numeroJugadores
cbde.store %2, %3 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :69 :16)
%4 = cbde.load %3 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :71 :19)
return %4 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :71 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function CamposCompletos(), it contains poisonous unsupported syntaxes

func @_UNOGui.Paginas.CreacionDeSala.LimpiarCampos$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :79 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :81 :12) // Not a variable of known type: contrasenia
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :81 :12) // contrasenia.Password (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :81 :35) // "" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :82 :12) // Not a variable of known type: numeroDeJugadores
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :82 :12) // numeroDeJugadores.SelectedItem (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\CreacionDeSala.xaml.cs" :82 :45) // null (NullLiteralExpression)
br ^1

^1: // ExitBlock
return

}
