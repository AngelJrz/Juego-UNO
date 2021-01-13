// Skipping function IniciarPartida(none), it contains poisonous unsupported syntaxes

// Skipping function PonerSalaEnJuego(none), it contains poisonous unsupported syntaxes

func @_UNO.Contratos.JuegoUNOServicio.CrearMazo$$() -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :44 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :46 :39) // new List<Carta>() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :47 :12) // Not a variable of known type: mazocompleto
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CrearCartasDeColor
// Entity from another assembly: ColoresCartas
%3 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :47 :53) // ColoresCartas.Rojo (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :47 :34) // CrearCartasDeColor(ColoresCartas.Rojo) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :47 :12) // mazocompleto.AddRange(CrearCartasDeColor(ColoresCartas.Rojo)) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :48 :12) // Not a variable of known type: mazocompleto
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CrearCartasDeColor
// Entity from another assembly: ColoresCartas
%7 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :48 :53) // ColoresCartas.Amarillo (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :48 :34) // CrearCartasDeColor(ColoresCartas.Amarillo) (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :48 :12) // mazocompleto.AddRange(CrearCartasDeColor(ColoresCartas.Amarillo)) (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :49 :12) // Not a variable of known type: mazocompleto
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CrearCartasDeColor
// Entity from another assembly: ColoresCartas
%11 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :49 :53) // ColoresCartas.Azul (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :49 :34) // CrearCartasDeColor(ColoresCartas.Azul) (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :49 :12) // mazocompleto.AddRange(CrearCartasDeColor(ColoresCartas.Azul)) (InvocationExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :50 :12) // Not a variable of known type: mazocompleto
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CrearCartasDeColor
// Entity from another assembly: ColoresCartas
%15 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :50 :53) // ColoresCartas.Verde (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :50 :34) // CrearCartasDeColor(ColoresCartas.Verde) (InvocationExpression)
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :50 :12) // mazocompleto.AddRange(CrearCartasDeColor(ColoresCartas.Verde)) (InvocationExpression)
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :51 :12) // Not a variable of known type: mazocompleto
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CrearCartasEspeciales
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :51 :34) // CrearCartasEspeciales() (InvocationExpression)
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :51 :12) // mazocompleto.AddRange(CrearCartasEspeciales()) (InvocationExpression)
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :53 :19) // Not a variable of known type: mazocompleto
return %21 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :53 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNO.Contratos.JuegoUNOServicio.CrearCartasDeColor$UNO.Dominio.ColoresCartas$(none) -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :57 :8) {
^entry (%_colorMazo : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :57 :54)
cbde.store %_colorMazo, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :57 :54)
br ^0

^0: // ForInitializerBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :59 :40) // new List<Carta>() (ObjectCreationExpression)
%3 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :60 :38)
%4 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :60 :16) // NUMERO_MINIMO_CARTA
cbde.store %3, %4 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :60 :16)
%5 = constant 9 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :61 :38)
%6 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :61 :16) // NUMERO_MAXIMO_CARTA
cbde.store %5, %6 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :61 :16)
%7 = cbde.load %4 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :63 :25)
%8 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :63 :21) // i
cbde.store %7, %8 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :63 :21)
br ^1

^1: // BinaryBranchBlock
%9 = cbde.load %8 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :63 :46)
%10 = cbde.load %6 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :63 :51)
%11 = cmpi "sle", %9, %10 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :63 :46)
cond_br %11, ^2, ^3 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :63 :46)

^2: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :65 :45) // Not a variable of known type: colorMazo
%13 = cbde.load %8 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :65 :56)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :65 :35) // new Carta(colorMazo, i) (ObjectCreationExpression)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :66 :16) // Not a variable of known type: cartasDelMazo
%17 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :66 :34) // Not a variable of known type: cartaNueva
%18 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :66 :16) // cartasDelMazo.Add(cartaNueva) (InvocationExpression)
br ^4

^4: // SimpleBlock
%19 = cbde.load %8 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :63 :72)
%20 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :63 :72)
%21 = addi %19, %20 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :63 :72)
cbde.store %21, %8 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :63 :72)
br ^1

^3: // JumpBlock
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :69 :44) // Not a variable of known type: colorMazo
// Entity from another assembly: EfectosCarta
%23 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :69 :55) // EfectosCarta.Cancelar (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :69 :34) // new Carta(colorMazo, EfectosCarta.Cancelar) (ObjectCreationExpression)
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :70 :43) // Not a variable of known type: colorMazo
// Entity from another assembly: EfectosCarta
%27 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :70 :54) // EfectosCarta.Reversa (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :70 :33) // new Carta(colorMazo, EfectosCarta.Reversa) (ObjectCreationExpression)
%30 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :71 :43) // Not a variable of known type: colorMazo
// Entity from another assembly: EfectosCarta
%31 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :71 :54) // EfectosCarta.TomaDos (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :71 :33) // new Carta(colorMazo, EfectosCarta.TomaDos) (ObjectCreationExpression)
%34 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :73 :12) // Not a variable of known type: cartasDelMazo
%35 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :73 :30) // Not a variable of known type: cartaCancelar
%36 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :73 :12) // cartasDelMazo.Add(cartaCancelar) (InvocationExpression)
%37 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :74 :12) // Not a variable of known type: cartasDelMazo
%38 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :74 :30) // Not a variable of known type: cartaReversa
%39 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :74 :12) // cartasDelMazo.Add(cartaReversa) (InvocationExpression)
%40 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :75 :12) // Not a variable of known type: cartasDelMazo
%41 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :75 :30) // Not a variable of known type: cartaTomaDos
%42 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :75 :12) // cartasDelMazo.Add(cartaTomaDos) (InvocationExpression)
%43 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :77 :19) // Not a variable of known type: cartasDelMazo
return %43 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :77 :12)

^5: // ExitBlock
cbde.unreachable

}
func @_UNO.Contratos.JuegoUNOServicio.CrearCartasEspeciales$$() -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :80 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :82 :43) // new List<Carta>() (ObjectCreationExpression)
// Entity from another assembly: ColoresCartas
%2 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :83 :46) // ColoresCartas.Negro (SimpleMemberAccessExpression)
// Entity from another assembly: EfectosCarta
%3 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :83 :67) // EfectosCarta.MultiColor (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :83 :36) // new Carta(ColoresCartas.Negro, EfectosCarta.MultiColor) { Numero = 10 } (ObjectCreationExpression)
%5 = constant 10 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :83 :103)
// Entity from another assembly: ColoresCartas
%7 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :84 :47) // ColoresCartas.Negro (SimpleMemberAccessExpression)
// Entity from another assembly: EfectosCarta
%8 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :84 :68) // EfectosCarta.MultiColor (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :84 :37) // new Carta(ColoresCartas.Negro, EfectosCarta.MultiColor) { Numero = 10 } (ObjectCreationExpression)
%10 = constant 10 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :84 :104)
// Entity from another assembly: ColoresCartas
%12 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :85 :46) // ColoresCartas.Negro (SimpleMemberAccessExpression)
// Entity from another assembly: EfectosCarta
%13 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :85 :67) // EfectosCarta.TomaCuatro (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :85 :36) // new Carta(ColoresCartas.Negro, EfectosCarta.TomaCuatro) { Numero = 10 } (ObjectCreationExpression)
%15 = constant 10 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :85 :103)
// Entity from another assembly: ColoresCartas
%17 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :86 :47) // ColoresCartas.Negro (SimpleMemberAccessExpression)
// Entity from another assembly: EfectosCarta
%18 = constant unit loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :86 :68) // EfectosCarta.TomaCuatro (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :86 :37) // new Carta(ColoresCartas.Negro, EfectosCarta.TomaCuatro) { Numero = 10 } (ObjectCreationExpression)
%20 = constant 10 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :86 :104)
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :88 :12) // Not a variable of known type: cartasEspeciales
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :88 :33) // Not a variable of known type: cartaMulticolor
%24 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :88 :12) // cartasEspeciales.Add(cartaMulticolor) (InvocationExpression)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :89 :12) // Not a variable of known type: cartasEspeciales
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :89 :33) // Not a variable of known type: cartaMulticolor2
%27 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :89 :12) // cartasEspeciales.Add(cartaMulticolor2) (InvocationExpression)
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :90 :12) // Not a variable of known type: cartasEspeciales
%29 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :90 :33) // Not a variable of known type: cartaTomaCuatro
%30 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :90 :12) // cartasEspeciales.Add(cartaTomaCuatro) (InvocationExpression)
%31 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :91 :12) // Not a variable of known type: cartasEspeciales
%32 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :91 :33) // Not a variable of known type: cartaTomaCuatro2
%33 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :91 :12) // cartasEspeciales.Add(cartaTomaCuatro2) (InvocationExpression)
%34 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :93 :19) // Not a variable of known type: cartasEspeciales
return %34 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :93 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function RepartirCartas(none), it contains poisonous unsupported syntaxes

