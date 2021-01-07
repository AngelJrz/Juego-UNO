ØF
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
;00# $
string11 
contrase√±aConHash11 $
=11% &
AdministradorHash11' 8
.118 9
GenerarHash119 D
(11D E
contrase√±a11E O
)11O P
;11P Q
var33 
jugadorBuscado33 
=33  
baseDeDatos33! ,
.33, -
Jugador33- 4
.334 5
Where335 :
(33: ;
jugador33; B
=>33C E
jugador33F M
.33M N
Nickname33N V
.33V W
Equals33W ]
(33] ^
nickname33^ f
)33f g
)33g h
.44 
FirstOrDefault44 
<44  
Jugador44  '
>44' (
(44( )
)44) *
;44* +
if66 
(66 
AdministradorHash66 !
.66! "
CompararHash66" .
(66. /
jugadorBuscado66/ =
.66= >
Contrase√±a66> H
,66H I
contrase√±aConHash66J [
)66[ \
)66\ ]
{77 

esCorrecta88 
=88 
true88 !
;88! "
}99 
return;; 

esCorrecta;; 
;;; 
}<< 	
publicCC 
boolCC #
ExisteCorreoElectronicoCC +
(CC+ ,
stringCC, 2
correoElectronicoCC3 D
)CCD E
{DD 	
boolEE 
existeEE 
=EE 
falseEE 
;EE  
existeGG 
=GG 
baseDeDatosGG  
.GG  !
JugadorGG! (
.GG( )
AnyGG) ,
(GG, -
jugadorGG- 4
=>GG5 7
jugadorGG8 ?
.GG? @
CorreoElectronicoGG@ Q
.GGQ R
EqualsGGR X
(GGX Y
correoElectronicoGGY j
)GGj k
)GGk l
;GGl m
returnII 
existeII 
;II 
}JJ 	
publicPP 
voidPP 
GuardarJugadorPP "
(PP" #
DominioPP# *
.PP* +
JugadorPP+ 2
nuevoJugadorPP3 ?
)PP? @
{QQ 	
JugadorRR 
entidadJugadorRR "
=RR# $
newRR% (
JugadorRR) 0
{SS 
NicknameTT 
=TT 
nuevoJugadorTT '
.TT' (
NicknameTT( 0
,TT0 1
CorreoElectronicoUU !
=UU" #
nuevoJugadorUU$ 0
.UU0 1
CorreoElectronicoUU1 B
,UUB C
Contrase√±aVV 
=VV 
AdministradorHashVV .
.VV. /
GenerarHashVV/ :
(VV: ;
nuevoJugadorVV; G
.VVG H
Contrase√±aVVH R
)VVR S
,VVS T
NivelWW 
=WW 
$numWW 
,WW 
ExperienciaXX 
=XX 
$numXX 
,XX  
PartidasGanadasYY 
=YY  !
$numYY" #
,YY# $
PartidasJugadasZZ 
=ZZ  !
$numZZ" #
,ZZ# $
PuntajeTotal[[ 
=[[ 
$num[[  
}\\ 
;\\ 
baseDeDatos^^ 
.^^ 
Jugador^^ 
.^^  
Add^^  #
(^^# $
entidadJugador^^$ 2
)^^2 3
;^^3 4
try`` 
{aa 
baseDeDatosbb 
.bb 
SaveChangesbb '
(bb' (
)bb( )
;bb) *
}cc 
catchdd 
(dd 
DbUpdateExceptiondd $
)dd$ %
{ee 
throwff 
newff 
DbUpdateExceptionff +
(ff+ ,
$strff, L
)ffL M
;ffM N
}gg 
}ii 	
publicoo 
Listoo 
<oo 
Dominiooo 
.oo 
Jugadoroo #
>oo# $#
ObtenerMejoresJugadoresoo% <
(oo< =
)oo= >
{pp 	
Listqq 
<qq 
Dominioqq 
.qq 
Jugadorqq  
>qq  !
mejoresJugadoresqq" 2
=qq3 4
newqq5 8
Listqq9 =
<qq= >
Dominioqq> E
.qqE F
JugadorqqF M
>qqM N
(qqN O
)qqO P
;qqP Q
varss  
jugadoresConsultadosss $
=ss% &
baseDeDatosss' 2
.ss2 3
Jugadorss3 :
.tt 
AsNoTrackingtt 
(tt 
)tt 
.uu 
OrderByDescendinguu "
(uu" #
jugadoruu# *
=>uu+ -
jugadoruu. 5
.uu5 6
PuntajeTotaluu6 B
)uuB C
.uuC D
TakeuuD H
(uuH I
$numuuI J
)uuJ K
;uuK L
foreachww 
(ww 
varww 
jugadorww  
inww! # 
jugadoresConsultadosww$ 8
)ww8 9
{xx 
mejoresJugadoresyy  
.yy  !
Addyy! $
(yy$ %
newzz 
Dominiozz 
.zz  
Jugadorzz  '
{{{ 
Nickname||  
=||! "
jugador||# *
.||* +
Nickname||+ 3
,||3 4
PuntajeTotal}} $
=}}% &
(}}' (
int}}( +
)}}+ ,
jugador}}, 3
.}}3 4
PuntajeTotal}}4 @
,}}@ A
Nivel~~ 
=~~ 
jugador~~  '
.~~' (
Nivel~~( -
} 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 
return
ÉÉ 
mejoresJugadores
ÉÉ #
;
ÉÉ# $
}
ÑÑ 	
public
ÜÜ 
Dominio
ÜÜ 
.
ÜÜ 
Jugador
ÜÜ 
ObtenerJugador
ÜÜ -
(
ÜÜ- .
string
ÜÜ. 4
nickname
ÜÜ5 =
)
ÜÜ= >
{
áá 	
Dominio
àà 
.
àà 
Jugador
àà 
jugador
àà #
;
àà# $
var
ää 
jugadorBuscado
ää 
=
ää  
baseDeDatos
ää! ,
.
ää, -
Jugador
ää- 4
.
ää4 5
Find
ää5 9
(
ää9 :
nickname
ää: B
)
ääB C
;
ääC D
jugador
åå 
=
åå 
new
åå 
Dominio
åå !
.
åå! "
Jugador
åå" )
{
çç 
Nickname
éé 
=
éé 
nickname
éé #
,
éé# $
CorreoElectronico
èè !
=
èè" #
jugadorBuscado
èè$ 2
.
èè2 3
CorreoElectronico
èè3 D
,
èèD E
PuntajeTotal
êê 
=
êê 
(
êê  
int
êê  #
)
êê# $
jugadorBuscado
êê$ 2
.
êê2 3
PuntajeTotal
êê3 ?
,
êê? @
Nivel
ëë 
=
ëë 
jugadorBuscado
ëë &
.
ëë& '
Nivel
ëë' ,
,
ëë, -
Experiencia
íí 
=
íí 
(
íí 
int
íí "
)
íí" #
jugadorBuscado
íí# 1
.
íí1 2
Experiencia
íí2 =
,
íí= >
PartidasGanadas
ìì 
=
ìì  !
(
ìì" #
int
ìì# &
)
ìì& '
jugadorBuscado
ìì' 5
.
ìì5 6
PartidasGanadas
ìì6 E
,
ììE F
PartidasJugadas
îî 
=
îî  !
(
îî" #
int
îî# &
)
îî& '
jugadorBuscado
îî' 5
.
îî5 6
PartidasJugadas
îî6 E
}
ïï 
;
ïï 
return
óó 
jugador
óó 
;
óó 
}
òò 	
}
ôô 
}öö Ω
MD:\Juego-UNO\UNOServer\UNO.AccesoADatos\AdministrarDatos\AdministradorHash.cs
	namespace 	
