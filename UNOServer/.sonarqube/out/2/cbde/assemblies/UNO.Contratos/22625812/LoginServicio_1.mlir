func @_UNO.Contratos.JuegoUNOServicio.IniciarSesion$string.string$(none, none) -> () loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :18 :8) {
^entry (%_nickname : none, %_contrase.F1a : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :18 :34)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :18 :34)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :18 :51)
cbde.store %_contrase.F1a, %1 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :18 :51)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :21 :50) // new AdminDatosJugador() (ObjectCreationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :23 :16) // Not a variable of known type: adminDatosJugador
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :23 :49) // Not a variable of known type: nickname
%7 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :23 :16) // adminDatosJugador.ExisteNickname(nickname) (InvocationExpression)
cond_br %7, ^1, ^2 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :23 :16)

^1: // BinaryBranchBlock
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :25 :20) // Not a variable of known type: adminDatosJugador
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :25 :59) // Not a variable of known type: nickname
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :25 :69) // Not a variable of known type: contraseña
%11 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :25 :20) // adminDatosJugador.EsContraseñaCorrecta(nickname, contraseña) (InvocationExpression)
cond_br %11, ^3, ^4 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :25 :20)

^3: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :27 :37) // Not a variable of known type: ResultadoLogin
%13 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :27 :37) // ResultadoLogin.ExisteJugador (SimpleMemberAccessExpression)
br ^5

^4: // SimpleBlock
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :31 :37) // Not a variable of known type: ResultadoLogin
%15 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :31 :37) // ResultadoLogin.ContraseñaIncorrecta (SimpleMemberAccessExpression)
br ^5

^2: // SimpleBlock
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :36 :33) // Not a variable of known type: ResultadoLogin
%17 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :36 :33) // ResultadoLogin.NoExisteNickname (SimpleMemberAccessExpression)
br ^5

^5: // BinaryBranchBlock
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :39 :12) // Not a variable of known type: LoginCallback
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :39 :50) // Not a variable of known type: resultadoLogin
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :39 :12) // LoginCallback.NotificarResultadoLogin(resultadoLogin) (InvocationExpression)
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :41 :16) // Not a variable of known type: resultadoLogin
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :41 :34) // Not a variable of known type: ResultadoLogin
%23 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :41 :34) // ResultadoLogin.ExisteJugador (SimpleMemberAccessExpression)
%24 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :41 :16) // comparison of unknown type: resultadoLogin == ResultadoLogin.ExisteJugador
cond_br %24, ^6, ^7 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :41 :16)

^6: // SimpleBlock
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :43 :53) // Not a variable of known type: adminDatosJugador
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :43 :53) // adminDatosJugador.ObtenerMejoresJugadores() (InvocationExpression)
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :44 :16) // Not a variable of known type: LoginCallback
%29 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :44 :50) // Not a variable of known type: jugadoresTop
%30 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :44 :16) // LoginCallback.ObtenerJugadoresTop(jugadoresTop) (InvocationExpression)
br ^7

^7: // ExitBlock
return

}
