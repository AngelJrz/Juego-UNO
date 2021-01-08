func @_UNOGui.JuegoUNOServicio.Jugador.RaisePropertyChanged$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :180 :8) {
^entry (%_propertyName : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :180 :44)
cbde.store %_propertyName, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :180 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :181 :80) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :181 :80) // this.PropertyChanged (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :182 :17) // Not a variable of known type: propertyChanged
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :182 :36) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :182 :17) // comparison of unknown type: propertyChanged != null
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :182 :17)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :183 :16) // Not a variable of known type: propertyChanged
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :183 :32) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :183 :89) // Not a variable of known type: propertyName
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :183 :38) // new System.ComponentModel.PropertyChangedEventArgs(propertyName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :183 :16) // propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.Sala.RaisePropertyChanged$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :336 :8) {
^entry (%_propertyName : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :336 :44)
cbde.store %_propertyName, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :336 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :337 :80) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :337 :80) // this.PropertyChanged (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :338 :17) // Not a variable of known type: propertyChanged
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :338 :36) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :338 :17) // comparison of unknown type: propertyChanged != null
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :338 :17)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :339 :16) // Not a variable of known type: propertyChanged
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :339 :32) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :339 :89) // Not a variable of known type: propertyName
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :339 :38) // new System.ComponentModel.PropertyChangedEventArgs(propertyName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :339 :16) // propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.RegistrarJugador$UNOGui.JuegoUNOServicio.Jugador$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :437 :8) {
^entry (%_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :437 :37)
cbde.store %_jugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :437 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :438 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :438 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :438 :42) // Not a variable of known type: jugador
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :438 :12) // base.Channel.RegistrarJugador(jugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.RegistrarJugadorAsync$UNOGui.JuegoUNOServicio.Jugador$(none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :441 :8) {
^entry (%_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :441 :65)
cbde.store %_jugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :441 :65)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :442 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :442 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :442 :54) // Not a variable of known type: jugador
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :442 :19) // base.Channel.RegistrarJugadorAsync(jugador) (InvocationExpression)
return %4 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :442 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.VerificarClave$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :445 :8) {
^entry (%_clave : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :445 :35)
cbde.store %_clave, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :445 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :446 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :446 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :446 :40) // Not a variable of known type: clave
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :446 :12) // base.Channel.VerificarClave(clave) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.VerificarClaveAsync$string$(none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :449 :8) {
^entry (%_clave : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :449 :63)
cbde.store %_clave, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :449 :63)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :450 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :450 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :450 :52) // Not a variable of known type: clave
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :450 :19) // base.Channel.VerificarClaveAsync(clave) (InvocationExpression)
return %4 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :450 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.CancelarRegistro$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :453 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :454 :12) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :454 :12) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :454 :12) // base.Channel.CancelarRegistro() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.CancelarRegistroAsync$$() -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :457 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :458 :19) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :458 :19) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :458 :19) // base.Channel.CancelarRegistroAsync() (InvocationExpression)
return %2 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :458 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.EnviarClaveDeNuevo$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :461 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :462 :12) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :462 :12) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :462 :12) // base.Channel.EnviarClaveDeNuevo() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.EnviarClaveDeNuevoAsync$$() -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :465 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :466 :19) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :466 :19) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :466 :19) // base.Channel.EnviarClaveDeNuevoAsync() (InvocationExpression)
return %2 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :466 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.LoginClient.IniciarSesion$string.string$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :519 :8) {
^entry (%_nickname : none, %_contrase.F1a : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :519 :34)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :519 :34)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :519 :51)
cbde.store %_contrase.F1a, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :519 :51)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :520 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :520 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :520 :39) // Not a variable of known type: nickname
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :520 :49) // Not a variable of known type: contraseña
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :520 :12) // base.Channel.IniciarSesion(nickname, contraseña) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.LoginClient.IniciarSesionAsync$string.string$(none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :523 :8) {
^entry (%_nickname : none, %_contrase.F1a : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :523 :62)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :523 :62)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :523 :79)
cbde.store %_contrase.F1a, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :523 :79)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :524 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :524 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :524 :51) // Not a variable of known type: nickname
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :524 :61) // Not a variable of known type: contraseña
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :524 :19) // base.Channel.IniciarSesionAsync(nickname, contraseña) (InvocationExpression)
return %6 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :524 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.PerfilClient.BuscarJugador$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :574 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :574 :34)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :574 :34)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :575 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :575 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :575 :39) // Not a variable of known type: nickname
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :575 :12) // base.Channel.BuscarJugador(nickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.PerfilClient.BuscarJugadorAsync$string$(none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :578 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :578 :62)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :578 :62)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :579 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :579 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :579 :51) // Not a variable of known type: nickname
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :579 :19) // base.Channel.BuscarJugadorAsync(nickname) (InvocationExpression)
return %4 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :579 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.CrearSala$UNOGui.JuegoUNOServicio.Sala.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :683 :8) {
^entry (%_nuevaSala : none, %_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :683 :30)
cbde.store %_nuevaSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :683 :30)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :683 :70)
cbde.store %_jugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :683 :70)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :684 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :684 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :684 :35) // Not a variable of known type: nuevaSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :684 :46) // Not a variable of known type: jugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :684 :12) // base.Channel.CrearSala(nuevaSala, jugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.CrearSalaAsync$UNOGui.JuegoUNOServicio.Sala.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :687 :8) {
^entry (%_nuevaSala : none, %_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :687 :58)
cbde.store %_nuevaSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :687 :58)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :687 :98)
cbde.store %_jugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :687 :98)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :688 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :688 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :688 :47) // Not a variable of known type: nuevaSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :688 :58) // Not a variable of known type: jugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :688 :19) // base.Channel.CrearSalaAsync(nuevaSala, jugador) (InvocationExpression)
return %6 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :688 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.UnirseASala$UNOGui.JuegoUNOServicio.Sala.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :691 :8) {
^entry (%_salaAUnirse : none, %_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :691 :32)
cbde.store %_salaAUnirse, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :691 :32)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :691 :74)
cbde.store %_jugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :691 :74)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :692 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :692 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :692 :37) // Not a variable of known type: salaAUnirse
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :692 :50) // Not a variable of known type: jugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :692 :12) // base.Channel.UnirseASala(salaAUnirse, jugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.UnirseASalaAsync$UNOGui.JuegoUNOServicio.Sala.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :695 :8) {
^entry (%_salaAUnirse : none, %_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :695 :60)
cbde.store %_salaAUnirse, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :695 :60)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :695 :102)
cbde.store %_jugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :695 :102)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :696 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :696 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :696 :49) // Not a variable of known type: salaAUnirse
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :696 :62) // Not a variable of known type: jugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :696 :19) // base.Channel.UnirseASalaAsync(salaAUnirse, jugador) (InvocationExpression)
return %6 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :696 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.SalirDeSala$string.string$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :699 :8) {
^entry (%_idSala : none, %_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :699 :32)
cbde.store %_idSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :699 :32)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :699 :47)
cbde.store %_nickname, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :699 :47)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :700 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :700 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :700 :37) // Not a variable of known type: idSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :700 :45) // Not a variable of known type: nickname
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :700 :12) // base.Channel.SalirDeSala(idSala, nickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.SalirDeSalaAsync$string.string$(none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :703 :8) {
^entry (%_idSala : none, %_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :703 :60)
cbde.store %_idSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :703 :60)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :703 :75)
cbde.store %_nickname, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :703 :75)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :704 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :704 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :704 :49) // Not a variable of known type: idSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :704 :57) // Not a variable of known type: nickname
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :704 :19) // base.Channel.SalirDeSalaAsync(idSala, nickname) (InvocationExpression)
return %6 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :704 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.IniciarPartida$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :707 :8) {
^entry (%_idSala : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :707 :35)
cbde.store %_idSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :707 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :708 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :708 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :708 :40) // Not a variable of known type: idSala
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :708 :12) // base.Channel.IniciarPartida(idSala) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.IniciarPartidaAsync$string$(none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :711 :8) {
^entry (%_idSala : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :711 :63)
cbde.store %_idSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :711 :63)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :712 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :712 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :712 :52) // Not a variable of known type: idSala
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :712 :19) // base.Channel.IniciarPartidaAsync(idSala) (InvocationExpression)
return %4 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :712 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.RepartirCartas$UNOGui.JuegoUNOServicio.Sala$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :715 :8) {
^entry (%_sala : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :715 :35)
cbde.store %_sala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :715 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :716 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :716 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :716 :40) // Not a variable of known type: sala
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :716 :12) // base.Channel.RepartirCartas(sala) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.RepartirCartasAsync$UNOGui.JuegoUNOServicio.Sala$(none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :719 :8) {
^entry (%_sala : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :719 :63)
cbde.store %_sala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :719 :63)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :720 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :720 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :720 :52) // Not a variable of known type: sala
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :720 :19) // base.Channel.RepartirCartasAsync(sala) (InvocationExpression)
return %4 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :720 :12)

^1: // ExitBlock
cbde.unreachable

}
