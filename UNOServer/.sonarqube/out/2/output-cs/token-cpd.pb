¡
LD:\Juego-UNO\UNOServer\UNO.Contratos\AdministradorEmail\CorreoElectronico.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
AdministradorEmail *
{ 
public 

class 
CorreoElectronico "
{ 
private		 

SmtpClient		 
cliente		 "
;		" #
private

 
MailAddress

 
	remitente

 %
;

% &
private 
const 
string 
USUARIO $
=% &
$str' D
;D E
private 
const 
string 
CONTRASE√ëA '
=( )
$str* H
;H I
private 
const 
string 
	DIRECCION &
=' (
$str) F
;F G
private 
const 
string 
NOMBRE_A_MOSTRAR -
=. /
$str0 @
;@ A
public 
CorreoElectronico  
(  !
)! "
{ 	
cliente 
= 
new 

SmtpClient $
{ 
Credentials 
= 
new !
NetworkCredential" 3
(3 4
USUARIO4 ;
,; <
CONTRASE√ëA= G
)G H
,H I
Port 
= 
$num 
, 
	EnableSsl 
= 
true  
,  !
Host 
= 
$str '
,' (
} 
; 
	remitente 
= 
new 
MailAddress '
(' (
	DIRECCION( 1
,1 2
NOMBRE_A_MOSTRAR3 C
)C D
;D E
} 	
public!! 
void!! !
EnviarClaveValidacion!! )
(!!) *
Jugador!!* 1
jugadorDestino!!2 @
)!!@ A
{"" 	
MailMessage## 
mensaje## 
=##  !
new##" %
MailMessage##& 1
(##1 2
)##2 3
;##3 4
mensaje$$ 
.$$ 
To$$ 
.$$ 
Add$$ 
($$ 
jugadorDestino$$ )
.$$) *
CorreoElectronico$$* ;
)$$; <
;$$< =
mensaje%% 
.%% 
Subject%% 
=%% 
$str%% 4
;%%4 5
mensaje&& 
.&& 

IsBodyHtml&& 
=&&  
true&&! %
;&&% &
mensaje'' 
.'' 
Body'' 
='' 
$"'' 
<h1>¬°Hola, '' (
{''( )
jugadorDestino'') 7
.''7 8
Nickname''8 @
}''@ A
!</h1>''A G
"''G H
+''I J
$str(( M
+((N O
$")) Q
E<h3>Ingresa la siguiente clave en la ventana de verificaci√≥n: <code>)) V
{))V W
jugadorDestino))W e
.))e f
ClaveValidacion))f u
}))u v
</code></h3>	))v Ç
"
))Ç É
;
))É Ñ
mensaje** 
.** 
From** 
=** 
	remitente** $
;**$ %
try,, 
{-- 
cliente.. 
... 
Send.. 
(.. 
mensaje.. $
)..$ %
;..% &
}// 
catch00 
(00 
SmtpException00  
)00  !
{11 
throw22 
new22 
SmtpException22 '
(22' (
$str22( D
)22D E
;22E F
}33 
}44 	
}55 
}66 “
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
} »
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
} π
DD:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\IAdministrarSala.cs
	namespace		 	
UNO		
 
.		 
	Contratos		 
.		 
LogicaJuego		 #
{

 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
ISalaCallback/ <
)< =
)= >
]> ?
public 

	interface 
IAdministrarSala %
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	CrearSala 
( 
Sala 
	nuevaSala %
,% &
Dominio' .
.. /
Jugador/ 6
jugador7 >
)> ?
;? @
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
UnirseASala 
( 
Sala 
salaAUnirse )
,) *
Dominio+ 2
.2 3
Jugador3 :
jugador; B
)B C
;C D
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SalirDeSala 
( 
string 
idSala  &
,& '
string( .
nickname/ 7
)7 8
;8 9
}   
}!! ˚
AD:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\ISalaCallback.cs
	namespace		 	
UNO		
 
.		 
	Contratos		 
