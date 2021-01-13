func @_UNO.AccesoADatos.AdministrarDatos.AdministradorHash.GenerarHash$string$(none) -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :13 :8) {
^entry (%_texto : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :13 :41)
cbde.store %_texto, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :13 :41)
br ^0

^0: // JumpBlock
// Entity from another assembly: BCrypt
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :15 :19) // BCrypt.Net.BCrypt (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :15 :50) // Not a variable of known type: texto
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :15 :19) // BCrypt.Net.BCrypt.HashPassword(texto) (InvocationExpression)
return %3 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :15 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNO.AccesoADatos.AdministrarDatos.AdministradorHash.CompararHash$string.string$(none, none) -> i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :24 :8) {
^entry (%_texto : none, %_textoConHash : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :24 :40)
cbde.store %_texto, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :24 :40)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :24 :54)
cbde.store %_textoConHash, %1 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :24 :54)
br ^0

^0: // BinaryBranchBlock
%2 = constant 0 : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :26 :30) // false
%3 = cbde.alloca i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :26 :17) // sonIguales
cbde.store %2, %3 : memref<i1> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :26 :17)
// Entity from another assembly: BCrypt
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :28 :16) // BCrypt.Net.BCrypt (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :28 :41) // Not a variable of known type: texto
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :28 :48) // Not a variable of known type: textoConHash
%7 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :28 :16) // BCrypt.Net.BCrypt.Verify(texto, textoConHash) (InvocationExpression)
cond_br %7, ^1, ^2 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :28 :16)

^1: // SimpleBlock
%8 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :30 :29) // true
cbde.store %8, %3 : memref<i1> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :30 :16)
br ^2

^2: // JumpBlock
%9 = cbde.load %3 : memref<i1> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :33 :19)
return %9 : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :33 :12)

^3: // ExitBlock
cbde.unreachable

}
