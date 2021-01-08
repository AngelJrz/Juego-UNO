// Skipping function ExisteNickname(none), it contains poisonous unsupported syntaxes

// Skipping function EsContraseñaCorrecta(none, none), it contains poisonous unsupported syntaxes

// Skipping function ExisteCorreoElectronico(none), it contains poisonous unsupported syntaxes

// Skipping function GuardarJugador(none), it contains poisonous unsupported syntaxes

// Skipping function ObtenerMejoresJugadores(), it contains poisonous unsupported syntaxes

func @_UNO.AccesoADatos.AdministrarDatos.AdminDatosJugador.ObtenerJugador$string$(none) -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :132 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :132 :46)
cbde.store %_nickname, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :132 :46)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :136 :33) // Not a variable of known type: baseDeDatos
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :136 :33) // baseDeDatos.Jugador (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :136 :58) // Not a variable of known type: nickname
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :136 :33) // baseDeDatos.Jugador.Find(nickname) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :138 :22) // new Dominio.Jugador              {                  Nickname = nickname,                  CorreoElectronico = jugadorBuscado.CorreoElectronico,                  PuntajeTotal = (int)jugadorBuscado.PuntajeTotal,                  Nivel = jugadorBuscado.Nivel,                  Experiencia = (int)jugadorBuscado.Experiencia,                  PartidasGanadas = (int)jugadorBuscado.PartidasGanadas,                  PartidasJugadas = (int)jugadorBuscado.PartidasJugadas              } (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :140 :27) // Not a variable of known type: nickname
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :141 :36) // Not a variable of known type: jugadorBuscado
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :141 :36) // jugadorBuscado.CorreoElectronico (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :142 :36) // Not a variable of known type: jugadorBuscado
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :142 :36) // jugadorBuscado.PuntajeTotal (SimpleMemberAccessExpression)
%13 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :142 :31) // (int)jugadorBuscado.PuntajeTotal (CastExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :143 :24) // Not a variable of known type: jugadorBuscado
%15 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :143 :24) // jugadorBuscado.Nivel (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :144 :35) // Not a variable of known type: jugadorBuscado
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :144 :35) // jugadorBuscado.Experiencia (SimpleMemberAccessExpression)
%18 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :144 :30) // (int)jugadorBuscado.Experiencia (CastExpression)
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :145 :39) // Not a variable of known type: jugadorBuscado
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :145 :39) // jugadorBuscado.PartidasGanadas (SimpleMemberAccessExpression)
%21 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :145 :34) // (int)jugadorBuscado.PartidasGanadas (CastExpression)
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :146 :39) // Not a variable of known type: jugadorBuscado
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :146 :39) // jugadorBuscado.PartidasJugadas (SimpleMemberAccessExpression)
%24 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :146 :34) // (int)jugadorBuscado.PartidasJugadas (CastExpression)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :149 :19) // Not a variable of known type: jugador
return %25 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdminDatosJugador.cs" :149 :12)

^1: // ExitBlock
cbde.unreachable

}