.		 
LogicaJuego		 #
{

 
[ 
ServiceContract 
] 
public 

	interface 
ISalaCallback "
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
NotificarCreacionDeSala $
($ %
Sala% )

salaCreada* 4
)4 5
;5 6
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
NotificarUnionASala  
(  !
ResultadoUnionSala! 3
	resultado4 =
)= >
;> ?
[## 	
OperationContract##	 
(## 
IsOneWay## #
=##$ %
true##& *
)##* +
]##+ ,
void$$ 
ActualizarSala$$ 
($$ 
List$$  
<$$  !
string$$! '
>$$' (
	jugadores$$) 2
)$$2 3
;$$3 4
[** 	
OperationContract**	 
(** 
IsOneWay** #
=**$ %
true**& *
)*** +
]**+ ,
void++ $
ObtenerInformacionDeSala++ %
(++% &
Sala++& *
sala+++ /
)++/ 0
;++0 1
[11 	
OperationContract11	 
(11 
IsOneWay11 #
=11$ %
true11& *
)11* +
]11+ ,
void22 
AgregarNuevoJugador22  
(22  !
Dominio22! (
.22( )
Jugador22) 0
nuevoJugador221 =
)22= >
;22> ?
[88 	
OperationContract88	 
(88 
IsOneWay88 #
=88$ %
true88& *
)88* +
]88+ ,
void99 
SacarJugador99 
(99 
Dominio99 !
.99! "
Jugador99" )
jugadorASacar99* 7
)997 8
;998 9
[>> 	
OperationContract>>	 
(>> 
IsOneWay>> #
=>>$ %
true>>& *
)>>* +
]>>+ ,
void?? !
NotificarSalidaDeSala?? "
(??" #
)??# $
;??$ %
[DD 	
OperationContractDD	 
(DD 
IsOneWayDD #
=DD$ %
trueDD& *
)DD* +
]DD+ ,
voidEE &
NotificarEliminacionDeSalaEE '
(EE' (
)EE( )
;EE) *
[JJ 	
OperationContractJJ	 
(JJ 
IsOneWayJJ #
=JJ$ %
trueJJ& *
)JJ* +
]JJ+ ,
voidKK 
EliminarCreadorKK 
(KK 
)KK 
;KK 
}LL 
}MM ◊
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
Contrase√±aIncorrecta 
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
}

 
} ù	
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
Contrase√±a  
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
}$$O P
}%% 
}&& Ê;
8D:\Juego-UNO\UNOServer\UNO.Contratos\JuegoUNOServicio.cs
	namespace 	
UNO
 
