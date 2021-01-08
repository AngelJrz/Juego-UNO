Ã
LD:\Juego-UNO\UNOServer\UNO.Contratos\AdministradorEmail\CorreoElectronico.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
AdministradorEmail *
{ 
public 

class 
CorreoElectronico "
{		 
private

 
readonly

 

SmtpClient

 #
cliente

$ +
;

+ ,
private 
readonly 
MailAddress $
	remitente% .
;. /
private 
readonly 
string 
usuario  '
=( ) 
ConfigurationManager* >
.> ?
AppSettings? J
[J K
$strK Z
]Z [
;[ \
private 
readonly 
string 
contraseÃ±a  *
=+ , 
ConfigurationManager- A
.A B
AppSettingsB M
[M N
$strN `
]` a
;a b
private 
const 
string 
	DIRECCION &
=' (
$str) F
;F G
private 
const 
string 
NOMBRE_A_MOSTRAR -
=. /
$str0 @
;@ A
public 
CorreoElectronico  
(  !
)! "
{ 	
cliente 
= 
new 

SmtpClient $
{ 
Credentials 
= 
new !
NetworkCredential" 3
(3 4
usuario4 ;
,; <
contraseÃ±a= G
)G H
,H I
Port 
= 
$num 
, 
	EnableSsl 
= 
true  
,  !
Host 
= 
$str '
,' (
} 
; 
	remitente 
= 
new 
MailAddress '
(' (
	DIRECCION( 1
,1 2
NOMBRE_A_MOSTRAR3 C
)C D
;D E
} 	
public"" 
void"" !
EnviarClaveValidacion"" )
("") *
Jugador""* 1
jugadorDestino""2 @
)""@ A
{## 	
MailMessage$$ 
mensaje$$ 
=$$  !
new$$" %
MailMessage$$& 1
($$1 2
)$$2 3
;$$3 4
mensaje%% 
.%% 
To%% 
.%% 
Add%% 
(%% 
jugadorDestino%% )
.%%) *
CorreoElectronico%%* ;
)%%; <
;%%< =
mensaje&& 
.&& 
Subject&& 
=&& 
$str&& 4
;&&4 5
mensaje'' 
.'' 

IsBodyHtml'' 
=''  
true''! %
;''% &
mensaje(( 
.(( 
Body(( 
=(( 
$"(( 
<h1>Â¡Hola, (( (
{((( )
jugadorDestino(() 7
.((7 8
Nickname((8 @
}((@ A
!</h1>((A G
"((G H
+((I J
$str)) M
+))N O
$"** Q
E<h3>Ingresa la siguiente clave en la ventana de verificaciÃ³n: <code>** V
{**V W
jugadorDestino**W e
.**e f
ClaveValidacion**f u
}**u v
</code></h3>	**v ‚
"
**‚ ƒ
;
**ƒ „
mensaje++ 
.++ 
From++ 
=++ 
	remitente++ $
;++$ %
try-- 
{.. 
cliente// 
.// 
Send// 
(// 
mensaje// $
)//$ %
;//% &
}00 
catch11 
(11 
SmtpException11  
)11  !
{22 
throw33 
new33 
SmtpException33 '
(33' (
$str33( D
)33D E
;33E F
}44 
}55 	
}66 
}77 Ò
ID:\Juego-UNO\UNOServer\UNO.Contratos\AdministrarJugador\GeneradorClave.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
AdministrarJugador *
{		 
public

 

static

 
class

 
GeneradorClave

 &
{ 
public 
static 
string "
GenerarClaveValidacion 3
(3 4
)4 5
{ 	
Random 
random 
= 
new 
Random  &
(& '
)' (
;( )
string 
claveValidacion "
=# $
random% +
.+ ,
Next, 0
(0 1
$num1 6
,6 7
$num8 =
)= >
.> ?
ToString? G
(G H
)H I
;I J
return 
claveValidacion "
;" #
} 	
} 
} ¢
BD:\Juego-UNO\UNOServer\UNO.Contratos\AdministrarJugador\IPerfil.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
AdministrarJugador *
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IPerfilCallback/ >
)> ?
)? @
]@ A
public		 

	interface		 
IPerfil		 
{

 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
BuscarJugador 
( 
string !
nickname" *
)* +
;+ ,
} 
} È
JD:\Juego-UNO\UNOServer\UNO.Contratos\AdministrarJugador\IPerfilCallback.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
AdministrarJugador *
{ 
[ 
ServiceContract 
] 
public		 

	interface		 
IPerfilCallback		 $
{

 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void %
ObtenerInformacionJugador &
(& '
Dominio' .
.. /
Jugador/ 6
jugador7 >
)> ?
;? @
} 
} œ
FD:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\ResultadoUnionSala.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
LogicaJuego #
{ 
public 

enum 
ResultadoUnionSala "
{ 

NoExisteId 
= 
$num 
, !
ContraseÃ±aIncorrecta 
= 
$num  
,  !
	NoHayCupo 
= 
$num 
, 
UnionExitosa		 
=		 
$num		 
,		 
EnJuego

 
=

 
$num

 
} 
} ç

8D:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\Sala.cs
	namespace		 	
UNO		
 
.		 
	Contratos		 
.		 
LogicaJuego		 #
{

 
public 

class 
Sala 
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
ContraseÃ±a  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int "
NumeroTotalDeJugadores )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
	CreadaPor 
{  !
get" %
;% &
set' *
;* +
}, -
public$$ 

Dictionary$$ 
<$$ 
Jugador$$ !
,$$! "
IJuegoCallback$$# 1
>$$1 2
JugadoresEnSala$$3 B
{$$C D
get$$E H
;$$H I
set$$J M
;$$M N
}$$O P
public)) 
bool)) 
EnJuego)) 
{)) 
get)) !
;))! "
set))# &
;))& '
}))( )
=))* +
false)), 1
;))1 2
}** 
}++ â;
8D:\Juego-UNO\UNOServer\UNO.Contratos\JuegoUNOServicio.cs
	namespace

 	