UNO
 
. 
AccesoADatos 
. 
AdministrarDatos +
{ 
public		 

static		 
class		 
AdministradorHash		 )
{

 
public 
static 
string 
GenerarHash (
(( )
string) /
texto0 5
)5 6
{ 	
byte 
[ 
] 
textoFuente 
; 
byte 
[ 
] 
	textoHash 
; 
MD5 
md5Code 
= 
MD5 
. 
Create $
($ %
)% &
;& '
textoFuente 
= 
Encoding "
." #
ASCII# (
.( )
GetBytes) 1
(1 2
texto2 7
)7 8
;8 9
	textoHash 
= 
md5Code 
.  
ComputeHash  +
(+ ,
textoFuente, 7
)7 8
;8 9
StringBuilder 
textoConHash &
=' (
new) ,
StringBuilder- :
(: ;
); <
;< =
foreach 
( 
var 
letra 
in !
	textoHash" +
)+ ,
{ 
textoConHash 
. 
Append #
(# $
letra$ )
.) *
ToString* 2
(2 3
$str3 7
)7 8
)8 9
;9 :
} 
return   
textoConHash   
.    
ToString    (
(  ( )
)  ) *
;  * +
}!! 	
public)) 
static)) 
bool)) 
CompararHash)) '
())' (
string))( .
hashOriginal))/ ;
,)); <
string))= C
hashAComparar))D Q
)))Q R
{** 	
bool++ 

sonIguales++ 
=++ 
false++ #
;++# $
if-- 
(-- 
hashOriginal-- 
==-- 
hashAComparar--  -
)--- .
{.. 

sonIguales// 
=// 
true// !
;//! "
}00 
return22 

sonIguales22 
;22 
}33 	
}44 
}55 ¥
@D:\Juego-UNO\UNOServer\UNO.AccesoADatos\JuegoUNOModel.Context.cs
	namespace

 	
UNO


 
.

 
AccesoADatos

 
{ 
public 

partial 
class 
JuegoUNOContext (
:) *
	DbContext+ 4
{ 
public 
JuegoUNOContext 
( 
)  
: 
base 
( 
$str )
)) *
{ 	
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
DbModelBuilder0 >
modelBuilder? K
)K L
{ 	
throw 
new +
UnintentionalCodeFirstException 5
(5 6
)6 7
;7 8
} 	
public 
virtual 
DbSet 
< 
Jugador $
>$ %
Jugador& -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
} 
} :
8D:\Juego-UNO\UNOServer\UNO.AccesoADatos\JuegoUNOModel.csC
AD:\Juego-UNO\UNOServer\UNO.AccesoADatos\JuegoUNOModel.Designer.csÀ
2D:\Juego-UNO\UNOServer\UNO.AccesoADatos\Jugador.cs
	namespace

 	
UNO


 
.

 
AccesoADatos

 
{ 
public 

partial 
class 
Jugador  
{ 
public 
string 
Nickname 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
CorreoElectronico '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
Contrase√±a  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Nullable 
< 
int 
> 
Experiencia (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Nullable 
< 
int 
> 
PuntajeTotal )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
Nullable 
< 
int 
> 
PartidasGanadas ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
Nullable 
< 
int 
> 
PartidasJugadas ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
int 
Nivel 
{ 
get 
; 
set  #
;# $
}% &
} 
} Ì
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
]$$) *÷
TC:\Users\sammy\AppData\Local\Temp\.NETFramework,Version=v4.7.2.AssemblyAttributes.cs
[ 
assembly 	
:	 

global 
:: 
System 
. 
Runtime !
.! "

Versioning" ,
., -$
TargetFrameworkAttribute- E
(E F
$strF d
,d e 
FrameworkDisplayNamef z
={ |
$str	} ì
)
ì î
]
î ï