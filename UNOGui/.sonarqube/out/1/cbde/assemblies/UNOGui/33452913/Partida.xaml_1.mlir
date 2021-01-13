func @_UNOGui.Paginas.Partida.EntregarCartas$System.Collections.Generic.List$UNOGui.JuegoUNOServicio.Carta$$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :34 :8) {
^entry (%_cartasDeMano : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :34 :35)
cbde.store %_cartasDeMano, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :34 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :36 :12) // Not a variable of known type: miMazo
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :36 :28) // Not a variable of known type: cartasDeMano
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :36 :12) // miMazo.AddRange(cartasDeMano) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MostrarMano
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :37 :12) // MostrarMano() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function MostrarMano(), it contains poisonous unsupported syntaxes

func @_UNOGui.Paginas.Partida.ObtenerMiPuntaje$$() -> i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :64 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :66 :19) // int (PredefinedType)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :66 :29) // Not a variable of known type: miPuntajeText
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :66 :29) // miPuntajeText.Text (SimpleMemberAccessExpression)
%3 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :66 :19) // int.Parse(miPuntajeText.Text) (InvocationExpression)
return %3 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :66 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function RenderizarImagen(none), it contains poisonous unsupported syntaxes

func @_UNOGui.Paginas.Partida.ActualizarMiPuntaje$int$(i32) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :126 :8) {
^entry (%_puntaje : i32):
%0 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :126 :41)
cbde.store %_puntaje, %0 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :126 :41)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :128 :31) // int (PredefinedType)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :128 :41) // Not a variable of known type: miPuntajeText
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :128 :41) // miPuntajeText.Text (SimpleMemberAccessExpression)
%4 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :128 :31) // int.Parse(miPuntajeText.Text) (InvocationExpression)
%5 = cbde.load %0 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :128 :63)
%6 = addi %4, %5 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :128 :31)
%7 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :128 :16) // nuevoPuntaje
cbde.store %6, %7 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :128 :16)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :130 :12) // Not a variable of known type: miPuntajeText
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :130 :12) // miPuntajeText.Text (SimpleMemberAccessExpression)
%10 = cbde.load %7 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :130 :33)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :130 :33) // nuevoPuntaje.ToString() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.Partida.ActualizarCartaCentral$UNOGui.JuegoUNOServicio.Carta$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :137 :8) {
^entry (%_nuevaCarta : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :137 :43)
cbde.store %_nuevaCarta, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :137 :43)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :139 :29) // Not a variable of known type: nuevaCarta
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :141 :30) // new BitmapImage() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :142 :12) // Not a variable of known type: src
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :142 :12) // src.BeginInit() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :143 :12) // Not a variable of known type: src
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :143 :12) // src.UriSource (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :143 :36) // Not a variable of known type: nuevaCarta
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :143 :36) // nuevaCarta.Rutak__BackingField (SimpleMemberAccessExpression)
// Entity from another assembly: UriKind
%10 = constant unit loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :143 :68) // UriKind.Relative (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :143 :28) // new Uri(nuevaCarta.Rutak__BackingField, UriKind.Relative) (ObjectCreationExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :144 :12) // Not a variable of known type: src
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :144 :12) // src.EndInit() (InvocationExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :145 :12) // Not a variable of known type: cartaCentral
%15 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :145 :12) // cartaCentral.Source (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :145 :34) // Not a variable of known type: src
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.Partida.AniadirCarta$UNOGui.JuegoUNOServicio.Carta$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :152 :8) {
^entry (%_nuevaCarta : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :152 :33)
cbde.store %_nuevaCarta, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :152 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :154 :12) // Not a variable of known type: miMazo
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :154 :23) // Not a variable of known type: nuevaCarta
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :154 :12) // miMazo.Add(nuevaCarta) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MostrarMano
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :155 :12) // MostrarMano() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: PartidaAdmin
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :156 :50) // Not a variable of known type: miSala
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ObtenerMiNickname
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :156 :58) // ObtenerMiNickname() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :156 :79) // Not a variable of known type: miMazo
%8 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :156 :79) // miMazo.Count (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :156 :79) // miMazo.Count.ToString() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :156 :12) // PartidaAdmin.ActualizarNumeroDeCartas(miSala, ObtenerMiNickname(), miMazo.Count.ToString()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.Partida.MostrarMensajeGanador$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :163 :8) {
^entry (%_ganador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :163 :42)
cbde.store %_ganador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :163 :42)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :165 :12) // new Mensaje              {                  Title = Properties.Resources.Partida_GanadorMensajeTitulo,                  TituloMensaje = Properties.Resources.Partida_GanadorMensajeTitulo,                  Contenido = $"{Properties.Resources.Partida_GanadorMensajeContenido} {ganador}"              } (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :167 :24) // Properties.Resources (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :167 :24) // Properties.Resources.Partida_GanadorMensajeTitulo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :168 :32) // Properties.Resources (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :168 :32) // Properties.Resources.Partida_GanadorMensajeTitulo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :169 :31) // Properties.Resources (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :169 :31) // Properties.Resources.Partida_GanadorMensajeContenido (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :169 :86) // Not a variable of known type: ganador
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :169 :28) // $"{Properties.Resources.Partida_GanadorMensajeContenido} {ganador}" (InterpolatedStringExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :165 :12) // new Mensaje              {                  Title = Properties.Resources.Partida_GanadorMensajeTitulo,                  TituloMensaje = Properties.Resources.Partida_GanadorMensajeTitulo,                  Contenido = $"{Properties.Resources.Partida_GanadorMensajeContenido} {ganador}"              }.ShowDialog() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TerminarPartida
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :172 :12) // TerminarPartida() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.Partida.TerminarPartida$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :175 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :177 :33) // Application.Current (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :177 :33) // Application.Current.Windows (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :177 :33) // Application.Current.Windows.OfType<Juego>() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :177 :33) // Application.Current.Windows.OfType<Juego>().SingleOrDefault() (InvocationExpression)
// Entity from another assembly: Application
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :178 :40) // Application.Current (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :178 :40) // Application.Current.Windows (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :178 :40) // Application.Current.Windows.OfType<MenuPrincipal>() (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :178 :40) // Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :179 :12) // Not a variable of known type: ventanaJuego
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :179 :12) // ventanaJuego.Close() (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :180 :12) // Not a variable of known type: ventanaMenu
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :180 :12) // ventanaMenu.Show() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.Partida.TomarCarta$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :183 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :183 :32)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :183 :32)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :183 :47)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :183 :47)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ObtenerMiNickname
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :185 :32) // ObtenerMiNickname() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: PartidaAdmin
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :187 :36) // Not a variable of known type: miSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :187 :44) // Not a variable of known type: miNickname
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :187 :12) // PartidaAdmin.TomarCarta(miSala, miNickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.Partida.EstablecerJugadorEnTurno$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :194 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :194 :45)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :194 :45)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :196 :12) // Not a variable of known type: turnoActual
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :196 :12) // turnoActual.Text (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :196 :31) // Not a variable of known type: nickname
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.Partida.EsMiTurno$$() -> i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :199 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ObtenerMiNickname
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :201 :32) // ObtenerMiNickname() (InvocationExpression)
%2 = constant 0 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :202 :29) // false
%3 = cbde.alloca i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :202 :17) // esMiTurno
cbde.store %2, %3 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :202 :17)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :204 :16) // Not a variable of known type: turnoActual
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :204 :16) // turnoActual.Text (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :204 :40) // Not a variable of known type: miNickname
%7 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :204 :16) // turnoActual.Text.Equals(miNickname) (InvocationExpression)
cond_br %7, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :204 :16)