UNO


 
.

 
	Contratos

 
{ 
public 

partial 
class 
JuegoUNOServicio )
:* +
IRegistrarJugador, =
{ 
private 
readonly 

Dictionary #
<# $%
IRegistrarJugadorCallback$ =
,= >
Jugador? F
>F G
jugadoresARegistrarH [
=\ ]
new^ a

Dictionaryb l
<l m&
IRegistrarJugadorCallback	m †
,
† ‡
Jugador
ˆ 
>
 
(
 ‘
)
‘ ’
;
’ “
private 
readonly 
AdminDatosJugador *%
administradorDatosJugador+ D
=E F
newG J
AdminDatosJugadorK \
(\ ]
)] ^
;^ _
private 
readonly 
CorreoElectronico *"
adminCorreoElectronico+ A
=B C
newD G
CorreoElectronicoH Y
(Y Z
)Z [
;[ \
public 
void 
RegistrarJugador $
($ %
Jugador% ,
jugador- 4
)4 5
{ 	
ResultadoRegistro 
resultadoRegistro /
;/ 0
if 
( %
administradorDatosJugador )
.) *
ExisteNickname* 8
(8 9
jugador9 @
.@ A
NicknameA I
)I J
)J K
{ 
resultadoRegistro !
=" #
ResultadoRegistro$ 5
.5 6
UsuarioYaExiste6 E
;E F
} 
else 
if 
( %
administradorDatosJugador .
.. /#
ExisteCorreoElectronico/ F
(F G
jugadorG N
.N O
CorreoElectronicoO `
)` a
)a b
{ 
resultadoRegistro !
=" #
ResultadoRegistro$ 5
.5 6
CorreoYaExiste6 D
;D E
} 
else 
{   
string!! 
claveValidacion!! &
=!!' (
GeneradorClave!!) 7
.!!7 8"
GenerarClaveValidacion!!8 N
(!!N O
)!!O P
;!!P Q
jugador"" 
."" 
ClaveValidacion"" '
=""( )
claveValidacion""* 9
;""9 :
try$$ 
{%% "
adminCorreoElectronico&& *
.&&* +!
EnviarClaveValidacion&&+ @
(&&@ A
jugador&&A H
)&&H I
;&&I J
}'' 
catch(( 
((( 
SmtpException(( $
)(($ %
{)) 
throw** 
new** 
SmtpException** +
(**+ ,
)**, -
;**- .
}++ 
jugadoresARegistrar-- #
.--# $
Add--$ '
(--' (!
ObtenerCallbackActual--( =
,--= >
jugador--? F
)--F G
;--G H
resultadoRegistro.. !
=.." #
ResultadoRegistro..$ 5
...5 6
RegistroExitoso..6 E
;..E F
}// !
ObtenerCallbackActual11 !
.11! "
NotificarRegistro11" 3
(113 4
resultadoRegistro114 E
)11E F
;11F G
}22 	
public44 
void44 
VerificarClave44 "
(44" #
string44# )
clave44* /
)44/ 0
{55 	
bool66 
esClaveCorrecta66  
=66! "
false66# (
;66( )
foreach88 
(88 
var88 
jugador88  
in88! #
jugadoresARegistrar88$ 7
)887 8
{99 
if:: 
(:: 
jugador:: 
.:: 
Key:: 
==::  "!
ObtenerCallbackActual::# 8
)::8 9
{;; 
if<< 
(<< 
jugador<< 
.<<  
Value<<  %
.<<% &
ClaveValidacion<<& 5
.<<5 6
Equals<<6 <
(<<< =
clave<<= B
)<<B C
)<<C D
{== 
esClaveCorrecta>> '
=>>( )
true>>* .
;>>. /
try@@ 
{AA %
administradorDatosJugadorBB 5
.BB5 6
GuardarJugadorBB6 D
(BBD E
jugadorBBE L
.BBL M
ValueBBM R
)BBR S
;BBS T
}CC 
catchDD 
(DD 
DbUpdateExceptionDD 0
)DD0 1
{EE 
throwFF !
newFF" %
DbUpdateExceptionFF& 7
(FF7 8
$strFF8 X
)FFX Y
;FFY Z
}GG 
}HH 
breakII 
;II 
}JJ 
}KK 
ifMM 
(MM 
esClaveCorrectaMM 
)MM  
{NN 
jugadoresARegistrarOO #
.OO# $
RemoveOO$ *
(OO* +!
ObtenerCallbackActualOO+ @
)OO@ A
;OOA B
}PP !
ObtenerCallbackActualRR !
.RR! "#
NotificarResultadoClaveRR" 9
(RR9 :
esClaveCorrectaRR: I
)RRI J
;RRJ K
}SS 	
publicUU 
voidUU 
CancelarRegistroUU $
(UU$ %
)UU% &
{VV 	%
IRegistrarJugadorCallbackWW %
callbackActualWW& 4
=WW5 6!
ObtenerCallbackActualWW7 L
;WWL M
ifYY 
(YY 
jugadoresARegistrarYY #
.YY# $
ContainsKeyYY$ /
(YY/ 0
callbackActualYY0 >
)YY> ?
)YY? @
{ZZ 
jugadoresARegistrar[[ #
.[[# $
Remove[[$ *
([[* +
callbackActual[[+ 9
)[[9 :
;[[: ;
}\\ 
callbackActual^^ 
.^^ (
NotificarCancelacionRegistro^^ 7
(^^7 8
)^^8 9
;^^9 :
}__ 	
publicaa 
voidaa 
EnviarClaveDeNuevoaa &
(aa& '
)aa' (
{bb 	%
IRegistrarJugadorCallbackcc %
callbackActualcc& 4
=cc5 6!
ObtenerCallbackActualcc7 L
;ccL M
jugadoresARegistrardd 
.dd  
TryGetValuedd  +
(dd+ ,
callbackActualdd, :
,dd: ;
outdd< ?
Jugadordd@ G
jugadorddH O
)ddO P
;ddP Q
ifff 
(ff 
jugadorff 
!=ff 
nullff 
)ff  
{gg 
tryhh 
{ii "
adminCorreoElectronicojj *
.jj* +!
EnviarClaveValidacionjj+ @
(jj@ A
jugadorjjA H
)jjH I
;jjI J
}kk 
catchll 
(ll 
SmtpExceptionll $
)ll$ %
{mm 
thrownn 
newnn 
SmtpExceptionnn +
(nn+ ,
)nn, -
;nn- .
}oo 
callbackActualqq 
.qq !
NotificarEnvioDeClaveqq 4
(qq4 5
)qq5 6
;qq6 7
}rr 
}ss 	
privateuu %
IRegistrarJugadorCallbackuu )!
ObtenerCallbackActualuu* ?
{vv 	
getww 
{xx 
returnyy 
OperationContextyy '
.yy' (
Currentyy( /
.yy/ 0
GetCallbackChannelyy0 B
<yyB C%
IRegistrarJugadorCallbackyyC \
>yy\ ]
(yy] ^
)yy^ _
;yy_ `
}zz 
}{{ 	
}|| 
}}} â
ED:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\IAdministrarJuego.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
LogicaJuego #
{		 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IJuegoCallback/ =
)= >
)> ?
]? @
public 

	interface 
IAdministrarJuego &
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	CrearSala 
( 
Sala 
	nuevaSala %
,% &
Dominio' .
.. /
Jugador/ 6
jugador7 >
)> ?
;? @
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
UnirseASala 
( 
Sala 
salaAUnirse )
,) *
Dominio+ 2
.2 3
Jugador3 :
jugador; B
)B C
;C D
[&& 	
OperationContract&&	 
(&& 
IsOneWay&& #
=&&$ %
true&&& *
)&&* +
]&&+ ,
void'' 
SalirDeSala'' 
('' 
string'' 
idSala''  &
,''& '
string''( .
nickname''/ 7
)''7 8
;''8 9
[// 	
OperationContract//	 
(// 
IsOneWay// #
=//$ %
true//& *
)//* +
]//+ ,
void00 
IniciarPartida00 
(00 
string00 "
idSala00# )
)00) *
;00* +
[66 	
OperationContract66	 
(66 
IsOneWay66 #
=66$ %
true66& *
)66* +
]66+ ,
void77 
RepartirCartas77 
(77 
Sala77  
sala77! %
)77% &
;77& '
}99 
}:: €
BD:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\IJuegoCallback.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
LogicaJuego #
{		 
[

 
ServiceContract

 
]

 
public 

	interface 
IJuegoCallback #
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void #
NotificarCreacionDeSala $
($ %
Sala% )

salaCreada* 4
)4 5
;5 6
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
NotificarUnionASala  
(  !
ResultadoUnionSala! 3
	resultado4 =
)= >
;> ?
[   	
OperationContract  	 
(   
IsOneWay   #
=  $ %
true  & *
)  * +
]  + ,
void!! 
ActualizarSala!! 
(!! 
List!!  
<!!  !
string!!! '
>!!' (
	jugadores!!) 2
)!!2 3
;!!3 4
['' 	
OperationContract''	 
('' 
IsOneWay'' #
=''$ %
true''& *
)''* +
]''+ ,
void(( $
ObtenerInformacionDeSala(( %
(((% &
Sala((& *
sala((+ /
)((/ 0
;((0 1
[.. 	
OperationContract..	 
(.. 
IsOneWay.. #
=..$ %
true..& *
)..* +
]..+ ,
void// 
AgregarNuevoJugador//  
(//  !
Dominio//! (
.//( )
Jugador//) 0
nuevoJugador//1 =
)//= >
;//> ?
[55 	
OperationContract55	 
(55 
IsOneWay55 #
=55$ %
true55& *
)55* +
]55+ ,
void66 
SacarJugador66 
(66 
Dominio66 !
.66! "
Jugador66" )
jugadorASacar66* 7
)667 8
;668 9
[;; 	
OperationContract;;	 
(;; 
IsOneWay;; #
=;;$ %
true;;& *
);;* +
];;+ ,
void<< !
NotificarSalidaDeSala<< "
(<<" #
)<<# $
;<<$ %
[AA 	
OperationContractAA	 
(AA 
IsOneWayAA #
=AA$ %
trueAA& *
)AA* +
]AA+ ,
voidBB &
NotificarEliminacionDeSalaBB '
(BB' (
)BB( )
;BB) *
[GG 	
OperationContractGG	 
(GG 
IsOneWayGG #
=GG$ %
trueGG& *
)GG* +
]GG+ ,
voidHH 
EliminarCreadorHH 
(HH 
)HH 
;HH 
[PP 	
OperationContractPP	 
(PP 
IsOneWayPP #
=PP$ %
truePP& *
)PP* +
]PP+ ,
voidQQ "
NotificarInicioPartidaQQ #
(QQ# $
SalaQQ$ (
salaQQ) -
)QQ- .
;QQ. /
[VV 	
OperationContractVV	 
(VV 
IsOneWayVV #
=VV$ %
trueVV& *
)VV* +
]VV+ ,
voidWW 
ObtenerMasoWW 
(WW 
)WW 
;WW 
}YY 
}ZZ ¹
5D:\Juego-UNO\UNOServer\UNO.Contratos\LoginServicio.cs
	namespace

 	
UNO


 
.

 
	Contratos

 
{ 
public 

partial 
class 
JuegoUNOServicio )
:* +
ILogin, 2
{ 
public 
void 
IniciarSesion !
(! "
string" (
nickname) 1
,1 2
string3 9
contraseÃ±a: D
)D E
{ 	
ResultadoLogin 
resultadoLogin )
;) *
AdminDatosJugador 
adminDatosJugador /
=0 1
new2 5
AdminDatosJugador6 G
(G H
)H I
;I J
if 
( 
adminDatosJugador !
.! "
ExisteNickname" 0
(0 1
nickname1 9
)9 :
): ;
{ 
if 
( 
adminDatosJugador %
.% &!
EsContraseÃ±aCorrecta& :
(: ;
nickname; C
,C D
contraseÃ±aE O
)O P
)P Q
{ 
resultadoLogin "
=# $
ResultadoLogin% 3
.3 4
ExisteJugador4 A
;A B
} 
else 
{ 
resultadoLogin   "
=  # $
ResultadoLogin  % 3
.  3 4!
ContraseÃ±aIncorrecta  4 H
;  H I
}!! 
}"" 
else## 
{$$ 
resultadoLogin%% 
=%%  
ResultadoLogin%%! /
.%%/ 0
NoExisteNickname%%0 @
;%%@ A
}&& 
LoginCallback(( 
.(( #
NotificarResultadoLogin(( 1
(((1 2
resultadoLogin((2 @
)((@ A
;((A B
if** 
(** 
resultadoLogin** 
==** !
ResultadoLogin**" 0
.**0 1
ExisteJugador**1 >
)**> ?
{++ 
List,, 
<,, 
Dominio,, 
.,, 
Jugador,, $
>,,$ %
jugadoresTop,,& 2
=,,3 4
adminDatosJugador,,5 F
.,,F G#
ObtenerMejoresJugadores,,G ^
(,,^ _
),,_ `
;,,` a
LoginCallback-- 
.-- 
ObtenerJugadoresTop-- 1
(--1 2
jugadoresTop--2 >
)--> ?
;--? @
}.. 
}// 	
private11 
ILoginCallback11 
LoginCallback11 ,
{22 	
get33 
{44 
return55 
OperationContext55 '
.55' (
Current55( /
.55/ 0
GetCallbackChannel550 B
<55B C
ILoginCallback55C Q
>55Q R
(55R S
)55S T
;55T U
}66 
}77 	
}88 
}99 Á
4D:\Juego-UNO\UNOServer\UNO.Contratos\Login\ILogin.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
Login 
{		 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
ILoginCallback/ =
)= >
)> ?
]? @
public 

	interface 
ILogin 
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
IniciarSesion 
( 
string !
nickname" *
,* +
string, 2
contraseÃ±a3 =
)= >
;> ?
} 
} „
<D:\Juego-UNO\UNOServer\UNO.Contratos\Login\ILoginCallback.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
Login 
{		 
[ 
ServiceContract 
] 
public 

	interface 
ILoginCallback #
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void #
NotificarResultadoLogin $
($ %
ResultadoLogin% 3
	resultado4 =
)= >
;> ?
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ObtenerJugadoresTop  
(  !
List! %
<% &
Dominio& -
.- .
Jugador. 5
>5 6
jugadoresTop7 C
)C D
;D E
} 
} ƒ
<D:\Juego-UNO\UNOServer\UNO.Contratos\Login\ResultadoLogin.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
Login 
{ 
public 

enum 
ResultadoLogin 
{ 
NoExisteNickname 
= 
$num 
, !
ContraseÃ±aIncorrecta 
= 
$num  
,  !
ExisteJugador 
= 
$num 
} 
} Ÿ
6D:\Juego-UNO\UNOServer\UNO.Contratos\PerfilServicio.cs
	namespace

 	
UNO


 
.

 
	Contratos

 
{ 
public 

partial 
class 
JuegoUNOServicio )
:* +
IPerfil, 3
{ 
public 
void 
BuscarJugador !
(! "
string" (
nickname) 1
)1 2
{ 	
AdminDatosJugador 
adminDatosJugador /
=0 1
new2 5
AdminDatosJugador6 G
(G H
)H I
;I J
Dominio 
. 
Jugador 
jugadorBuscado *
=+ ,
adminDatosJugador- >
.> ?
ObtenerJugador? M
(M N
nicknameN V
)V W
;W X
PerfilCallback 
. %
ObtenerInformacionJugador 4
(4 5
jugadorBuscado5 C
)C D
;D E
} 	
private 
IPerfilCallback 
PerfilCallback  .
{ 	
get 
{ 
return 
OperationContext '
.' (
Current( /
./ 0
GetCallbackChannel0 B
<B C
IPerfilCallbackC R
>R S
(S T
)T U
;U V
} 
} 	
} 
} ê
?D:\Juego-UNO\UNOServer\UNO.Contratos\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str (
)( )
]) *
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
$str *
)* +
]+ ,
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
]$$) *·
LD:\Juego-UNO\UNOServer\UNO.Contratos\AdministrarJugador\IRegistrarJugador.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
AdministrarJugador *
{ 
[		 
ServiceContract		 
(		 
CallbackContract		 %
=		& '
typeof		( .
(		. /%
IRegistrarJugadorCallback		/ H
)		H I
)		I J
]		J K
public

 

	interface

 
IRegistrarJugador

 &
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
RegistrarJugador 
( 
Jugador %
jugador& -
)- .
;. /
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
VerificarClave 
( 
string "
clave# (
)( )
;) *
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
CancelarRegistro 
( 
) 
;  
[## 	
OperationContract##	 
(## 
IsOneWay## #
=##$ %
true##& *
)##* +
]##+ ,
void$$ 
EnviarClaveDeNuevo$$ 
($$  
)$$  !
;$$! "
}%% 
}&& Ì
TD:\Juego-UNO\UNOServer\UNO.Contratos\AdministrarJugador\IRegistrarJugadorCallback.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
AdministrarJugador *
{ 
[ 
ServiceContract 
] 
public		 

	interface		 %
IRegistrarJugadorCallback		 .
{

 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
NotificarRegistro 
( 
ResultadoRegistro 0
	resultado1 :
): ;
;; <
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void #
NotificarResultadoClave $
($ %
bool% )
claveValida* 5
)5 6
;6 7
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void (
NotificarCancelacionRegistro )
() *
)* +
;+ ,
["" 	
OperationContract""	 
("" 
IsOneWay"" #
=""$ %
true""& *
)""* +
]""+ ,
void## !
NotificarEnvioDeClave## "
(##" #
)### $
;##$ %
}$$ 
}%% è
LD:\Juego-UNO\UNOServer\UNO.Contratos\AdministrarJugador\ResultadoRegistro.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
AdministrarJugador *
{ 
public 

enum 
ResultadoRegistro !
{ 
RegistroExitoso 
= 
$num 
, 
ErrorRegistro 
= 
$num 
, 
UsuarioYaExiste 
= 
$num 
, 
CorreoYaExiste 
= 
$num 
}		 
}

 ¡b
6D:\Juego-UNO\UNOServer\UNO.Contratos\ServicioDeSala.cs
	namespace 	
UNO
 
. 
	Contratos 
{ 
[		 
ServiceBehavior		 
(		 
InstanceContextMode		 (
=		) *
InstanceContextMode		+ >
.		> ?
Single		? E
,		E F
ConcurrencyMode		G V
=		W X
ConcurrencyMode		Y h
.		h i
Multiple		i q
)		q r
]		r s
public

 

partial

 
class

 
JuegoUNOServicio

 )
:

* +
IAdministrarJuego

, =
{ 
private 
readonly 
List 
< 
Sala "
>" #
salasCreadas$ 0
=1 2
new3 6
List7 ;
<; <
Sala< @
>@ A
(A B
)B C
;C D
public 
void 
	CrearSala 
( 
Sala "
	nuevaSala# ,
,, -
Jugador. 5
jugador6 =
)= >
{ 	
IJuegoCallback 
callbackActual )
=* +
JuegoCallbackActual, ?
;? @
	nuevaSala 
. 
Id 
= "
ObtenerNuevoCodigoSala 1
(1 2
)2 3
;3 4
	nuevaSala 
. 
JugadoresEnSala %
.% &
Add& )
() *
jugador* 1
,1 2
callbackActual3 A
)A B
;B C
salasCreadas 
. 
Add 
( 
	nuevaSala &
)& '
;' (
callbackActual 
. #
NotificarCreacionDeSala 2
(2 3
	nuevaSala3 <
)< =
;= >
} 	
public## 
void## 
UnirseASala## 
(##  
Sala##  $
salaAUnirse##% 0
,##0 1
Jugador##2 9
jugador##: A
)##A B
{$$ 	
ResultadoUnionSala%% 
resultadoUnionSala%% 1
=%%2 3
ResultadoUnionSala%%4 F
.%%F G

NoExisteId%%G Q
;%%Q R
IJuegoCallback&& 
callbackActual&& )
=&&* +
JuegoCallbackActual&&, ?
;&&? @
var(( 
salaBuscada(( 
=(( 
salasCreadas(( *
.((* +
Find((+ /
(((/ 0
sala((0 4
=>((5 7
sala((8 <
.((< =
Id((= ?
.((? @
Equals((@ F
(((F G
salaAUnirse((G R
.((R S
Id((S U
)((U V
)((V W
;((W X
if** 
(** 
salaBuscada** 
!=** 
null** #
)**# $
{++ 
if,, 
(,, 
salaBuscada,, 
.,,  
ContraseÃ±a,,  *
.,,* +
Equals,,+ 1
(,,1 2
salaAUnirse,,2 =
.,,= >
ContraseÃ±a,,> H
),,H I
),,I J
{-- 
if.. 
(.. 
salaBuscada.. #
...# $
EnJuego..$ +
)..+ ,
{// 
resultadoUnionSala00 *
=00+ ,
ResultadoUnionSala00- ?
.00? @
EnJuego00@ G
;00G H
}11 
else22 
{33 
if44 
(44 
HayCupoEnSala44 )
(44) *
salaBuscada44* 5
)445 6
)446 7
{55 
resultadoUnionSala66 .
=66/ 0
ResultadoUnionSala661 C
.66C D
UnionExitosa66D P
;66P Q
}77 
else88 
{99 
resultadoUnionSala:: .
=::/ 0
ResultadoUnionSala::1 C
.::C D
	NoHayCupo::D M
;::M N
};; 
}<< 
}== 
else>> 
{?? 
resultadoUnionSala@@ &
=@@' (
ResultadoUnionSala@@) ;
.@@; <!
ContraseÃ±aIncorrecta@@< P
;@@P Q
}AA 
}BB 
callbackActualDD 
.DD 
NotificarUnionASalaDD .
(DD. /
resultadoUnionSalaDD/ A
)DDA B
;DDB C
ifEE 
(EE 
salaBuscadaEE 
!=EE 
nullEE #
&&EE$ &
resultadoUnionSalaEE' 9
==EE: <
ResultadoUnionSalaEE= O
.EEO P
UnionExitosaEEP \
)EE\ ]
{FF 
callbackActualGG 
.GG $
ObtenerInformacionDeSalaGG 7
(GG7 8
salaBuscadaGG8 C
)GGC D
;GGD E
salaBuscadaHH 
.HH 
JugadoresEnSalaHH +
.HH+ ,
AddHH, /
(HH/ 0
jugadorHH0 7
,HH7 8
callbackActualHH9 G
)HHG H
;HHH I%
AgregarNuevoJugadorEnSalaII )
(II) *
salaBuscadaII* 5
,II5 6
jugadorII7 >
)II> ?
;II? @
}JJ 
}KK 	
privateMM 
voidMM %
AgregarNuevoJugadorEnSalaMM .
(MM. /
SalaMM/ 3
salaMM4 8
,MM8 9
JugadorMM: A
nuevoJugadorMMB N
)MMN O
{NN 	
foreachOO 
(OO 
varOO 
jugadorOO  
inOO! #
salaOO$ (
.OO( )
JugadoresEnSalaOO) 8
)OO8 9
{PP 
jugadorQQ 
.QQ 
ValueQQ 
.QQ 
AgregarNuevoJugadorQQ 1
(QQ1 2
nuevoJugadorQQ2 >
)QQ> ?
;QQ? @
}RR 
}SS 	
privateUU 
boolUU 
HayCupoEnSalaUU "
(UU" #
SalaUU# '
salaUU( ,
)UU, -
{VV 	
boolWW 
hayCupoWW 
=WW 
falseWW  
;WW  !
ifYY 
(YY 
salaYY 
.YY 
JugadoresEnSalaYY $
.YY$ %
CountYY% *
<YY+ ,
salaYY- 1
.YY1 2"
NumeroTotalDeJugadoresYY2 H
)YYH I
{ZZ 
hayCupo[[ 
=[[ 
true[[ 
;[[ 
}\\ 
return^^ 
hayCupo^^ 
;^^ 
}__ 	
privateaa 
Stringaa "
ObtenerNuevoCodigoSalaaa -
(aa- .
)aa. /
{bb 	
Randomcc 
randomcc 
=cc 
newcc 
Randomcc  &
(cc& '
)cc' (
;cc( )
stringee 
idSalaee 
=ee 
randomee "
.ee" #
Nextee# '
(ee' (
$numee( -
,ee- .
$numee/ 4
)ee4 5
.ee5 6
ToStringee6 >
(ee> ?
)ee? @
;ee@ A
returngg 
idSalagg 
;gg 
}hh 	
publicoo 
voidoo 
SalirDeSalaoo 
(oo  
stringoo  &
idSalaoo' -
,oo- .
stringoo/ 5
nicknameoo6 >
)oo> ?
{pp 	
varqq 

salaActualqq 
=qq 
salasCreadasqq )
.qq) *
Findqq* .
(qq. /
salaqq/ 3
=>qq4 6
salaqq7 ;
.qq; <
Idqq< >
.qq> ?
Equalsqq? E
(qqE F
idSalaqqF L
)qqL M
)qqM N
;qqN O
ifss 
(ss 

salaActualss 
!=ss 
nullss "
)ss" #
{tt 
IJuegoCallbackuu 
callbackActualuu -
=uu. /
JuegoCallbackActualuu0 C
;uuC D
foreachww 
(ww 
varww 
jugadorww $
inww% '

salaActualww( 2
.ww2 3
JugadoresEnSalaww3 B
)wwB C
{xx 
ifyy 
(yy 
jugadoryy 
.yy  
Keyyy  #
.yy# $
Nicknameyy$ ,
.yy, -
Equalsyy- 3
(yy3 4
nicknameyy4 <
)yy< =
)yy= >
{zz 
if{{ 
({{ 
EsCreadorDeLaSala{{ -
({{- .

salaActual{{. 8
,{{8 9
jugador{{: A
.{{A B
Key{{B E
){{E F
){{F G
{|| 
callbackActual}} *
.}}* +
EliminarCreador}}+ :
(}}: ;
)}}; <
;}}< =

salaActual~~ &
.~~& '
JugadoresEnSala~~' 6
.~~6 7
Remove~~7 =
(~~= >
jugador~~> E
.~~E F
Key~~F I
)~~I J
;~~J K
EliminarSala (
(( )

salaActual) 3
)3 4
;4 5
}
€€ 
else
 
{
‚‚ 
callbackActual
ƒƒ *
.
ƒƒ* +#
NotificarSalidaDeSala
ƒƒ+ @
(
ƒƒ@ A
)
ƒƒA B
;
ƒƒB C

salaActual
„„ &
.
„„& '
JugadoresEnSala
„„' 6
.
„„6 7
Remove
„„7 =
(
„„= >
jugador
„„> E
.
„„E F
Key
„„F I
)
„„I J
;
„„J K'
NotificarJugadorEliminado
…… 5
(
……5 6

salaActual
……6 @
,
……@ A
jugador
……B I
.
……I J
Key
……J M
)
……M N
;
……N O
}
†† 
break
‡‡ 
;
‡‡ 
}
ˆˆ 
}
‰‰ 
}
ŠŠ 
}
‹‹ 	
private
 
void
 '
NotificarJugadorEliminado
 .
(
. /
Sala
/ 3

salaActual
4 >
,
> ?
Dominio
@ G
.
G H
Jugador
H O
jugadorASacar
P ]
)
] ^
{
ŽŽ 	
foreach
 
(
 
var
 
jugador
  
in
! #

salaActual
$ .
.
. /
JugadoresEnSala
/ >
)
> ?
{
 
jugador
‘‘ 
.
‘‘ 
Value
‘‘ 
.
‘‘ 
SacarJugador
‘‘ *
(
‘‘* +
jugadorASacar
‘‘+ 8
)
‘‘8 9
;
‘‘9 :
}
’’ 
}
““ 	
private
•• 
void
•• 
EliminarSala
•• !
(
••! "
Sala
••" &

salaActual
••' 1
)
••1 2
{
–– 	
if
—— 
(
—— 

salaActual
—— 
.
—— 
JugadoresEnSala
—— *
.
——* +
Count
——+ 0
>
——1 2
$num
——3 4
)
——4 5
{
˜˜ 
foreach
™™ 
(
™™ 
var
™™ 
jugador
™™ $
in
™™% '

salaActual
™™( 2
.
™™2 3
JugadoresEnSala
™™3 B
)
™™B C
{
šš 
jugador
›› 
.
›› 
Value
›› !
.
››! "(
NotificarEliminacionDeSala
››" <
(
››< =
)
››= >
;
››> ?
}
œœ 

salaActual
žž 
.
žž 
JugadoresEnSala
žž *
.
žž* +
Clear
žž+ 0
(
žž0 1
)
žž1 2
;
žž2 3
}
ŸŸ 
salasCreadas
¡¡ 
.
¡¡ 
Remove
¡¡ 
(
¡¡  

salaActual
¡¡  *
)
¡¡* +
;
¡¡+ ,
}
¢¢ 	
private
¤¤ 
bool
¤¤ 
EsCreadorDeLaSala
¤¤ &
(
¤¤& '
Sala
¤¤' +
sala
¤¤, 0
,
¤¤0 1
Dominio
¤¤2 9
.
¤¤9 :
Jugador
¤¤: A
jugador
¤¤B I
)
¤¤I J
{
¥¥ 	
bool
¦¦ 
	esCreador
¦¦ 
=
¦¦ 
false
¦¦ "
;
¦¦" #
if
¨¨ 
(
¨¨ 
sala
¨¨ 
.
¨¨ 
	CreadaPor
¨¨ 
.
¨¨ 
Equals
¨¨ %
(
¨¨% &
jugador
¨¨& -
.
¨¨- .
Nickname
¨¨. 6
)
¨¨6 7
)
¨¨7 8
{
©© 
	esCreador
ªª 
=
ªª 
true
ªª  
;
ªª  !
}
«« 
return
­­ 
	esCreador
­­ 
;
­­ 
}
®® 	
private
°° 
IJuegoCallback
°° !
JuegoCallbackActual
°° 2
{
±± 	
get
²² 
{
³³ 
return
´´ 
OperationContext
´´ '
.
´´' (
Current
´´( /
.
´´/ 0 
GetCallbackChannel
´´0 B
<
´´B C
IJuegoCallback
´´C Q
>
´´Q R
(
´´R S
)
´´S T
;
´´T U
}
µµ 
}
¶¶ 	
}
·· 
}¸¸ 
5D:\Juego-UNO\UNOServer\UNO.Contratos\ServicioJuego.cs
	namespace 	
UNO
 
. 
	Contratos 
{ 
}dd œ
7D:\Juego-UNO\UNOServer\UNO.Contratos\ServicioPartida.cs
	namespace 	
UNO
 
. 
	Contratos 
{		 
public

 

partial

 
class

 
JuegoUNOServicio

 )
{ 
public 
void 
IniciarPartida "
(" #
string# )
idSala* 0
)0 1
{ 	
var 
salaBuscada 
= 
salasCreadas *
.* +
Find+ /
(/ 0
sala0 4
=>5 7
sala8 <
.< =
Id= ?
.? @
Equals@ F
(F G
idSalaG M
)M N
)N O
;O P
PonerSalaEnJuego 
( 
idSala #
)# $
;$ %
foreach 
( 
var 
jugador  
in! #
salaBuscada$ /
./ 0
JugadoresEnSala0 ?
)? @
{ 
jugador 
. 
Value 
. "
NotificarInicioPartida 4
(4 5
salaBuscada5 @
)@ A
;A B
} 
} 	
private 
void 
PonerSalaEnJuego %
(% &
string& ,
idSala- 3
)3 4
{ 	
salasCreadas 
. 
Where 
( 
sala #
=>$ &
sala' +
.+ ,
Id, .
.. /
Equals/ 5
(5 6
idSala6 <
)< =
)= >
.> ?
FirstOrDefault? M
(M N
)N O
.O P
EnJuegoP W
=X Y
trueZ ^
;^ _
} 	
public 
void 
RepartirCartas "
(" #
Sala# '
sala( ,
), -
{ 	
foreach 
( 
var 
jugador  
in! #
sala$ (
.( )
JugadoresEnSala) 8
)8 9
{ 
jugador   
.   
Value   
.   
ObtenerMaso   )
(  ) *
)  * +
;  + ,
}!! 
}"" 	
}## 
}$$ Ö
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
$str	} “
)
“ ”
]
” •