func @_UNO.Contratos.JuegoUNOServicio.CrearMano$$() -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :104 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = constant 7 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :106 :35)
%1 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :106 :16) // MAXIMO_DE_CARTAS
cbde.store %0, %1 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :106 :16)
%2 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :107 :35)
%3 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :107 :16) // MINIMO_DE_CARTAS
cbde.store %2, %3 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :107 :16)
%4 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :108 :16) // posicionDeCartaEnMazo
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :109 :28) // new Random() (ObjectCreationExpression)
%7 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :110 :33) // new List<Carta>() (ObjectCreationExpression)
%9 = cbde.load %3 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :112 :25)
%10 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :112 :21) // i
cbde.store %9, %10 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :112 :21)
br ^1

^1: // BinaryBranchBlock
%11 = cbde.load %10 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :112 :43)
%12 = cbde.load %1 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :112 :48)
%13 = cmpi "sle", %11, %12 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :112 :43)
cond_br %13, ^2, ^3 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :112 :43)

^2: // SimpleBlock
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :114 :40) // Not a variable of known type: number
%15 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :114 :52)
%16 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :114 :55) // Not a variable of known type: mazoSala
%17 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :114 :55) // mazoSala.Count (SimpleMemberAccessExpression)
%18 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :114 :72)
%19 = subi %17, %18 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :114 :55)
%20 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :114 :40) // number.Next(0, mazoSala.Count - 1) (InvocationExpression)
cbde.store %20, %4 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :114 :16)
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :115 :16) // Not a variable of known type: miMano
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :115 :27) // Not a variable of known type: mazoSala
%23 = cbde.load %4 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :115 :46)
%24 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :115 :27) // mazoSala.ElementAt(posicionDeCartaEnMazo) (InvocationExpression)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :115 :16) // miMano.Add(mazoSala.ElementAt(posicionDeCartaEnMazo)) (InvocationExpression)
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :116 :16) // Not a variable of known type: mazoSala
%27 = cbde.load %4 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :116 :34)
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :116 :16) // mazoSala.RemoveAt(posicionDeCartaEnMazo) (InvocationExpression)
br ^4

^4: // SimpleBlock
%29 = cbde.load %10 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :112 :66)
%30 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :112 :66)
%31 = addi %29, %30 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :112 :66)
cbde.store %31, %10 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :112 :66)
br ^1

^3: // JumpBlock
%32 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :119 :19) // Not a variable of known type: miMano
return %32 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :119 :12)

^5: // ExitBlock
cbde.unreachable

}
func @_UNO.Contratos.JuegoUNOServicio.TomaCarta$$() -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :123 :8) {
^entry :
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :126 :28) // new Random() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :127 :36) // Not a variable of known type: number
%4 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :127 :48)
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :127 :51) // Not a variable of known type: mazoSala
%6 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :127 :51) // mazoSala.Count (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :127 :68)
%8 = subi %6, %7 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :127 :51)
%9 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :127 :36) // number.Next(0, mazoSala.Count - 1) (InvocationExpression)
%10 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :127 :16) // posicionAleatoria
cbde.store %9, %10 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :127 :16)
%11 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :129 :26) // Not a variable of known type: mazoSala
%12 = cbde.load %10 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :129 :45)
%13 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :129 :26) // mazoSala.ElementAt(posicionAleatoria) (InvocationExpression)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :131 :19) // Not a variable of known type: cartaTomada
return %14 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :131 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function ColocarCartaCentral(none, none), it contains poisonous unsupported syntaxes

// Skipping function NotificarJugadorCancelado(none, none), it contains poisonous unsupported syntaxes

// Skipping function AgregarCuatroCartas(none, none), it contains poisonous unsupported syntaxes

