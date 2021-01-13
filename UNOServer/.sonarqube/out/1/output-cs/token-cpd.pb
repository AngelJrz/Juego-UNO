∞c
MD:\Juego-UNO\UNOServer\UNO.AccesoADatos\AdministrarDatos\AdminDatosJugador.cs
	namespace 	
UNO
 
. 
AccesoADatos 
. 
AdministrarDatos +
{ 
public

 

class

 
AdminDatosJugador

 "
{ 
private 
readonly 
JuegoUNOContext (
baseDeDatos) 4
;4 5
public 
AdminDatosJugador  
(  !
)! "
{ 	
baseDeDatos 
= 
new 
JuegoUNOContext -
(- .
). /
;/ 0
} 	
public 
bool 
ExisteNickname "
(" #
string# )
nickname* 2
)2 3
{ 	
bool 
existe 
= 
false 
;  
existe!! 
=!! 
baseDeDatos!!  
.!!  !
Jugador!!! (
.!!( )
Any!!) ,
(!!, -
jugador!!- 4
=>!!5 7
jugador!!8 ?
.!!? @
Nickname!!@ H
.!!H I
Equals!!I O
(!!O P
nickname!!P X
)!!X Y
)!!Y Z
;!!Z [
return## 
existe## 
;## 
}$$ 	
public.. 
bool.. !
EsContrase√±aCorrecta.. (
(..( )
string..) /
nickname..0 8
,..8 9
string..: @
contrase√±a..A K
)..K L
{// 	
bool00 

esCorrecta00 
=00 
false00 #
;00# $
var22 
jugadorBuscado22 
=22  
baseDeDatos22! ,
.22, -
Jugador22- 4
.224 5
Where225 :
(22: ;
jugador22; B
=>22C E
jugador22F M
.22M N
Nickname22N V
.22V W
Equals22W ]
(22] ^
nickname22^ f
)22f g
)22g h
.33 
FirstOrDefault33 
<33  
Jugador33  '
>33' (
(33( )
)33) *
;33* +
if55 
(55 
AdministradorHash55 !
.55! "
CompararHash55" .
(55. /
contrase√±a55/ 9
,559 :
jugadorBuscado55; I
.55I J
Contrase√±a55J T
)55T U
)55U V
{66 

esCorrecta77 
=77 
true77 !
;77! "
}88 
return:: 

esCorrecta:: 
;:: 
};; 	
publicBB 
boolBB #
ExisteCorreoElectronicoBB +
(BB+ ,
stringBB, 2
correoElectronicoBB3 D
)BBD E
{CC 	
boolDD 
existeDD 
=DD 
falseDD 
;DD  
existeFF 
=FF 
baseDeDatosFF  
.FF  !
JugadorFF! (
.FF( )
AnyFF) ,
(FF, -
jugadorFF- 4
=>FF5 7
jugadorFF8 ?
.FF? @
CorreoElectronicoFF@ Q
.FFQ R
EqualsFFR X
(FFX Y
correoElectronicoFFY j
)FFj k
)FFk l
;FFl m
returnHH 
existeHH 
;HH 
}II 	
publicOO 
voidOO 
GuardarJugadorOO "
(OO" #
DominioOO# *
.OO* +
JugadorOO+ 2
nuevoJugadorOO3 ?
)OO? @
{PP 	
JugadorQQ 
entidadJugadorQQ "
=QQ# $
newQQ% (
JugadorQQ) 0
{RR 
NicknameSS 
=SS 
nuevoJugadorSS '
.SS' (
NicknameSS( 0
,SS0 1
CorreoElectronicoTT !
=TT" #
nuevoJugadorTT$ 0
.TT0 1
CorreoElectronicoTT1 B
,TTB C
Contrase√±aUU 
=UU 
AdministradorHashUU .
.UU. /
GenerarHashUU/ :
(UU: ;
nuevoJugadorUU; G
.UUG H
Contrase√±aUUH R
)UUR S
,UUS T
NivelVV 
=VV 
$numVV 
,VV 
ExperienciaWW 
=WW 
$numWW 
,WW  
PartidasGanadasXX 
=XX  !
$numXX" #
,XX# $
PartidasJugadasYY 
=YY  !
$numYY" #
,YY# $
PuntajeTotalZZ 
=ZZ 
$numZZ  
}[[ 
;[[ 
baseDeDatos]] 
.]] 
Jugador]] 
.]]  
Add]]  #
(]]# $
entidadJugador]]$ 2
)]]2 3
;]]3 4
try__ 
{`` 
baseDeDatosaa 
.aa 
SaveChangesaa '
(aa' (
)aa( )
;aa) *
}bb 
catchcc 
(cc 
DbUpdateExceptioncc $
)cc$ %
{dd 
throwee 
newee 
DbUpdateExceptionee +
(ee+ ,
$stree, L
)eeL M
;eeM N
}ff 
}hh 	
publicnn 
Listnn 
<nn 
Dominionn 
.nn 
Jugadornn #
>nn# $#
ObtenerMejoresJugadoresnn% <
(nn< =
)nn= >
{oo 	
Listpp 
<pp 
Dominiopp 
.pp 
Jugadorpp  
>pp  !
mejoresJugadorespp" 2
=pp3 4
newpp5 8
Listpp9 =
<pp= >
Dominiopp> E
.ppE F
JugadorppF M
>ppM N
(ppN O
)ppO P
;ppP Q
varrr  
jugadoresConsultadosrr $
=rr% &
baseDeDatosrr' 2
.rr2 3
Jugadorrr3 :
.ss 
AsNoTrackingss 
(ss 
)ss 
.tt 
OrderByDescendingtt "
(tt" #
jugadortt# *
=>tt+ -
jugadortt. 5
.tt5 6
PuntajeTotaltt6 B
)ttB C
.ttC D
TakettD H
(ttH I
$numttI J
)ttJ K
;ttK L
foreachvv 
(vv 
varvv 
jugadorvv  
invv! # 
jugadoresConsultadosvv$ 8
)vv8 9
{ww 
mejoresJugadoresxx  
.xx  !
Addxx! $
(xx$ %
newyy 
Dominioyy 
.yy  
Jugadoryy  '
{zz 
Nickname{{  
={{! "
jugador{{# *
.{{* +
Nickname{{+ 3
,{{3 4
PuntajeTotal|| $
=||% &
(||' (
int||( +
)||+ ,
jugador||, 3
.||3 4
PuntajeTotal||4 @
,||@ A
Nivel}} 
=}} 
jugador}}  '
.}}' (
Nivel}}( -
}~~ 
) 
; 
}
ÄÄ 
return
ÇÇ 
mejoresJugadores
ÇÇ #
;
ÇÇ# $
}
ÉÉ 	
public
ää 
Dominio
ää 
.
ää 
Jugador
ää 
ObtenerJugador
ää -
(
ää- .
string
ää. 4
nickname
ää5 =
)
ää= >
{
ãã 	
Dominio
åå 
.
åå 
Jugador
åå 
jugador
åå #
;
åå# $
var
éé 
jugadorBuscado
éé 
=
éé  
baseDeDatos
éé! ,
.
éé, -
Jugador
éé- 4
.
éé4 5
Find
éé5 9
(
éé9 :
nickname
éé: B
)
ééB C
;
ééC D
jugador
êê 
=
êê 
new
êê 
Dominio
êê !
.
êê! "
Jugador
êê" )
{
ëë 
Nickname
íí 
=
íí 
nickname
íí #
,
íí# $
CorreoElectronico
ìì !
=
ìì" #
jugadorBuscado
ìì$ 2
.
ìì2 3
CorreoElectronico
ìì3 D
,
ììD E
PuntajeTotal
îî 
=
îî 
(
îî  
int
îî  #
)
îî# $
jugadorBuscado
îî$ 2
.
îî2 3
PuntajeTotal
îî3 ?
,
îî? @
Nivel
ïï 
=
ïï 
jugadorBuscado
ïï &
.
ïï& '
Nivel
ïï' ,
,
ïï, -
Experiencia
ññ 
=
ññ 
(
ññ 
int
ññ "
)
ññ" #
jugadorBuscado
ññ# 1
.
ññ1 2
Experiencia
ññ2 =
,
ññ= >
PartidasGanadas
óó 
=
óó  !
(
óó" #
int
óó# &
)
óó& '
jugadorBuscado
óó' 5
.
óó5 6
PartidasGanadas
óó6 E
,
óóE F
PartidasJugadas
òò 
=
òò  !
(
òò" #
int
òò# &
)
òò& '
jugadorBuscado
òò' 5
.
òò5 6
PartidasJugadas
òò6 E
}
ôô 
;
ôô 
return
õõ 
jugador
õõ 
;
õõ 
}
úú 	
public
¢¢ 
void
¢¢ -
ActualizarEstadisticasDeJugador
¢¢ 3
(
¢¢3 4
Dominio
¢¢4 ;
.
¢¢; <
Jugador
¢¢< C
jugador
¢¢D K
)
¢¢K L
{
££ 	
Jugador
§§ 
jugadorBuscado
§§ "
=
§§# $
baseDeDatos
§§% 0
.
§§0 1
Jugador
§§1 8
.
§§8 9
Find
§§9 =
(
§§= >
jugador
§§> E
.
§§E F
Nickname
§§F N
)
§§N O
;
§§O P
jugadorBuscado
¶¶ 
.
¶¶ 
PuntajeTotal
¶¶ '
=
¶¶( )
jugador
¶¶* 1
.
¶¶1 2
PuntajeTotal
¶¶2 >
;
¶¶> ?
jugadorBuscado
ßß 
.
ßß 
PartidasJugadas
ßß *
+=
ßß+ -
$num
ßß. /
;
ßß/ 0
jugadorBuscado
®® 
.
®® 
PartidasGanadas
®® *
+=
®®+ -
$num
®®. /
;
®®/ 0
int
™™ "
experienciaCalculada
™™ $
=
™™% &
$num
™™' )
+
™™* +
jugador
™™, 3
.
™™3 4
PuntajeTotal
™™4 @
;
™™@ A
jugadorBuscado
¨¨ 
.
¨¨ 
Experiencia
¨¨ &
+=
¨¨' )"
experienciaCalculada
¨¨* >
;
¨¨> ?
int
ÆÆ 
nivelCalculado
ÆÆ 
=
ÆÆ  
(
ÆÆ! "
int
ÆÆ" %
)
ÆÆ% &
jugadorBuscado
ÆÆ& 4
.
ÆÆ4 5
Experiencia
ÆÆ5 @
/
ÆÆA B
$num
ÆÆC F
;
ÆÆF G
jugadorBuscado
ØØ 
.
ØØ 
Nivel
ØØ  
=
ØØ! "
nivelCalculado
ØØ# 1
;
ØØ1 2
try
±± 
{
≤≤ 
baseDeDatos
≥≥ 
.
≥≥ 
SaveChanges
≥≥ '
(
≥≥' (
)
≥≥( )
;
≥≥) *
}
¥¥ 
catch
µµ 
(
µµ 
DbUpdateException
µµ $
)
µµ$ %
{
∂∂ 
throw
∑∑ 
new
∑∑ 
DbUpdateException
∑∑ +
(
∑∑+ ,
$str
∑∑, L
)
∑∑L M
;
∑∑M N
}
∏∏ 
}
ππ 	
public
øø 
void
øø '
ActualizarPartidasJugadas
øø -
(
øø- .
Dominio
øø. 5
.
øø5 6
Jugador
øø6 =
jugador
øø> E
)
øøE F
{
¿¿ 	
Jugador
¡¡ 
jugadorBuscado
¡¡ "
=
¡¡# $
baseDeDatos
¡¡% 0
.
¡¡0 1
Jugador
¡¡1 8
.
¡¡8 9
Find
¡¡9 =
(
¡¡= >
jugador
¡¡> E
.
¡¡E F
Nickname
¡¡F N
)
¡¡N O
;
¡¡O P
jugadorBuscado
√√ 
.
√√ 
PartidasJugadas
√√ *
++
√√* ,
;
√√, -
int
ƒƒ "
experienciaCalculada
ƒƒ $
=
ƒƒ% &
$num
ƒƒ' )
+
ƒƒ* +
jugador
ƒƒ, 3
.
ƒƒ3 4
PuntajeTotal
ƒƒ4 @
;
ƒƒ@ A
jugadorBuscado
≈≈ 
.
≈≈ 
Experiencia
≈≈ &
+=
≈≈' )"
experienciaCalculada
≈≈* >
;
≈≈> ?
int
«« 
nivelCalculado
«« 
=
««  
(
««! "
int
««" %
)
««% &
jugadorBuscado
««& 4
.
««4 5
Experiencia
««5 @
/
««A B
$num
««C F
;
««F G
jugadorBuscado
»» 
.
»» 
Nivel
»»  
=
»»! "
nivelCalculado
»»# 1
;
»»1 2
try
   
{
ÀÀ 
baseDeDatos
ÃÃ 
.
ÃÃ 
SaveChanges
ÃÃ '
(
ÃÃ' (
)
ÃÃ( )
;
ÃÃ) *
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ 
DbUpdateException
ŒŒ $
)
ŒŒ$ %
{
œœ 
throw
–– 
new
–– 
DbUpdateException
–– +
(
––+ ,
$str
––, L
)
––L M
;
––M N
}
—— 
}
““ 	
}
”” 
}‘‘ €
MD:\Juego-UNO\UNOServer\UNO.AccesoADatos\AdministrarDatos\AdministradorHash.cs
	namespace 	
UNO
 
. 
AccesoADatos 
. 
AdministrarDatos +
{ 
public 

static 
class 
AdministradorHash )
{ 
public 
static 
string 
GenerarHash (
(( )
string) /
texto0 5
)5 6
{ 	
return 
BCrypt 
. 
Net 
. 
BCrypt $
.$ %
HashPassword% 1
(1 2
texto2 7
)7 8
;8 9
} 	
public 
static 
bool 
CompararHash '
(' (
string( .
texto/ 4
,4 5
string6 <
textoConHash= I
)I J
{ 	
bool 

sonIguales 
= 
false #
;# $
if 
( 
BCrypt 
. 
Net 
. 
BCrypt !
.! "
Verify" (
(( )
texto) .
,. /
textoConHash0 <
)< =
)= >
{ 

sonIguales 
= 
true !
;! "
}   
return"" 

sonIguales"" 
;"" 
}## 	
}$$ 
}%% Ì
BD:\Juego-UNO\UNOServer\UNO.AccesoADatos\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str +
)+ ,
], -
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str $
)$ %
]% &
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str -
)- .
]. /
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 7
)7 8
]8 9
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *