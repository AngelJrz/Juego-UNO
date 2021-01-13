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
func @_UNOGui.JuegoUNOServicio.Sala.RaisePropertyChanged$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :355 :8) {
^entry (%_propertyName : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :355 :44)
cbde.store %_propertyName, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :355 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :356 :80) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :356 :80) // this.PropertyChanged (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :357 :17) // Not a variable of known type: propertyChanged
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :357 :36) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :357 :17) // comparison of unknown type: propertyChanged != null
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :357 :17)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :358 :16) // Not a variable of known type: propertyChanged
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :358 :32) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :358 :89) // Not a variable of known type: propertyName
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :358 :38) // new System.ComponentModel.PropertyChangedEventArgs(propertyName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :358 :16) // propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.Partida.RaisePropertyChanged$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :416 :8) {
^entry (%_propertyName : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :416 :44)
cbde.store %_propertyName, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :416 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :417 :80) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :417 :80) // this.PropertyChanged (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :418 :17) // Not a variable of known type: propertyChanged
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :418 :36) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :418 :17) // comparison of unknown type: propertyChanged != null
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :418 :17)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :419 :16) // Not a variable of known type: propertyChanged
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :419 :32) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :419 :89) // Not a variable of known type: propertyName
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :419 :38) // new System.ComponentModel.PropertyChangedEventArgs(propertyName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :419 :16) // propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.Carta.RaisePropertyChanged$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :505 :8) {
^entry (%_propertyName : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :505 :44)
cbde.store %_propertyName, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :505 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :506 :80) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :506 :80) // this.PropertyChanged (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :507 :17) // Not a variable of known type: propertyChanged
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :507 :36) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :507 :17) // comparison of unknown type: propertyChanged != null
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :507 :17)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :508 :16) // Not a variable of known type: propertyChanged
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :508 :32) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :508 :89) // Not a variable of known type: propertyName
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :508 :38) // new System.ComponentModel.PropertyChangedEventArgs(propertyName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :508 :16) // propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.RegistrarJugador$UNOGui.JuegoUNOServicio.Jugador$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :649 :8) {
^entry (%_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :649 :37)
cbde.store %_jugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :649 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :650 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :650 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :650 :42) // Not a variable of known type: jugador
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :650 :12) // base.Channel.RegistrarJugador(jugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.RegistrarJugadorAsync$UNOGui.JuegoUNOServicio.Jugador$(none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :653 :8) {
^entry (%_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :653 :65)
cbde.store %_jugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :653 :65)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :654 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :654 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :654 :54) // Not a variable of known type: jugador
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :654 :19) // base.Channel.RegistrarJugadorAsync(jugador) (InvocationExpression)
return %4 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :654 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.VerificarClave$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :657 :8) {
^entry (%_clave : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :657 :35)
cbde.store %_clave, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :657 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :658 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :658 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :658 :40) // Not a variable of known type: clave
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :658 :12) // base.Channel.VerificarClave(clave) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.VerificarClaveAsync$string$(none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :661 :8) {
^entry (%_clave : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :661 :63)
cbde.store %_clave, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :661 :63)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :662 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :662 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :662 :52) // Not a variable of known type: clave
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :662 :19) // base.Channel.VerificarClaveAsync(clave) (InvocationExpression)
return %4 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :662 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.CancelarRegistro$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :665 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :666 :12) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :666 :12) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :666 :12) // base.Channel.CancelarRegistro() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.CancelarRegistroAsync$$() -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :669 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :670 :19) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :670 :19) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :670 :19) // base.Channel.CancelarRegistroAsync() (InvocationExpression)
return %2 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :670 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.EnviarClaveDeNuevo$$() -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :673 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :674 :12) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :674 :12) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :674 :12) // base.Channel.EnviarClaveDeNuevo() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.RegistrarJugadorClient.EnviarClaveDeNuevoAsync$$() -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :677 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :678 :19) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :678 :19) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :678 :19) // base.Channel.EnviarClaveDeNuevoAsync() (InvocationExpression)
return %2 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :678 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.LoginClient.IniciarSesion$string.string$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :737 :8) {
^entry (%_nickname : none, %_contrase.F1a : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :737 :34)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :737 :34)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :737 :51)
cbde.store %_contrase.F1a, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :737 :51)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :738 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :738 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :738 :39) // Not a variable of known type: nickname
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :738 :49) // Not a variable of known type: contraseña
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :738 :12) // base.Channel.IniciarSesion(nickname, contraseña) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.LoginClient.IniciarSesionAsync$string.string$(none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :741 :8) {
^entry (%_nickname : none, %_contrase.F1a : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :741 :62)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :741 :62)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :741 :79)
cbde.store %_contrase.F1a, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :741 :79)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :742 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :742 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :742 :51) // Not a variable of known type: nickname
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :742 :61) // Not a variable of known type: contraseña
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :742 :19) // base.Channel.IniciarSesionAsync(nickname, contraseña) (InvocationExpression)
return %6 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :742 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.LoginClient.CerrarSesion$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :745 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :745 :33)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :745 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :746 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :746 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :746 :38) // Not a variable of known type: nickname
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :746 :12) // base.Channel.CerrarSesion(nickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.LoginClient.CerrarSesionAsync$string$(none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :749 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :749 :61)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :749 :61)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :750 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :750 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :750 :50) // Not a variable of known type: nickname
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :750 :19) // base.Channel.CerrarSesionAsync(nickname) (InvocationExpression)
return %4 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :750 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.PerfilClient.BuscarJugador$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :800 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :800 :34)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :800 :34)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :801 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :801 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :801 :39) // Not a variable of known type: nickname
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :801 :12) // base.Channel.BuscarJugador(nickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.PerfilClient.BuscarJugadorAsync$string$(none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :804 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :804 :62)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :804 :62)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :805 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :805 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :805 :51) // Not a variable of known type: nickname
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :805 :19) // base.Channel.BuscarJugadorAsync(nickname) (InvocationExpression)
return %4 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :805 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.CrearSala$UNOGui.JuegoUNOServicio.Sala.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :963 :8) {
^entry (%_nuevaSala : none, %_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :963 :30)
cbde.store %_nuevaSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :963 :30)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :963 :70)
cbde.store %_jugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :963 :70)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :964 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :964 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :964 :35) // Not a variable of known type: nuevaSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :964 :46) // Not a variable of known type: jugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :964 :12) // base.Channel.CrearSala(nuevaSala, jugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.CrearSalaAsync$UNOGui.JuegoUNOServicio.Sala.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :967 :8) {
^entry (%_nuevaSala : none, %_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :967 :58)
cbde.store %_nuevaSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :967 :58)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :967 :98)
cbde.store %_jugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :967 :98)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :968 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :968 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :968 :47) // Not a variable of known type: nuevaSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :968 :58) // Not a variable of known type: jugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :968 :19) // base.Channel.CrearSalaAsync(nuevaSala, jugador) (InvocationExpression)
return %6 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :968 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.UnirseASala$UNOGui.JuegoUNOServicio.Sala.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :971 :8) {
^entry (%_salaAUnirse : none, %_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :971 :32)
cbde.store %_salaAUnirse, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :971 :32)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :971 :74)
cbde.store %_jugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :971 :74)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :972 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :972 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :972 :37) // Not a variable of known type: salaAUnirse
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :972 :50) // Not a variable of known type: jugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :972 :12) // base.Channel.UnirseASala(salaAUnirse, jugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.UnirseASalaAsync$UNOGui.JuegoUNOServicio.Sala.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :975 :8) {
^entry (%_salaAUnirse : none, %_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :975 :60)
cbde.store %_salaAUnirse, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :975 :60)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :975 :102)
cbde.store %_jugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :975 :102)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :976 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :976 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :976 :49) // Not a variable of known type: salaAUnirse
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :976 :62) // Not a variable of known type: jugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :976 :19) // base.Channel.UnirseASalaAsync(salaAUnirse, jugador) (InvocationExpression)
return %6 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :976 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.SalirDeSala$string.string$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :979 :8) {
^entry (%_idSala : none, %_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :979 :32)
cbde.store %_idSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :979 :32)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :979 :47)
cbde.store %_nickname, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :979 :47)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :980 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :980 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :980 :37) // Not a variable of known type: idSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :980 :45) // Not a variable of known type: nickname
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :980 :12) // base.Channel.SalirDeSala(idSala, nickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.SalirDeSalaAsync$string.string$(none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :983 :8) {
^entry (%_idSala : none, %_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :983 :60)
cbde.store %_idSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :983 :60)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :983 :75)
cbde.store %_nickname, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :983 :75)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :984 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :984 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :984 :49) // Not a variable of known type: idSala
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :984 :57) // Not a variable of known type: nickname
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :984 :19) // base.Channel.SalirDeSalaAsync(idSala, nickname) (InvocationExpression)
return %6 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :984 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.IniciarPartida$string$(none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :987 :8) {
^entry (%_idSala : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :987 :35)
cbde.store %_idSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :987 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :988 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :988 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :988 :40) // Not a variable of known type: idSala
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :988 :12) // base.Channel.IniciarPartida(idSala) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.IniciarPartidaAsync$string$(none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :991 :8) {
^entry (%_idSala : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :991 :63)
cbde.store %_idSala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :991 :63)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :992 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :992 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :992 :52) // Not a variable of known type: idSala
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :992 :19) // base.Channel.IniciarPartidaAsync(idSala) (InvocationExpression)
return %4 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :992 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.ColocarCartaCentral$UNOGui.JuegoUNOServicio.Carta.string$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :995 :8) {
^entry (%_cartaCentral : none, %_idSalaJugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :995 :40)
cbde.store %_cartaCentral, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :995 :40)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :995 :84)
cbde.store %_idSalaJugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :995 :84)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :996 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :996 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :996 :45) // Not a variable of known type: cartaCentral
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :996 :59) // Not a variable of known type: idSalaJugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :996 :12) // base.Channel.ColocarCartaCentral(cartaCentral, idSalaJugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.ColocarCartaCentralAsync$UNOGui.JuegoUNOServicio.Carta.string$(none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :999 :8) {
^entry (%_cartaCentral : none, %_idSalaJugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :999 :68)
cbde.store %_cartaCentral, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :999 :68)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :999 :112)
cbde.store %_idSalaJugador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :999 :112)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1000 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1000 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1000 :57) // Not a variable of known type: cartaCentral
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1000 :71) // Not a variable of known type: idSalaJugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1000 :19) // base.Channel.ColocarCartaCentralAsync(cartaCentral, idSalaJugador) (InvocationExpression)
return %6 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1000 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.TomarCarta$string.string$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1003 :8) {
^entry (%_idSalaJugador : none, %_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1003 :31)
cbde.store %_idSalaJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1003 :31)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1003 :53)
cbde.store %_nickname, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1003 :53)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1004 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1004 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1004 :36) // Not a variable of known type: idSalaJugador
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1004 :51) // Not a variable of known type: nickname
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1004 :12) // base.Channel.TomarCarta(idSalaJugador, nickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.TomarCartaAsync$string.string$(none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1007 :8) {
^entry (%_idSalaJugador : none, %_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1007 :59)
cbde.store %_idSalaJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1007 :59)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1007 :81)
cbde.store %_nickname, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1007 :81)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1008 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1008 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1008 :48) // Not a variable of known type: idSalaJugador
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1008 :63) // Not a variable of known type: nickname
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1008 :19) // base.Channel.TomarCartaAsync(idSalaJugador, nickname) (InvocationExpression)
return %6 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1008 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.AnunciarGanador$string.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1011 :8) {
^entry (%_idSalaJugador : none, %_jugadorGanador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1011 :36)
cbde.store %_idSalaJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1011 :36)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1011 :58)
cbde.store %_jugadorGanador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1011 :58)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1012 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1012 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1012 :41) // Not a variable of known type: idSalaJugador
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1012 :56) // Not a variable of known type: jugadorGanador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1012 :12) // base.Channel.AnunciarGanador(idSalaJugador, jugadorGanador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.AnunciarGanadorAsync$string.UNOGui.JuegoUNOServicio.Jugador$(none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1015 :8) {
^entry (%_idSalaJugador : none, %_jugadorGanador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1015 :64)
cbde.store %_idSalaJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1015 :64)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1015 :86)
cbde.store %_jugadorGanador, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1015 :86)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1016 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1016 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1016 :53) // Not a variable of known type: idSalaJugador
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1016 :68) // Not a variable of known type: jugadorGanador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1016 :19) // base.Channel.AnunciarGanadorAsync(idSalaJugador, jugadorGanador) (InvocationExpression)
return %6 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1016 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.ActualizarNumeroDeCarta$string.string.string$(none, none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1019 :8) {
^entry (%_idSalaJugador : none, %_nickname : none, %_numeroDeCartas : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1019 :44)
cbde.store %_idSalaJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1019 :44)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1019 :66)
cbde.store %_nickname, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1019 :66)
%2 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1019 :83)
cbde.store %_numeroDeCartas, %2 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1019 :83)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1020 :12) // base (BaseExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1020 :12) // base.Channel (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1020 :49) // Not a variable of known type: idSalaJugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1020 :64) // Not a variable of known type: nickname
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1020 :74) // Not a variable of known type: numeroDeCartas
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1020 :12) // base.Channel.ActualizarNumeroDeCarta(idSalaJugador, nickname, numeroDeCartas) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.ActualizarNumeroDeCartaAsync$string.string.string$(none, none, none) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1023 :8) {
^entry (%_idSalaJugador : none, %_nickname : none, %_numeroDeCartas : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1023 :72)
cbde.store %_idSalaJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1023 :72)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1023 :94)
cbde.store %_nickname, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1023 :94)
%2 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1023 :111)
cbde.store %_numeroDeCartas, %2 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1023 :111)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1024 :19) // base (BaseExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1024 :19) // base.Channel (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1024 :61) // Not a variable of known type: idSalaJugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1024 :76) // Not a variable of known type: nickname
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1024 :86) // Not a variable of known type: numeroDeCartas
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1024 :19) // base.Channel.ActualizarNumeroDeCartaAsync(idSalaJugador, nickname, numeroDeCartas) (InvocationExpression)
return %8 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1024 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.ActualizarPuntaje$string.string.int$(none, none, i32) -> () loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1027 :8) {
^entry (%_idSalaJugador : none, %_nickname : none, %_puntajeASumar : i32):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1027 :38)
cbde.store %_idSalaJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1027 :38)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1027 :60)
cbde.store %_nickname, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1027 :60)
%2 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1027 :77)
cbde.store %_puntajeASumar, %2 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1027 :77)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1028 :12) // base (BaseExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1028 :12) // base.Channel (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1028 :43) // Not a variable of known type: idSalaJugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1028 :58) // Not a variable of known type: nickname
%7 = cbde.load %2 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1028 :68)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1028 :12) // base.Channel.ActualizarPuntaje(idSalaJugador, nickname, puntajeASumar) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNOGui.JuegoUNOServicio.AdministrarJuegoClient.ActualizarPuntajeAsync$string.string.int$(none, none, i32) -> none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1031 :8) {
^entry (%_idSalaJugador : none, %_nickname : none, %_puntajeASumar : i32):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1031 :66)
cbde.store %_idSalaJugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1031 :66)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1031 :88)
cbde.store %_nickname, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1031 :88)
%2 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1031 :105)
cbde.store %_puntajeASumar, %2 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1031 :105)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1032 :19) // base (BaseExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1032 :19) // base.Channel (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1032 :55) // Not a variable of known type: idSalaJugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1032 :70) // Not a variable of known type: nickname
%7 = cbde.load %2 : memref<i32> loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1032 :80)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1032 :19) // base.Channel.ActualizarPuntajeAsync(idSalaJugador, nickname, puntajeASumar) (InvocationExpression)
return %8 : none loc("D:\\Juego-UNO\\UNOGui\\Connected Services\\JuegoUNOServicio\\Reference.cs" :1032 :12)

^1: // ExitBlock
cbde.unreachable

}