func @_UNO.Contratos.JuegoUNOServicio.TomarDosCartasDelMazo$$() -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :199 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :201 :40) // new List<Carta>() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :202 :28) // new Random() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :203 :42) // Not a variable of known type: number
%5 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :203 :54)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :203 :57) // Not a variable of known type: mazoSala
%7 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :203 :57) // mazoSala.Count (SimpleMemberAccessExpression)
%8 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :203 :74)
%9 = subi %7, %8 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :203 :57)
%10 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :203 :42) // number.Next(0, mazoSala.Count - 1) (InvocationExpression)
%11 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :203 :16) // posicionAleatoriaCarta1
cbde.store %10, %11 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :203 :16)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :204 :42) // Not a variable of known type: number
%13 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :204 :54)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :204 :57) // Not a variable of known type: mazoSala
%15 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :204 :57) // mazoSala.Count (SimpleMemberAccessExpression)
%16 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :204 :74)
%17 = subi %15, %16 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :204 :57)
%18 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :204 :42) // number.Next(0, mazoSala.Count - 1) (InvocationExpression)
%19 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :204 :16) // posicionAleatoriaCarta2
cbde.store %18, %19 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :204 :16)
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :206 :12) // Not a variable of known type: cartasTomadas
%21 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :206 :30) // Not a variable of known type: mazoSala
%22 = cbde.load %11 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :206 :49)
%23 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :206 :30) // mazoSala.ElementAt(posicionAleatoriaCarta1) (InvocationExpression)
%24 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :206 :12) // cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta1)) (InvocationExpression)
%25 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :207 :12) // Not a variable of known type: cartasTomadas
%26 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :207 :30) // Not a variable of known type: mazoSala
%27 = cbde.load %19 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :207 :49)
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :207 :30) // mazoSala.ElementAt(posicionAleatoriaCarta2) (InvocationExpression)
%29 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :207 :12) // cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta2)) (InvocationExpression)
%30 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :209 :19) // Not a variable of known type: cartasTomadas
return %30 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :209 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_UNO.Contratos.JuegoUNOServicio.TomarCuatroCartasDelMazo$$() -> none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :212 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :214 :40) // new List<Carta>() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :215 :28) // new Random() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :216 :42) // Not a variable of known type: number
%5 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :216 :54)
%6 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :216 :57) // Not a variable of known type: mazoSala
%7 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :216 :57) // mazoSala.Count (SimpleMemberAccessExpression)
%8 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :216 :74)
%9 = subi %7, %8 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :216 :57)
%10 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :216 :42) // number.Next(0, mazoSala.Count - 1) (InvocationExpression)
%11 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :216 :16) // posicionAleatoriaCarta1
cbde.store %10, %11 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :216 :16)
%12 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :217 :42) // Not a variable of known type: number
%13 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :217 :54)
%14 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :217 :57) // Not a variable of known type: mazoSala
%15 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :217 :57) // mazoSala.Count (SimpleMemberAccessExpression)
%16 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :217 :74)
%17 = subi %15, %16 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :217 :57)
%18 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :217 :42) // number.Next(0, mazoSala.Count - 1) (InvocationExpression)
%19 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :217 :16) // posicionAleatoriaCarta2
cbde.store %18, %19 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :217 :16)
%20 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :218 :42) // Not a variable of known type: number
%21 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :218 :54)
%22 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :218 :57) // Not a variable of known type: mazoSala
%23 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :218 :57) // mazoSala.Count (SimpleMemberAccessExpression)
%24 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :218 :74)
%25 = subi %23, %24 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :218 :57)
%26 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :218 :42) // number.Next(0, mazoSala.Count - 1) (InvocationExpression)
%27 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :218 :16) // posicionAleatoriaCarta3
cbde.store %26, %27 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :218 :16)
%28 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :219 :42) // Not a variable of known type: number
%29 = constant 0 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :219 :54)
%30 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :219 :57) // Not a variable of known type: mazoSala
%31 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :219 :57) // mazoSala.Count (SimpleMemberAccessExpression)
%32 = constant 1 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :219 :74)
%33 = subi %31, %32 : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :219 :57)
%34 = cbde.unknown : i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :219 :42) // number.Next(0, mazoSala.Count - 1) (InvocationExpression)
%35 = cbde.alloca i32 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :219 :16) // posicionAleatoriaCarta4
cbde.store %34, %35 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :219 :16)
%36 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :221 :12) // Not a variable of known type: cartasTomadas
%37 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :221 :30) // Not a variable of known type: mazoSala
%38 = cbde.load %11 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :221 :49)
%39 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :221 :30) // mazoSala.ElementAt(posicionAleatoriaCarta1) (InvocationExpression)
%40 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :221 :12) // cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta1)) (InvocationExpression)
%41 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :222 :12) // Not a variable of known type: cartasTomadas
%42 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :222 :30) // Not a variable of known type: mazoSala
%43 = cbde.load %19 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :222 :49)
%44 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :222 :30) // mazoSala.ElementAt(posicionAleatoriaCarta2) (InvocationExpression)
%45 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :222 :12) // cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta2)) (InvocationExpression)
%46 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :223 :12) // Not a variable of known type: cartasTomadas
%47 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :223 :30) // Not a variable of known type: mazoSala
%48 = cbde.load %27 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :223 :49)
%49 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :223 :30) // mazoSala.ElementAt(posicionAleatoriaCarta3) (InvocationExpression)
%50 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :223 :12) // cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta3)) (InvocationExpression)
%51 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :224 :12) // Not a variable of known type: cartasTomadas
%52 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :224 :30) // Not a variable of known type: mazoSala
%53 = cbde.load %35 : memref<i32> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :224 :49)
%54 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :224 :30) // mazoSala.ElementAt(posicionAleatoriaCarta4) (InvocationExpression)
%55 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :224 :12) // cartasTomadas.Add(mazoSala.ElementAt(posicionAleatoriaCarta4)) (InvocationExpression)
%56 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :226 :19) // Not a variable of known type: cartasTomadas
return %56 : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :226 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AgregarDosCartas(none, none), it contains poisonous unsupported syntaxes