. 
	Contratos 
{ 
public 

partial 
class 
JuegoUNOServicio )
:* +
IRegistrarJugador, =
{ 
private 
readonly 

Dictionary #
<# $%
IRegistrarJugadorCallback$ =
,= >
Jugador? F
>F G
jugadoresARegistrarH [
=\ ]
new^ a

Dictionaryb l
<l m&
IRegistrarJugadorCallback	m Ü
,
Ü á
Jugador
à è
>
è ê
(
ê ë
)
ë í
;
í ì
private 
readonly 
AdminDatosJugador *%
administradorDatosJugador+ D
=E F
newG J
AdminDatosJugadorK \
(\ ]
)] ^
;^ _
private 
readonly 
CorreoElectronico *"
adminCorreoElectronico+ A
=B C
newD G
CorreoElectronicoH Y
(Y Z
)Z [
;[ \
public 
void 
RegistrarJugador $
($ %
Jugador% ,
jugador- 4
)4 5
{ 	
ResultadoRegistro 
resultadoRegistro /
;/ 0
if 
( %
administradorDatosJugador )
.) *
ExisteNickname* 8
(8 9
jugador9 @
.@ A
NicknameA I
)I J
)J K
{ 
resultadoRegistro !
=" #
ResultadoRegistro$ 5
.5 6
UsuarioYaExiste6 E
;E F
} 
else 
if 
( %
administradorDatosJugador .
.. /#
ExisteCorreoElectronico/ F
(F G
jugadorG N
.N O
CorreoElectronicoO `
)` a
)a b
{   
resultadoRegistro!! !
=!!" #
ResultadoRegistro!!$ 5
.!!5 6
CorreoYaExiste!!6 D
;!!D E
}"" 
else## 
{$$ 
string%% 
claveValidacion%% &
=%%' (
GeneradorClave%%) 7
.%%7 8"
GenerarClaveValidacion%%8 N
(%%N O
)%%O P
;%%P Q
jugador&& 
.&& 
ClaveValidacion&& '
=&&( )
claveValidacion&&* 9
;&&9 :
try(( 
{)) "
adminCorreoElectronico** *
.*** +!
EnviarClaveValidacion**+ @
(**@ A
jugador**A H
)**H I
;**I J
}++ 
catch,, 
(,, 
SmtpException,, $
),,$ %
{-- 
throw.. 
new.. 
SmtpException.. +
(..+ ,
).., -
;..- .
}// 
jugadoresARegistrar11 #
.11# $
Add11$ '
(11' (!
ObtenerCallbackActual11( =
,11= >
jugador11? F
)11F G
;11G H
resultadoRegistro22 !
=22" #
ResultadoRegistro22$ 5
.225 6
RegistroExitoso226 E
;22E F
}33 !
ObtenerCallbackActual55 !
.55! "
NotificarRegistro55" 3
(553 4
resultadoRegistro554 E
)55E F
;55F G
}66 	
public88 
void88 
VerificarClave88 "
(88" #
string88# )
clave88* /
)88/ 0
{99 	
bool:: 
esClaveCorrecta::  
=::! "
false::# (
;::( )
foreach<< 
(<< 
var<< 
jugador<<  
in<<! #
jugadoresARegistrar<<$ 7
)<<7 8
{== 
if>> 
(>> 
jugador>> 
.>> 
Key>> 
==>>  "!
ObtenerCallbackActual>># 8
)>>8 9
{?? 
if@@ 
(@@ 
jugador@@ 
.@@  
Value@@  %
.@@% &
ClaveValidacion@@& 5
.@@5 6
Equals@@6 <
(@@< =
clave@@= B
)@@B C
)@@C D
{AA 
esClaveCorrectaBB '
=BB( )
trueBB* .
;BB. /
tryDD 
{EE %
administradorDatosJugadorFF 5
.FF5 6
GuardarJugadorFF6 D
(FFD E
jugadorFFE L
.FFL M
ValueFFM R
)FFR S
;FFS T
}GG 
catchHH 
(HH 
DbUpdateExceptionHH 0
)HH0 1
{II 
throwJJ !
newJJ" %
DbUpdateExceptionJJ& 7
(JJ7 8
$strJJ8 X
)JJX Y
;JJY Z
}KK 
}LL 
breakMM 
;MM 
}NN 
}OO 
ifQQ 
(QQ 
esClaveCorrectaQQ 
)QQ  
{RR 
jugadoresARegistrarSS #
.SS# $
RemoveSS$ *
(SS* +!
ObtenerCallbackActualSS+ @
)SS@ A
;SSA B
}TT !
ObtenerCallbackActualVV !
.VV! "#
NotificarResultadoClaveVV" 9
(VV9 :
esClaveCorrectaVV: I
)VVI J
;VVJ K
}WW 	
publicYY 
voidYY 
CancelarRegistroYY $
(YY$ %
)YY% &
{ZZ 	%
IRegistrarJugadorCallback[[ %
callbackActual[[& 4
=[[5 6!
ObtenerCallbackActual[[7 L
;[[L M
if]] 
(]] 
jugadoresARegistrar]] #
.]]# $
ContainsKey]]$ /
(]]/ 0
callbackActual]]0 >
)]]> ?
)]]? @
{^^ 
jugadoresARegistrar__ #
.__# $
Remove__$ *
(__* +
callbackActual__+ 9
)__9 :
;__: ;
}`` 
callbackActualbb 
.bb (
NotificarCancelacionRegistrobb 7
(bb7 8
)bb8 9
;bb9 :
}cc 	
publicee 
voidee 
EnviarClaveDeNuevoee &
(ee& '
)ee' (
{ff 	%
IRegistrarJugadorCallbackgg %
callbackActualgg& 4
=gg5 6!
ObtenerCallbackActualgg7 L
;ggL M
jugadoresARegistrarhh 
.hh  
TryGetValuehh  +
(hh+ ,
callbackActualhh, :
,hh: ;
outhh< ?
Jugadorhh@ G
jugadorhhH O
)hhO P
;hhP Q
ifjj 
(jj 
jugadorjj 
!=jj 
nulljj 
)jj  
{kk 
tryll 
{mm "
adminCorreoElectroniconn *
.nn* +!
EnviarClaveValidacionnn+ @
(nn@ A
jugadornnA H
)nnH I
;nnI J
}oo 
catchpp 
(pp 
SmtpExceptionpp $
)pp$ %
{qq 
throwrr 
newrr 
SmtpExceptionrr +
(rr+ ,
)rr, -
;rr- .
}ss 
callbackActualuu 
.uu !
NotificarEnvioDeClaveuu 4
(uu4 5
)uu5 6
;uu6 7
}vv 
}ww 	
privateyy %
IRegistrarJugadorCallbackyy )!
ObtenerCallbackActualyy* ?
{zz 	
get{{ 
{|| 
return}} 
OperationContext}} '
.}}' (
Current}}( /
.}}/ 0
GetCallbackChannel}}0 B
<}}B C%
IRegistrarJugadorCallback}}C \
>}}\ ]
(}}] ^
)}}^ _
;}}_ `
}~~ 
} 	
}
ÄÄ 
}ÅÅ ‚
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
}:: Ω
GD:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\IAdministrarPartida.cs
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
(

 
CallbackContract

 %
=

& '
typeof

( .
(

. /
IPartidaCallback

/ ?
)

? @
)

@ A
]

A B
public 

	interface 
IAdministrarPartida (
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
IniciarPartida 
( 
string "
idSala# )
)) *
;* +
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
RepartirCartas 
( 
Sala  
sala! %
)% &
;& '
} 
} Ä
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
}ZZ ˘
DD:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\IPartidaCallback.cs
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
	interface 
IPartidaCallback %
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void "
NotificarInicioPartida #
(# $
Sala$ (
sala) -
)- .
;. /
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ObtenerMaso 
( 
) 
; 
} 
} π
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
contrase√±a: D
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
EsContrase√±aCorrecta& :
(: ;
nickname; C
,C D
contrase√±aE O
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
Contrase√±aIncorrecta  4 H
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
}99 ¡
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
contrase√±a3 =
)= >
;> ?
} 
} Ñ
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
} É
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
Contrase√±aIncorrecta 
= 
$num  
,  !
ExisteJugador 
= 
$num 
} 
} ü
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
} Í
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
]$$) *∑
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
}&& Ã
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
}%% Ë
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
 —d
6D:\Juego-UNO\UNOServer\UNO.Contratos\ServicioDeSala.cs
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
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyModeG V
=W X
ConcurrencyModeY h
.h i
Multiplei q
)q r
]r s
public 

partial 
class 
JuegoUNOServicio )
:* +
IAdministrarJuego, =
{ 
private 
readonly 
List 
< 
Sala "
>" #
salasCreadas$ 0
=1 2
new3 6
List7 ;
<; <
Sala< @
>@ A
(A B
)B C
;C D
public 
void 
	CrearSala 
( 
Sala "
	nuevaSala# ,
,, -
Jugador. 5
jugador6 =
)= >
{ 	
IJuegoCallback 
callbackActual )
=* +
JuegoCallbackActual, ?
;? @
	nuevaSala 
. 
Id 
= "
ObtenerNuevoCodigoSala 1
(1 2
)2 3
;3 4
	nuevaSala 
. 
JugadoresEnSala %
.% &
Add& )
() *
jugador* 1
,1 2
callbackActual3 A
)A B
;B C
salasCreadas 
. 
Add 
( 
	nuevaSala &
)& '
;' (
callbackActual 
. #
NotificarCreacionDeSala 2
(2 3
	nuevaSala3 <
)< =
;= >
} 	
public&& 
void&& 
UnirseASala&& 
(&&  
Sala&&  $
salaAUnirse&&% 0
,&&0 1
Jugador&&2 9
jugador&&: A
)&&A B
{'' 	
ResultadoUnionSala(( 
resultadoUnionSala(( 1
=((2 3
ResultadoUnionSala((4 F
.((F G

NoExisteId((G Q
;((Q R
IJuegoCallback)) 
callbackActual)) )
=))* +
JuegoCallbackActual)), ?
;))? @
var++ 
salaBuscada++ 
=++ 
salasCreadas++ *
.++* +
Find+++ /
(++/ 0
sala++0 4
=>++5 7
sala++8 <
.++< =
Id++= ?
.++? @
Equals++@ F
(++F G
salaAUnirse++G R
.++R S
Id++S U
)++U V
)++V W
;++W X
if-- 
(-- 
salaBuscada-- 
!=-- 
null-- #
)--# $
{.. 
if// 
(// 
salaBuscada// 
.//  
Contrase√±a//  *
.//* +
Equals//+ 1
(//1 2
salaAUnirse//2 =
.//= >
Contrase√±a//> H
)//H I
)//I J
{00 
if11 
(11 
HayCupoEnSala11 %
(11% &
salaBuscada11& 1
)111 2
)112 3
{22 
resultadoUnionSala33 *
=33+ ,
ResultadoUnionSala33- ?
.33? @
UnionExitosa33@ L
;33L M
}44 
else55 
{66 
resultadoUnionSala77 *
=77+ ,
ResultadoUnionSala77- ?
.77? @
	NoHayCupo77@ I
;77I J
}88 
}99 
else:: 
{;; 
resultadoUnionSala<< &
=<<' (
ResultadoUnionSala<<) ;
.<<; <!
Contrase√±aIncorrecta<<< P
;<<P Q
}== 
}>> 
callbackActual@@ 
.@@ 
NotificarUnionASala@@ .
(@@. /
resultadoUnionSala@@/ A
)@@A B
;@@B C
ifAA 
(AA 
salaBuscadaAA 
!=AA 
nullAA #
&&AA$ &
resultadoUnionSalaAA' 9
==AA: <
ResultadoUnionSalaAA= O
.AAO P
UnionExitosaAAP \
)AA\ ]
{BB 
callbackActualCC 
.CC $
ObtenerInformacionDeSalaCC 7
(CC7 8
salaBuscadaCC8 C
)CCC D
;CCD E
salaBuscadaEE 
.EE 
JugadoresEnSalaEE +
.EE+ ,
AddEE, /
(EE/ 0
jugadorEE0 7
,EE7 8
callbackActualEE9 G
)EEG H
;EEH I%
AgregarNuevoJugadorEnSalaFF )
(FF) *
salaBuscadaFF* 5
,FF5 6
jugadorFF7 >
)FF> ?
;FF? @
}GG 
}HH 	
privateJJ 
voidJJ %
AgregarNuevoJugadorEnSalaJJ .
(JJ. /
SalaJJ/ 3
salaJJ4 8
,JJ8 9
JugadorJJ: A
nuevoJugadorJJB N
)JJN O
{KK 	
foreachLL 
(LL 
varLL 
jugadorLL  
inLL! #
salaLL$ (
.LL( )
JugadoresEnSalaLL) 8
)LL8 9
{MM 
jugadorNN 
.NN 
ValueNN 
.NN 
AgregarNuevoJugadorNN 1
(NN1 2
nuevoJugadorNN2 >
)NN> ?
;NN? @
}OO 
}PP 	
privateRR 
boolRR 
HayCupoEnSalaRR "
(RR" #
SalaRR# '
salaRR( ,
)RR, -
{SS 	
boolTT 
hayCupoTT 
=TT 
falseTT  
;TT  !
ifVV 
(VV 
salaVV 
.VV 
JugadoresEnSalaVV $
.VV$ %
CountVV% *
<VV+ ,
salaVV- 1
.VV1 2"
NumeroTotalDeJugadoresVV2 H
)VVH I
{WW 
hayCupoXX 
=XX 
trueXX 
;XX 
}YY 
return[[ 
hayCupo[[ 
;[[ 
}\\ 	
private^^ 
String^^ "
ObtenerNuevoCodigoSala^^ -
(^^- .
)^^. /
{__ 	
Random`` 
random`` 
=`` 
new`` 
Random``  &
(``& '
)``' (
;``( )
stringbb 
idSalabb 
=bb 
randombb "
.bb" #
Nextbb# '
(bb' (
$numbb( -
,bb- .
$numbb/ 4
)bb4 5
.bb5 6
ToStringbb6 >
(bb> ?
)bb? @
;bb@ A
returndd 
idSaladd 
;dd 
}ee 	
publicll 
voidll 
SalirDeSalall 
(ll  
stringll  &
idSalall' -
,ll- .
stringll/ 5
nicknamell6 >
)ll> ?
{mm 	
varnn 

salaActualnn 
=nn 
salasCreadasnn )
.nn) *
Findnn* .
(nn. /
salann/ 3
=>nn4 6
salann7 ;
.nn; <
Idnn< >
.nn> ?
Equalsnn? E
(nnE F
idSalannF L
)nnL M
)nnM N
;nnN O
ifpp 
(pp 

salaActualpp 
!=pp 
nullpp "
)pp" #
{qq 
IJuegoCallbackrr 
callbackActualrr -
=rr. /
JuegoCallbackActualrr0 C
;rrC D
Consoless 
.ss 
	WriteLiness !
(ss! "
$"ss" $
Callback actual: ss$ 5
{ss5 6
callbackActualss6 D
.ssD E
ToStringssE M
(ssM N
)ssN O
}ssO P
"ssP Q
)ssQ R
;ssR S
foreachvv 
(vv 
varvv 
jugadorvv $
invv% '

salaActualvv( 2
.vv2 3
JugadoresEnSalavv3 B
)vvB C
{ww 
Consolexx 
.xx 
	WriteLinexx %
(xx% &
$"xx& ('
Callback jugador buscando: xx( C
{xxC D
jugadorxxD K
.xxK L
ValuexxL Q
.xxQ R
ToStringxxR Z
(xxZ [
)xx[ \
}xx\ ]
"xx] ^
)xx^ _
;xx_ `
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
ÄÄ 
else
ÅÅ 
{
ÇÇ 
callbackActual
ÉÉ *
.
ÉÉ* +#
NotificarSalidaDeSala
ÉÉ+ @
(
ÉÉ@ A
)
ÉÉA B
;
ÉÉB C

salaActual
ÑÑ &
.
ÑÑ& '
JugadoresEnSala
ÑÑ' 6
.
ÑÑ6 7
Remove
ÑÑ7 =
(
ÑÑ= >
jugador
ÑÑ> E
.
ÑÑE F
Key
ÑÑF I
)
ÑÑI J
;
ÑÑJ K'
NotificarJugadorEliminado
ÖÖ 5
(
ÖÖ5 6

salaActual
ÖÖ6 @
,
ÖÖ@ A
jugador
ÖÖB I
.
ÖÖI J
Key
ÖÖJ M
)
ÖÖM N
;
ÖÖN O
}
ÜÜ 
break
áá 
;
áá 
}
àà 
}
ââ 
}
óó 
}
òò 	
private
öö 
void
öö '
NotificarJugadorEliminado
öö .
(
öö. /
Sala
öö/ 3

salaActual
öö4 >
,
öö> ?
Dominio
öö@ G
.
ööG H
Jugador
ööH O
jugadorASacar
ööP ]
)
öö] ^
{
õõ 	
foreach
úú 
(
úú 
var
úú 
jugador
úú  
in
úú! #

salaActual
úú$ .
.
úú. /
JugadoresEnSala
úú/ >
)
úú> ?
{
ùù 
jugador
ûû 
.
ûû 
Value
ûû 
.
ûû 
SacarJugador
ûû *
(
ûû* +
jugadorASacar
ûû+ 8
)
ûû8 9
;
ûû9 :
}
üü 
}
†† 	
private
¢¢ 
void
¢¢ 
EliminarSala
¢¢ !
(
¢¢! "
Sala
¢¢" &

salaActual
¢¢' 1
)
¢¢1 2
{
££ 	
if
§§ 
(
§§ 

salaActual
§§ 
.
§§ 
JugadoresEnSala
§§ *
.
§§* +
Count
§§+ 0
>
§§1 2
$num
§§3 4
)
§§4 5
{
•• 
foreach
¶¶ 
(
¶¶ 
var
¶¶ 
jugador
¶¶ $
in
¶¶% '

salaActual
¶¶( 2
.
¶¶2 3
JugadoresEnSala
¶¶3 B
)
¶¶B C
{
ßß 
jugador
®® 
.
®® 
Value
®® !
.
®®! "(
NotificarEliminacionDeSala
®®" <
(
®®< =
)
®®= >
;
®®> ?
}
©© 

salaActual
´´ 
.
´´ 
JugadoresEnSala
´´ *
.
´´* +
Clear
´´+ 0
(
´´0 1
)
´´1 2
;
´´2 3
}
¨¨ 
salasCreadas
ÆÆ 
.
ÆÆ 
Remove
ÆÆ 
(
ÆÆ  

salaActual
ÆÆ  *
)
ÆÆ* +
;
ÆÆ+ ,
}
ØØ 	
private
±± 
bool
±± 
EsCreadorDeLaSala
±± &
(
±±& '
Sala
±±' +
sala
±±, 0
,
±±0 1
Dominio
±±2 9
.
±±9 :
Jugador
±±: A
jugador
±±B I
)
±±I J
{
≤≤ 	
bool
≥≥ 
	esCreador
≥≥ 
=
≥≥ 
false
≥≥ "
;
≥≥" #
if
µµ 
(
µµ 
sala
µµ 
.
µµ 
	CreadaPor
µµ 
.
µµ 
Equals
µµ %
(
µµ% &
jugador
µµ& -
.
µµ- .
Nickname
µµ. 6
)
µµ6 7
)
µµ7 8
{
∂∂ 
	esCreador
∑∑ 
=
∑∑ 
true
∑∑  
;
∑∑  !
}
∏∏ 
return
∫∫ 
	esCreador
∫∫ 
;
∫∫ 
}
ªª 	
private
ΩΩ 
IJuegoCallback
ΩΩ !
JuegoCallbackActual
ΩΩ 2
{
ææ 	
get
øø 
{
¿¿ 
return
¡¡ 
OperationContext
¡¡ '
.
¡¡' (
Current
¡¡( /
.
¡¡/ 0 
GetCallbackChannel
¡¡0 B
<
¡¡B C
IJuegoCallback
¡¡C Q
>
¡¡Q R
(
¡¡R S
)
¡¡S T
;
¡¡T U
}
¬¬ 
}
√√ 	
}
ƒƒ 
}≈≈ ù
5D:\Juego-UNO\UNOServer\UNO.Contratos\ServicioJuego.cs
	namespace 	
UNO
 
. 
	Contratos 
{ 
}dd ı
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
;O P
foreach 
( 
var 
jugador  
in! #
salaBuscada$ /
./ 0
JugadoresEnSala0 ?
)? @
{ 
jugador 
. 
Value 
. "
NotificarInicioPartida 4
(4 5
salaBuscada5 @
)@ A
;A B
} 
} 	
public 
void 
RepartirCartas "
(" #
Sala# '
sala( ,
), -
{ 	
foreach 
( 
var 
jugador  
in! #
sala$ (
.( )
JugadoresEnSala) 8
)8 9
{ 
jugador 
. 
Value 
. 
ObtenerMaso )
() *
)* +
;+ ,
} 
} 	
} 
} ÷
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