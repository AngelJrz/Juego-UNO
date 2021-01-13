func @_UNO.Contratos.JuegoUNOServicio.IniciarSesion$string.string$(none, none) -> () loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :16 :8) {
^entry (%_nickname : none, %_contrase.F1a : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :16 :34)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :16 :34)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :16 :51)
cbde.store %_contrase.F1a, %1 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :16 :51)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :19 :50) // new AdminDatosJugador() (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TieneSesionIniciada
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :21 :36) // Not a variable of known type: nickname
%6 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :21 :16) // TieneSesionIniciada(nickname) (InvocationExpression)
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :21 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :23 :33) // Not a variable of known type: ResultadoLogin
%8 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :23 :33) // ResultadoLogin.SesionIniciada (SimpleMemberAccessExpression)
br ^3

^2: // BinaryBranchBlock
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :27 :20) // Not a variable of known type: adminDatosJugador
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :27 :53) // Not a variable of known type: nickname
%11 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :27 :20) // adminDatosJugador.ExisteNickname(nickname) (InvocationExpression)
cond_br %11, ^4, ^5 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :27 :20)

^4: // BinaryBranchBlock
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :29 :24) // Not a variable of known type: adminDatosJugador
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :29 :63) // Not a variable of known type: nickname
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :29 :73) // Not a variable of known type: contraseña
%15 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :29 :24) // adminDatosJugador.EsContraseñaCorrecta(nickname, contraseña) (InvocationExpression)
cond_br %15, ^6, ^7 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :29 :24)

^6: // SimpleBlock
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :31 :41) // Not a variable of known type: ResultadoLogin
%17 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :31 :41) // ResultadoLogin.ExisteJugador (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :32 :24) // Not a variable of known type: jugadoresConectados
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :32 :48) // Not a variable of known type: nickname
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :32 :24) // jugadoresConectados.Add(nickname) (InvocationExpression)
br ^3

^7: // SimpleBlock
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :36 :41) // Not a variable of known type: ResultadoLogin
%22 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :36 :41) // ResultadoLogin.ContraseñaIncorrecta (SimpleMemberAccessExpression)
br ^3

^5: // SimpleBlock
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :41 :37) // Not a variable of known type: ResultadoLogin
%24 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :41 :37) // ResultadoLogin.NoExisteNickname (SimpleMemberAccessExpression)
br ^3

^3: // BinaryBranchBlock
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :45 :12) // Not a variable of known type: LoginCallback
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :45 :50) // Not a variable of known type: resultadoLogin
%27 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :45 :12) // LoginCallback.NotificarResultadoLogin(resultadoLogin) (InvocationExpression)
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :47 :16) // Not a variable of known type: resultadoLogin
%29 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :47 :34) // Not a variable of known type: ResultadoLogin
%30 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :47 :34) // ResultadoLogin.ExisteJugador (SimpleMemberAccessExpression)
%31 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :47 :16) // comparison of unknown type: resultadoLogin == ResultadoLogin.ExisteJugador
cond_br %31, ^8, ^9 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :47 :16)

^8: // SimpleBlock
%32 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :49 :53) // Not a variable of known type: adminDatosJugador
%33 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :49 :53) // adminDatosJugador.ObtenerMejoresJugadores() (InvocationExpression)
%35 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :50 :16) // Not a variable of known type: LoginCallback
%36 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :50 :50) // Not a variable of known type: jugadoresTop
%37 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :50 :16) // LoginCallback.ObtenerJugadoresTop(jugadoresTop) (InvocationExpression)
br ^9

^9: // ExitBlock
return

}
func @_UNO.Contratos.JuegoUNOServicio.TieneSesionIniciada$string$(none) -> i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :54 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :54 :41)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :54 :41)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :56 :19) // Not a variable of known type: jugadoresConectados
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :56 :48) // Not a variable of known type: nickname
%3 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :56 :19) // jugadoresConectados.Contains(nickname) (InvocationExpression)
return %3 : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :56 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNO.Contratos.JuegoUNOServicio.CerrarSesion$string$(none) -> () loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :63 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :63 :33)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :63 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :65 :12) // Not a variable of known type: jugadoresConectados
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :65 :39) // Not a variable of known type: nickname
%3 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\LoginServicio.cs" :65 :12) // jugadoresConectados.Remove(nickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