func @_UNO.Contratos.JuegoUNOServicio.CambiarSentidoPartida$UNO.Contratos.LogicaJuego.Sala$(none) -> () loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :241 :8) {
^entry (%_salaBuscada : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :241 :43)
cbde.store %_salaBuscada, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :241 :43)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :243 :12) // Not a variable of known type: salaBuscada
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :243 :12) // salaBuscada.PartidaDeSala (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :243 :12) // salaBuscada.PartidaDeSala.SentidoJuego (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :243 :53) // "IZQUIERDA" (StringLiteralExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function CambiarTurno(none), it contains poisonous unsupported syntaxes

// Skipping function TomarCarta(none, none), it contains poisonous unsupported syntaxes

// Skipping function AnunciarGanador(none, none), it contains poisonous unsupported syntaxes

func @_UNO.Contratos.JuegoUNOServicio.ActualizarDatosJugador$UNO.Dominio.Jugador$(none) -> () loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :301 :8) {
^entry (%_jugador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :301 :44)
cbde.store %_jugador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :301 :44)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :303 :12) // Not a variable of known type: administradorDatosJugador
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :303 :64) // Not a variable of known type: jugador
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :303 :12) // administradorDatosJugador.ActualizarPartidasJugadas(jugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_UNO.Contratos.JuegoUNOServicio.ActualizarDatosJugadorGanador$UNO.Dominio.Jugador$(none) -> () loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :306 :8) {
^entry (%_jugadorGanador : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :306 :51)
cbde.store %_jugadorGanador, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :306 :51)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :308 :12) // Not a variable of known type: administradorDatosJugador
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :308 :70) // Not a variable of known type: jugadorGanador
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :308 :12) // administradorDatosJugador.ActualizarEstadisticasDeJugador(jugadorGanador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function ActualizarNumeroDeCarta(none, none, none), it contains poisonous unsupported syntaxes

// Skipping function ActualizarPuntaje(none, none, i32), it contains poisonous unsupported syntaxes

func @_UNO.Contratos.JuegoUNOServicio.TerminarPartida$UNO.Contratos.LogicaJuego.Sala$(none) -> () loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :343 :8) {
^entry (%_sala : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :343 :37)
cbde.store %_sala, %0 : memref<none> loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :343 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :345 :12) // Not a variable of known type: salasCreadas
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :345 :32) // Not a variable of known type: sala
%3 = cbde.unknown : i1 loc("D:\\Juego-UNO\\UNOServer\\UNO.Contratos\\ServicioPartida.cs" :345 :12) // salasCreadas.Remove(sala) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