^1: // SimpleBlock
%8 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :206 :28) // true
cbde.store %8, %3 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :206 :16)
br ^2

^2: // JumpBlock
%9 = cbde.load %3 : memref<i1> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :209 :19)
return %9 : i1 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :209 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function PintarJungadores(none), it contains poisonous unsupported syntaxes

func @_UNOGui.Paginas.Partida.ObtenerMiNickname$$() -> none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :246 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Application
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :248 :41) // Application.Current (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :248 :41) // Application.Current.Windows (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :248 :41) // Application.Current.Windows.OfType<MenuPrincipal>() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :248 :41) // Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :249 :36) // Not a variable of known type: ventanaJuego
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :249 :36) // ventanaJuego.DataContext (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :249 :36) // ventanaJuego.DataContext as Jugador (AsExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :250 :32) // Not a variable of known type: jugadorActual
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :250 :32) // jugadorActual.Nickname (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :252 :19) // Not a variable of known type: miNickname
return %12 : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :252 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function ActualizarNumeroCartas(none, none), it contains poisonous unsupported syntaxes

// Skipping function ActualizarPuntajeDeJugador(none, i32), it contains poisonous unsupported syntaxes

func @_UNOGui.Paginas.Partida.SalirDePartida$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :295 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :295 :36)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :295 :36)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :295 :51)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :295 :51)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SalaAdmin
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :297 :34) // Not a variable of known type: miSala
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ObtenerMiNickname
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :297 :42) // ObtenerMiNickname() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\Partida.xaml.cs" :297 :12) // SalaAdmin.SalirDeSala(miSala, ObtenerMiNickname()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function SacarJugador(none), it contains poisonous unsupported syntaxes

