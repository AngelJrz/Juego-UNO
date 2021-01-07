// Skipping function GenerarHash(none), it contains poisonous unsupported syntaxes

func @_UNO.AccesoADatos.AdministrarDatos.AdministradorHash.CompararHash$string.string$(none, none) -> i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :40 :8) {
^entry (%_hashOriginal : none, %_hashAComparar : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :40 :40)
cbde.store %_hashOriginal, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :40 :40)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :40 :61)
cbde.store %_hashAComparar, %1 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :40 :61)
br ^0

^0: // BinaryBranchBlock
%2 = constant 0 : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :42 :30) // false
%3 = cbde.alloca i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :42 :17) // sonIguales
cbde.store %2, %3 : memref<i1> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :42 :17)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :44 :16) // Not a variable of known type: hashOriginal
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :44 :32) // Not a variable of known type: hashAComparar
%6 = cbde.unknown : i1  loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :44 :16) // comparison of unknown type: hashOriginal == hashAComparar
cond_br %6, ^1, ^2 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :44 :16)

^1: // SimpleBlock
%7 = constant 1 : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :46 :29) // true
cbde.store %7, %3 : memref<i1> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :46 :16)
br ^2

^2: // JumpBlock
%8 = cbde.load %3 : memref<i1> loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :49 :19)
return %8 : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.AccesoADatos\\AdministrarDatos\\AdministradorHash.cs" :49 :12)

^3: // ExitBlock
cbde.unreachable

}
