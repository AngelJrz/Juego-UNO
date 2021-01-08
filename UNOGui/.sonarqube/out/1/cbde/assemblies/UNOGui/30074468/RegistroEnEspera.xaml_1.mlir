// Skipping function CancelarRegistro(none, none), it contains poisonous unsupported syntaxes

// Skipping function ConfirmarRegistro(none, none), it contains poisonous unsupported syntaxes

func @_UNOGui.Paginas.RegistroEnEspera.IniciarTemporizador$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :67 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :69 :27) // new DispatcherTimer              {                  Interval = new TimeSpan(0, 0, 1)              } (ObjectCreationExpression)
%1 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :71 :40)
%2 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :71 :43)
%3 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :71 :46)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :71 :27) // new TimeSpan(0, 0, 1) (ObjectCreationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :74 :12) // Not a variable of known type: temporizador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :74 :12) // temporizador.Tick (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Temporizador_Tick
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :74 :12) // Binary expression on unsupported types temporizador.Tick += Temporizador_Tick
// No identifier name for binary assignment expression
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :75 :12) // Not a variable of known type: temporizador
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :75 :12) // temporizador.Start() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.Paginas.RegistroEnEspera.Temporizador_Tick$object.System.EventArgs$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :78 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :78 :39)
cbde.store %_sender, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :78 :39)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :78 :54)
cbde.store %_e, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :78 :54)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :80 :16) // Not a variable of known type: tiempoDeTemporizador
%3 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :80 :39)
%4 = cmpi "sgt", %2, %3 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :80 :16)
cond_br %4, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :80 :16)

^1: // SimpleBlock
%5 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :82 :16) // Not a variable of known type: tiempoDeTemporizador
%6 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :82 :16) // Inc/Decrement of field or property tiempoDeTemporizador
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :83 :33) // Properties.Resources (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :83 :33) // Properties.Resources.Temporizador_Mensaje (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :16) // Not a variable of known type: temporizadorTexto
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :16) // temporizadorTexto.Text (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :41) // string (PredefinedType)
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :55) // "{0} 00:0{1}:{2}" (StringLiteralExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :74) // Not a variable of known type: mensaje
%15 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :83) // Not a variable of known type: tiempoDeTemporizador
%16 = constant 60 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :106)
%17 = divis %15, %16 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :83)
%18 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :110) // Not a variable of known type: tiempoDeTemporizador
%19 = constant 60 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :133)
%20 = remis %18, %19 : i32 loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :110)
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :84 :41) // string.Format("{0} 00:0{1}:{2}", mensaje, tiempoDeTemporizador / 60, tiempoDeTemporizador % 60) (InvocationExpression)
br ^3

^2: // SimpleBlock
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :88 :16) // Not a variable of known type: temporizador
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :88 :16) // temporizador.Stop() (InvocationExpression)
%24 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :89 :16) // Not a variable of known type: temporizadorTexto
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :89 :16) // temporizadorTexto.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :89 :47) // Visibility.Collapsed (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :90 :16) // Not a variable of known type: enviarCorreoBotton
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :90 :16) // enviarCorreoBotton.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%29 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Paginas\\RegistroEnEspera.xaml.cs" :90 :48) // Visibility.Visible (SimpleMemberAccessExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function EnviarCorreo(none, none), it contains poisonous unsupported syntaxes

