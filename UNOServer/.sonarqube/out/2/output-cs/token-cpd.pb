√
LD:\Juego-UNO\UNOServer\UNO.Contratos\AdministradorEmail\CorreoElectronico.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
AdministradorEmail *
{ 
public 

class 
CorreoElectronico "
{ 
private 
readonly 

SmtpClient #
cliente$ +
;+ ,
private 
readonly 
MailAddress $
	remitente% .
;. /
private 
readonly 
string 
usuario  '
=( ) 
ConfigurationManager* >
.> ?
AppSettings? J
[J K
$strK Z
]Z [
;[ \
private 
readonly 
string 
contrase√±a  *
=+ , 
ConfigurationManager- A
.A B
AppSettingsB M
[M N
$strN `
]` a
;a b
private 
const 
string 
	DIRECCION &
=' (
$str) F
;F G
private 
const 
string 
NOMBRE_A_MOSTRAR -
=. /
$str0 @
;@ A
public 
CorreoElectronico  
(  !
)! "
{ 	
cliente 
= 
new 

SmtpClient $
{ 
Credentials 
= 
new !
NetworkCredential" 3
(3 4
usuario4 ;
,; <
contrase√±a= G
)G H
,H I
Port 
= 
$num 
, 
	EnableSsl 
= 
true  
,  !
Host 
= 
$str '
,' (
} 
; 
	remitente!! 
=!! 
new!! 
MailAddress!! '
(!!' (
	DIRECCION!!( 1
,!!1 2
NOMBRE_A_MOSTRAR!!3 C
)!!C D
;!!D E
}"" 	
public(( 
void(( !
EnviarClaveValidacion(( )
((() *
Jugador((* 1
jugadorDestino((2 @
)((@ A
{)) 	
MailMessage** 
mensaje** 
=**  !
new**" %
MailMessage**& 1
(**1 2
)**2 3
;**3 4
mensaje++ 
.++ 
To++ 
.++ 
Add++ 
(++ 
jugadorDestino++ )
.++) *
CorreoElectronico++* ;
)++; <
;++< =
mensaje,, 
.,, 
Subject,, 
=,, 
$str,, 4
;,,4 5
mensaje-- 
.-- 

IsBodyHtml-- 
=--  
true--! %
;--% &
mensaje.. 
... 
Body.. 
=.. 
$".. 
<h1>¬°Hola, .. (
{..( )
jugadorDestino..) 7
...7 8
Nickname..8 @
}..@ A
!</h1>..A G
"..G H
+..I J
$str// M
+//N O
$"00 Q
E<h3>Ingresa la siguiente clave en la ventana de verificaci√≥n: <code>00 V
{00V W
jugadorDestino00W e
.00e f
ClaveValidacion00f u
}00u v
</code></h3>	00v Ç
"
00Ç É
;
00É Ñ
mensaje11 
.11 
From11 
=11 
	remitente11 $
;11$ %
try33 
{44 
cliente55 
.55 
Send55 
(55 
mensaje55 $
)55$ %
;55% &
}66 
catch77 
(77 
SmtpException77  
)77  !
{88 
throw99 
new99 
SmtpException99 '
(99' (
$str99( D
)99D E
;99E F
}:: 
};; 	
}<< 
}== “
ID:\Juego-UNO\UNOServer\UNO.Contratos\AdministrarJugador\GeneradorClave.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
AdministrarJugador *
{ 
public		 

static		 
class		 
GeneradorClave		 &
{

 
public 
static 
string "
GenerarClaveValidacion 3
(3 4
)4 5
{ 	
Random 
random 
= 
new 
Random  &
(& '
)' (
;( )
string 
claveValidacion "
=# $
random% +
.+ ,
Next, 0
(0 1
$num1 6
,6 7
$num8 =
)= >
.> ?
ToString? G
(G H
)H I
;I J
return 
claveValidacion "
;" #
} 	
} 
} ¢
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
} „1
;D:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\Partida.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
LogicaJuego #
{ 
public

 

class

 
Partida

 
{ 
private 
int 
turno 
= 
$num 
; 
public 
String 
SentidoJuego "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
$str3 <
;< =
public 
List 
< 
Dominio 
. 
Jugador #
># $
JugadoresEnPartida% 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
String 
CambiarTurno "
(" #
)# $
{ 	
if 
( 
SentidoJuego 
. 
Equals #
(# $
$str$ -
)- .
). /
{ 
if   
(   
turno   
<   
JugadoresEnPartida   .
.  . /
Count  / 4
)  4 5
{!! 
turno"" 
++"" 
;"" 
}## 
else$$ 
{%% 
turno&& 
=&& 
$num&& 
;&& 
}'' 
}(( 
else)) 
{** 
if++ 
(++ 
turno++ 
>++ 
$num++ 
)++ 
{,, 
turno-- 
---- 
;-- 
}.. 
else// 
{00 
turno11 
=11 
JugadoresEnPartida11 .
.11. /
Count11/ 4
;114 5
}22 
}33 
return55 
JugadoresEnPartida55 %
.55% &
	ElementAt55& /
(55/ 0
turno550 5
-556 7
$num558 9
)559 :
.55: ;
Nickname55; C
;55C D
}66 	
public<< 
string<< #
ObtenerSiguienteJugador<< -
(<<- .
)<<. /
{== 	
int>> 
turnoAuxiliar>> 
=>> 
turno>>  %
;>>% &
if@@ 
(@@ 
SentidoJuego@@ 
.@@ 
Equals@@ #
(@@# $
$str@@$ -
)@@- .
)@@. /
{AA 
ifBB 
(BB 
turnoBB 
<BB 
JugadoresEnPartidaBB .
.BB. /
CountBB/ 4
)BB4 5
{CC 
turnoAuxiliarDD !
++DD! #
;DD# $
}EE 
elseFF 
{GG 
turnoAuxiliarHH !
=HH" #
$numHH$ %
;HH% &
}II 
}JJ 
elseKK 
{LL 
ifMM 
(MM 
turnoAuxiliarMM !
>MM" #
$numMM$ %
)MM% &
{NN 
turnoAuxiliarOO !
--OO! #
;OO# $
}PP 
elseQQ 
{RR 
turnoAuxiliarSS !
=SS" #
JugadoresEnPartidaSS$ 6
.SS6 7
CountSS7 <
;SS< =
}TT 
}UU 
returnWW 
JugadoresEnPartidaWW %
.WW% &
	ElementAtWW& /
(WW/ 0
turnoAuxiliarWW0 =
-WW> ?
$numWW@ A
)WWA B
.WWB C
NicknameWWC K
;WWK L
}XX 	
public]] 
void]] $
CancelarSiguienteJugador]] ,
(]], -
)]]- .
{^^ 	
if__ 
(__ 
SentidoJuego__ 
.__ 
Equals__ #
(__# $
$str__$ -
)__- .
)__. /
{`` 
ifaa 
(aa 
!aa 
SonDosJugadoresaa $
(aa$ %
)aa% &
)aa& '
{bb 
turnocc 
+=cc 
$numcc 
;cc 
ifee 
(ee 
turnoee 
>ee 
JugadoresEnPartidaee  2
.ee2 3
Countee3 8
)ee8 9
{ff 
turnogg 
=gg 
$numgg  !
;gg! "
}hh 
}ii 
}jj 
elsekk 
{ll 
ifmm 
(mm 
!mm 
SonDosJugadoresmm $
(mm$ %
)mm% &
)mm& '
{nn 
turnooo 
-=oo 
$numoo 
;oo 
ifqq 
(qq 
turnoqq 
<qq 
$numqq  !
)qq! "
{rr 
turnoss 
=ss 
JugadoresEnPartidass  2
.ss2 3
Countss3 8
;ss8 9
}tt 
}uu 
}vv 
}ww 	
public}} 
string}} !
ObtenerJugadorEnTurno}} +
(}}+ ,
)}}, -
{~~ 	
return 
JugadoresEnPartida %
.% &
	ElementAt& /
(/ 0
turno0 5
-6 7
$num8 9
)9 :
.: ;
Nickname; C
;C D
}
ÄÄ 	
public
ÖÖ 
void
ÖÖ 
ReiniciarTurnos
ÖÖ #
(
ÖÖ# $
)
ÖÖ$ %
{
ÜÜ 	
turno
áá 
=
áá 
$num
áá 
;
áá 
}
àà 	
public
éé 
void
éé 
SacarJugador
éé  
(
éé  !
Dominio
éé! (
.
éé( )
Jugador
éé) 0
jugador
éé1 8
)
éé8 9
{
èè 	 
JugadoresEnPartida
êê 
.
êê 
Remove
êê %
(
êê% &
jugador
êê& -
)
êê- .
;
êê. /
}
ëë 	
public
óó 
bool
óó %
HaySuficientesJugadores
óó +
(
óó+ ,
)
óó, -
{
òò 	
return
ôô  
JugadoresEnPartida
ôô %
.
ôô% &
Count
ôô& +
>=
ôô, .
$num
ôô/ 0
;
ôô0 1
}
öö 	
private
úú 
bool
úú 
SonDosJugadores
úú $
(
úú$ %
)
úú% &
{
ùù 	
return
ûû  
JugadoresEnPartida
ûû %
.
ûû% &
Count
ûû& +
==
ûû, .
$num
ûû/ 0
;
ûû0 1
}
üü 	
}
†† 
}°° ú
FD:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\ResultadoUnionSala.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
LogicaJuego #
{ 
public 

enum 
ResultadoUnionSala "
{ 

NoExisteId 
= 
$num 
, !
Contrase√±aIncorrecta 
= 
$num  
,  !
	NoHayCupo 
= 
$num 
, 
UnionExitosa 
= 
$num 
, 
EnJuego 
= 
$num 
} 
} â
8D:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\Sala.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
LogicaJuego #
{ 
public		 

class		 
Sala		 
{

 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Contrase√±a  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int "
NumeroTotalDeJugadores )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
	CreadaPor 
{  !
get" %
;% &
set' *
;* +
}, -
public"" 

Dictionary"" 
<"" 
Jugador"" !
,""! "
IJuegoCallback""# 1
>""1 2
JugadoresEnSala""3 B
{""C D
get""E H
;""H I
set""J M
;""M N
}""O P
public'' 
bool'' 
EnJuego'' 
{'' 
get'' !
;''! "
set''# &
;''& '
}''( )
=''* +
false'', 1
;''1 2
public,, 
Partida,, 
PartidaDeSala,, $
{,,% &
get,,' *
;,,* +
set,,, /
;,,/ 0
},,1 2
}-- 
}.. í<
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
IRegistrarJugadorCallback	m Ü
,
Ü á
Jugador
à è
>
è ê
(
ê ë
)
ë í
;
í ì
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
public<< 
void<< 
VerificarClave<< "
(<<" #
string<<# )
clave<<* /
)<</ 0
{== 	
bool>> 
esClaveCorrecta>>  
=>>! "
false>># (
;>>( )
foreach@@ 
(@@ 
var@@ 
jugador@@  
in@@! #
jugadoresARegistrar@@$ 7
)@@7 8
{AA 
ifBB 
(BB 
jugadorBB 
.BB 
KeyBB 
==BB  "!
ObtenerCallbackActualBB# 8
)BB8 9
{CC 
ifDD 
(DD 
jugadorDD 
.DD  
ValueDD  %
.DD% &
ClaveValidacionDD& 5
.DD5 6
EqualsDD6 <
(DD< =
claveDD= B
)DDB C
)DDC D
{EE 
esClaveCorrectaFF '
=FF( )
trueFF* .
;FF. /
tryHH 
{II %
administradorDatosJugadorJJ 5
.JJ5 6
GuardarJugadorJJ6 D
(JJD E
jugadorJJE L
.JJL M
ValueJJM R
)JJR S
;JJS T
}KK 
catchLL 
(LL 
DbUpdateExceptionLL 0
)LL0 1
{MM 
throwNN !
newNN" %
DbUpdateExceptionNN& 7
(NN7 8
$strNN8 X
)NNX Y
;NNY Z
}OO 
}PP 
breakQQ 
;QQ 
}RR 
}SS 
ifUU 
(UU 
esClaveCorrectaUU 
)UU  
{VV 
jugadoresARegistrarWW #
.WW# $
RemoveWW$ *
(WW* +!
ObtenerCallbackActualWW+ @
)WW@ A
;WWA B
}XX !
ObtenerCallbackActualZZ !
.ZZ! "#
NotificarResultadoClaveZZ" 9
(ZZ9 :
esClaveCorrectaZZ: I
)ZZI J
;ZZJ K
}[[ 	
public`` 
void`` 
CancelarRegistro`` $
(``$ %
)``% &
{aa 	%
IRegistrarJugadorCallbackbb %
callbackActualbb& 4
=bb5 6!
ObtenerCallbackActualbb7 L
;bbL M
ifdd 
(dd 
jugadoresARegistrardd #
.dd# $
ContainsKeydd$ /
(dd/ 0
callbackActualdd0 >
)dd> ?
)dd? @
{ee 
jugadoresARegistrarff #
.ff# $
Removeff$ *
(ff* +
callbackActualff+ 9
)ff9 :
;ff: ;
}gg 
callbackActualii 
.ii (
NotificarCancelacionRegistroii 7
(ii7 8
)ii8 9
;ii9 :
}jj 	
publicoo 
voidoo 
EnviarClaveDeNuevooo &
(oo& '
)oo' (
{pp 	%
IRegistrarJugadorCallbackqq %
callbackActualqq& 4
=qq5 6!
ObtenerCallbackActualqq7 L
;qqL M
jugadoresARegistrarrr 
.rr  
TryGetValuerr  +
(rr+ ,
callbackActualrr, :
,rr: ;
outrr< ?
Jugadorrr@ G
jugadorrrH O
)rrO P
;rrP Q
iftt 
(tt 
jugadortt 
!=tt 
nulltt 
)tt  
{uu 
tryvv 
{ww "
adminCorreoElectronicoxx *
.xx* +!
EnviarClaveValidacionxx+ @
(xx@ A
jugadorxxA H
)xxH I
;xxI J
}yy 
catchzz 
(zz 
SmtpExceptionzz $
)zz$ %
{{{ 
throw|| 
new|| 
SmtpException|| +
(||+ ,
)||, -
;||- .
}}} 
callbackActual 
. !
NotificarEnvioDeClave 4
(4 5
)5 6
;6 7
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ '
IRegistrarJugadorCallback
ÉÉ )#
ObtenerCallbackActual
ÉÉ* ?
{
ÑÑ 	
get
ÖÖ 
{
ÜÜ 
return
áá 
OperationContext
áá '
.
áá' (
Current
áá( /
.
áá/ 0 
GetCallbackChannel
áá0 B
<
ááB C'
IRegistrarJugadorCallback
ááC \
>
áá\ ]
(
áá] ^
)
áá^ _
;
áá_ `
}
àà 
}
ââ 	
}
ää 
}ãã å
ED:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\IAdministrarJuego.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
LogicaJuego #
{ 
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
. /
IJuegoCallback

/ =
)

= >
)

> ?
]

? @
public 

	interface 
IAdministrarJuego &
{ 
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
[## 	
OperationContract##	 
(## 
IsOneWay## #
=##$ %
true##& *
)##* +
]##+ ,
void$$ 
SalirDeSala$$ 
($$ 
string$$ 
idSala$$  &
,$$& '
string$$( .
nickname$$/ 7
)$$7 8
;$$8 9
[-- 	
OperationContract--	 
(-- 
IsOneWay-- #
=--$ %
true--& *
)--* +
]--+ ,
void.. 
IniciarPartida.. 
(.. 
string.. "
idSala..# )
)..) *
;..* +
[55 	
OperationContract55	 
(55 
IsOneWay55 #
=55$ %
true55& *
)55* +
]55+ ,
void66 
ColocarCartaCentral66  
(66  !
Carta66! &
cartaCentral66' 3
,663 4
String665 ;
idSalaJugador66< I
)66I J
;66J K
[== 	
OperationContract==	 
(== 
IsOneWay== #
===$ %
true==& *
)==* +
]==+ ,
void>> 

TomarCarta>> 
(>> 
String>> 
idSalaJugador>> ,
,>>, -
String>>. 4
nickname>>5 =
)>>= >
;>>> ?
[EE 	
OperationContractEE	 
(EE 
IsOneWayEE #
=EE$ %
trueEE& *
)EE* +
]EE+ ,
voidFF 
AnunciarGanadorFF 
(FF 
StringFF #
idSalaJugadorFF$ 1
,FF1 2
JugadorFF3 :
jugadorGanadorFF; I
)FFI J
;FFJ K
[NN 	
OperationContractNN	 
(NN 
IsOneWayNN #
=NN$ %
trueNN& *
)NN* +
]NN+ ,
voidOO #
ActualizarNumeroDeCartaOO $
(OO$ %
StringOO% +
idSalaJugadorOO, 9
,OO9 :
StringOO; A
nicknameOOB J
,OOJ K
StringOOL R
numeroDeCartasOOS a
)OOa b
;OOb c
[WW 	
OperationContractWW	 
(WW 
IsOneWayWW #
=WW$ %
trueWW& *
)WW* +
]WW+ ,
voidXX 
ActualizarPuntajeXX 
(XX 
StringXX %
idSalaJugadorXX& 3
,XX3 4
StringXX5 ;
nicknameXX< D
,XXD E
intXXF I
puntajeASumarXXJ W
)XXW X
;XXX Y
}ZZ 
}[[ Ó4
BD:\Juego-UNO\UNOServer\UNO.Contratos\LogicaJuego\IJuegoCallback.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
LogicaJuego #
{ 
[ 
ServiceContract 
] 
public 

	interface 
IJuegoCallback #
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void #
NotificarCreacionDeSala $
($ %
Sala% )

salaCreada* 4
)4 5
;5 6
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
NotificarUnionASala  
(  !
ResultadoUnionSala! 3
	resultado4 =
)= >
;> ?
[!! 	
OperationContract!!	 
(!! 
IsOneWay!! #
=!!$ %
true!!& *
)!!* +
]!!+ ,
void"" 
ActualizarSala"" 
("" 
List""  
<""  !
string""! '
>""' (
	jugadores"") 2
)""2 3
;""3 4
[(( 	
OperationContract((	 
((( 
IsOneWay(( #
=(($ %
true((& *
)((* +
]((+ ,
void)) $
ObtenerInformacionDeSala)) %
())% &
Sala))& *
sala))+ /
)))/ 0
;))0 1
[// 	
OperationContract//	 
(// 
IsOneWay// #
=//$ %
true//& *
)//* +
]//+ ,
void00 
AgregarNuevoJugador00  
(00  !
Dominio00! (
.00( )
Jugador00) 0
nuevoJugador001 =
)00= >
;00> ?
[66 	
OperationContract66	 
(66 
IsOneWay66 #
=66$ %
true66& *
)66* +
]66+ ,
void77 
SacarJugador77 
(77 
Dominio77 !
.77! "
Jugador77" )
jugadorASacar77* 7
)777 8
;778 9
[<< 	
OperationContract<<	 
(<< 
IsOneWay<< #
=<<$ %
true<<& *
)<<* +
]<<+ ,
void== !
NotificarSalidaDeSala== "
(==" #
)==# $
;==$ %
[BB 	
OperationContractBB	 
(BB 
IsOneWayBB #
=BB$ %
trueBB& *
)BB* +
]BB+ ,
voidCC &
NotificarEliminacionDeSalaCC '
(CC' (
)CC( )
;CC) *
[HH 	
OperationContractHH	 
(HH 
IsOneWayHH #
=HH$ %
trueHH& *
)HH* +
]HH+ ,
voidII 
EliminarCreadorII 
(II 
)II 
;II 
[NN 	
OperationContractNN	 
(NN 
IsOneWayNN #
=NN$ %
trueNN& *
)NN* +
]NN+ ,
voidOO %
NotificarFaltaDeJugadoresOO &
(OO& '
)OO' (
;OO( )
[WW 	
OperationContractWW	 
(WW 
IsOneWayWW #
=WW$ %
trueWW& *
)WW* +
]WW+ ,
voidXX "
NotificarInicioPartidaXX #
(XX# $
SalaXX$ (
salaXX) -
)XX- .
;XX. /
[^^ 	
OperationContract^^	 
(^^ 
IsOneWay^^ #
=^^$ %
true^^& *
)^^* +
]^^+ ,
void__ 
ObtenerMazo__ 
(__ 
List__ 
<__ 
Carta__ #
>__# $
mazoDeJugador__% 2
)__2 3
;__3 4
[ee 	
OperationContractee	 
(ee 
IsOneWayee #
=ee$ %
trueee& *
)ee* +
]ee+ ,
voidff "
ActualizarCartaCentralff #
(ff# $
Cartaff$ )
cartaCentralff* 6
)ff6 7
;ff7 8
[ll 	
OperationContractll	 
(ll 
IsOneWayll #
=ll$ %
truell& *
)ll* +
]ll+ ,
voidmm 
RecibirCartamm 
(mm 
Cartamm 
cartaTomadamm  +
)mm+ ,
;mm, -
[ss 	
OperationContractss	 
(ss 
IsOneWayss #
=ss$ %
truess& *
)ss* +
]ss+ ,
voidtt 
NotificarGanadortt 
(tt 
Stringtt $
jugadorGanadortt% 3
)tt3 4
;tt4 5
[zz 	
OperationContractzz	 
(zz 
IsOneWayzz #
=zz$ %
truezz& *
)zz* +
]zz+ ,
void{{ 
CambiarTurno{{ 
({{ 
String{{  

nuevoTurno{{! +
){{+ ,
;{{, -
[
ÇÇ 	
OperationContract
ÇÇ	 
(
ÇÇ 
IsOneWay
ÇÇ #
=
ÇÇ$ %
true
ÇÇ& *
)
ÇÇ* +
]
ÇÇ+ ,
void
ÉÉ &
ActualizarNumeroDeCartas
ÉÉ %
(
ÉÉ% &
String
ÉÉ& ,
nickname
ÉÉ- 5
,
ÉÉ5 6
String
ÉÉ7 =
numeroDeCartas
ÉÉ> L
)
ÉÉL M
;
ÉÉM N
[
ââ 	
OperationContract
ââ	 
(
ââ 
IsOneWay
ââ #
=
ââ$ %
true
ââ& *
)
ââ* +
]
ââ+ ,
void
ää 
ObtenerDosCartas
ää 
(
ää 
List
ää "
<
ää" #
Carta
ää# (
>
ää( )
nuevasCartas
ää* 6
)
ää6 7
;
ää7 8
[
êê 	
OperationContract
êê	 
(
êê 
IsOneWay
êê #
=
êê$ %
true
êê& *
)
êê* +
]
êê+ ,
void
ëë !
ObtenerCuatroCartas
ëë  
(
ëë  !
List
ëë! %
<
ëë% &
Carta
ëë& +
>
ëë+ ,
nuevasCartas
ëë- 9
)
ëë9 :
;
ëë: ;
[
óó 	
OperationContract
óó	 
(
óó 
IsOneWay
óó #
=
óó$ %
true
óó& *
)
óó* +
]
óó+ ,
void
òò  
ObtenerTurnoActual
òò 
(
òò  
string
òò  &
turnoActual
òò' 2
)
òò2 3
;
òò3 4
[
üü 	
OperationContract
üü	 
(
üü 
IsOneWay
üü #
=
üü$ %
true
üü& *
)
üü* +
]
üü+ ,
void
†† (
ActualizarPuntajeDeJugador
†† '
(
††' (
String
††( .
nickname
††/ 7
,
††7 8
int
††9 <
puntajeASumar
††= J
)
††J K
;
††K L
}
¢¢ 
}££ ®!
5D:\Juego-UNO\UNOServer\UNO.Contratos\LoginServicio.cs
	namespace 	
UNO
 
. 
	Contratos 
{ 
public 

partial 
class 
JuegoUNOServicio )
:* +
ILogin, 2
{		 
private

 
readonly

 
List

 
<

 
string

 $
>

$ %
jugadoresConectados

& 9
=

: ;
new

< ?
List

@ D
<

D E
string

E K
>

K L
(

L M
)

M N
;

N O
public 
void 
IniciarSesion !
(! "
string" (
nickname) 1
,1 2
string3 9
contrase√±a: D
)D E
{ 	
ResultadoLogin 
resultadoLogin )
;) *
AdminDatosJugador 
adminDatosJugador /
=0 1
new2 5
AdminDatosJugador6 G
(G H
)H I
;I J
if 
( 
TieneSesionIniciada #
(# $
nickname$ ,
), -
)- .
{ 
resultadoLogin 
=  
ResultadoLogin! /
./ 0
SesionIniciada0 >
;> ?
} 
else 
{ 
if 
( 
adminDatosJugador %
.% &
ExisteNickname& 4
(4 5
nickname5 =
)= >
)> ?
{ 
if 
( 
adminDatosJugador )
.) *!
EsContrase√±aCorrecta* >
(> ?
nickname? G
,G H
contrase√±aI S
)S T
)T U
{ 
resultadoLogin   &
=  ' (
ResultadoLogin  ) 7
.  7 8
ExisteJugador  8 E
;  E F
jugadoresConectados!! +
.!!+ ,
Add!!, /
(!!/ 0
nickname!!0 8
)!!8 9
;!!9 :
}"" 
else## 
{$$ 
resultadoLogin%% &
=%%' (
ResultadoLogin%%) 7
.%%7 8!
Contrase√±aIncorrecta%%8 L
;%%L M
}&& 
}'' 
else(( 
{)) 
resultadoLogin** "
=**# $
ResultadoLogin**% 3
.**3 4
NoExisteNickname**4 D
;**D E
}++ 
},, 
LoginCallback.. 
... #
NotificarResultadoLogin.. 1
(..1 2
resultadoLogin..2 @
)..@ A
;..A B
if00 
(00 
resultadoLogin00 
==00 !
ResultadoLogin00" 0
.000 1
ExisteJugador001 >
)00> ?
{11 
List22 
<22 
Dominio22 
.22 
Jugador22 $
>22$ %
jugadoresTop22& 2
=223 4
adminDatosJugador225 F
.22F G#
ObtenerMejoresJugadores22G ^
(22^ _
)22_ `
;22` a
LoginCallback33 
.33 
ObtenerJugadoresTop33 1
(331 2
jugadoresTop332 >
)33> ?
;33? @
}44 
}55 	
private77 
bool77 
TieneSesionIniciada77 (
(77( )
string77) /
nickname770 8
)778 9
{88 	
return99 
jugadoresConectados99 &
.99& '
Contains99' /
(99/ 0
nickname990 8
)998 9
;999 :
}:: 	
public@@ 
void@@ 
CerrarSesion@@  
(@@  !
string@@! '
nickname@@( 0
)@@0 1
{AA 	
jugadoresConectadosBB 
.BB  
RemoveBB  &
(BB& '
nicknameBB' /
)BB/ 0
;BB0 1
}CC 	
privateEE 
ILoginCallbackEE 
LoginCallbackEE ,
{FF 	
getGG 
{HH 
returnII 
OperationContextII '
.II' (
CurrentII( /
.II/ 0
GetCallbackChannelII0 B
<IIB C
ILoginCallbackIIC Q
>IIQ R
(IIR S
)IIS T
;IIT U
}JJ 
}KK 	
}LL 
}MM ÷
4D:\Juego-UNO\UNOServer\UNO.Contratos\Login\ILogin.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
Login 
{ 
[		 
ServiceContract		 
(		 
CallbackContract		 %
=		& '
typeof		( .
(		. /
ILoginCallback		/ =
)		= >
)		> ?
]		? @
public

 

	interface

 
ILogin

 
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
IniciarSesion 
( 
string !
nickname" *
,* +
string, 2
contrase√±a3 =
)= >
;> ?
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
CerrarSesion 
( 
string  
nickname! )
)) *
;* +
} 
} Ñ
<D:\Juego-UNO\UNOServer\UNO.Contratos\Login\ILoginCallback.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
Login 
{ 
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
ILoginCallback #
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void #
NotificarResultadoLogin $
($ %
ResultadoLogin% 3
	resultado4 =
)= >
;> ?
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ObtenerJugadoresTop  
(  !
List! %
<% &
Dominio& -
.- .
Jugador. 5
>5 6
jugadoresTop7 C
)C D
;D E
} 
} œ
<D:\Juego-UNO\UNOServer\UNO.Contratos\Login\ResultadoLogin.cs
	namespace 	
UNO
 
. 
	Contratos 
. 
Login 
{ 
public 

enum 
ResultadoLogin 
{ 
NoExisteNickname 
= 
$num 
, !
Contrase√±aIncorrecta 
= 
$num  
,  !
ExisteJugador 
= 
$num 
, 
SesionIniciada 
= 
$num 
} 
} ü
6D:\Juego-UNO\UNOServer\UNO.Contratos\PerfilServicio.cs
	namespace 	
UNO
 
. 
	Contratos 
{ 
public 

partial 
class 
JuegoUNOServicio )
:* +
IPerfil, 3
{ 
public 
void 
BuscarJugador !
(! "
string" (
nickname) 1
)1 2
{ 	
AdminDatosJugador 
adminDatosJugador /
=0 1
new2 5
AdminDatosJugador6 G
(G H
)H I
;I J
Dominio 
. 
Jugador 
jugadorBuscado *
=+ ,
adminDatosJugador- >
.> ?
ObtenerJugador? M
(M N
nicknameN V
)V W
;W X
PerfilCallback 
. %
ObtenerInformacionJugador 4
(4 5
jugadorBuscado5 C
)C D
;D E
} 	
private 
IPerfilCallback 
PerfilCallback  .
{ 	
get 
{ 
return 
OperationContext '
.' (
Current( /
./ 0
GetCallbackChannel0 B
<B C
IPerfilCallbackC R
>R S
(S T
)T U
;U V
} 
} 	
} 
} Í
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
public 

enum 
ResultadoRegistro !
{ 
RegistroExitoso 
= 
$num 
, 
ErrorRegistro 
= 
$num 
, 
UsuarioYaExiste 
= 
$num 
, 
CorreoYaExiste 
= 
$num 
} 
} ∆r
6D:\Juego-UNO\UNOServer\UNO.Contratos\ServicioDeSala.cs
	namespace 	
UNO
 
. 
	Contratos 
{		 
[

 
ServiceBehavior

 
(

 
InstanceContextMode

 (
=

) *
InstanceContextMode

+ >
.

> ?
Single

? E
,

E F
ConcurrencyMode

G V
=

W X
ConcurrencyMode

Y h
.

h i
Multiple

i q
)

q r
]

r s
public 

partial 
class 
JuegoUNOServicio )
:* +
IAdministrarJuego, =
{ 
private 
readonly 
List 
< 
Sala "
>" #
salasCreadas$ 0
=1 2
new3 6
List7 ;
<; <
Sala< @
>@ A
(A B
)B C
;C D
public 
void 
	CrearSala 
( 
Sala "
	nuevaSala# ,
,, -
Jugador. 5
jugador6 =
)= >
{ 	
IJuegoCallback 
callbackActual )
=* +
JuegoCallbackActual, ?
;? @
	nuevaSala 
. 
Id 
= "
ObtenerNuevoCodigoSala 1
(1 2
)2 3
;3 4
	nuevaSala 
. 
JugadoresEnSala %
.% &
Add& )
() *
jugador* 1
,1 2
callbackActual3 A
)A B
;B C
salasCreadas 
. 
Add 
( 
	nuevaSala &
)& '
;' (
callbackActual 
. #
NotificarCreacionDeSala 2
(2 3
	nuevaSala3 <
)< =
;= >
} 	
public$$ 
void$$ 
UnirseASala$$ 
($$  
Sala$$  $
salaAUnirse$$% 0
,$$0 1
Jugador$$2 9
jugador$$: A
)$$A B
{%% 	
ResultadoUnionSala&& 
resultadoUnionSala&& 1
=&&2 3
ResultadoUnionSala&&4 F
.&&F G

NoExisteId&&G Q
;&&Q R
IJuegoCallback'' 
callbackActual'' )
=''* +
JuegoCallbackActual'', ?
;''? @
var)) 
salaBuscada)) 
=)) 
salasCreadas)) *
.))* +
Find))+ /
())/ 0
sala))0 4
=>))5 7
sala))8 <
.))< =
Id))= ?
.))? @
Equals))@ F
())F G
salaAUnirse))G R
.))R S
Id))S U
)))U V
)))V W
;))W X
if++ 
(++ 
salaBuscada++ 
!=++ 
null++ #
)++# $
{,, 
if-- 
(-- 
salaBuscada-- 
.--  
Contrase√±a--  *
.--* +
Equals--+ 1
(--1 2
salaAUnirse--2 =
.--= >
Contrase√±a--> H
)--H I
)--I J
{.. 
if// 
(// 
salaBuscada// #
.//# $
EnJuego//$ +
)//+ ,
{00 
resultadoUnionSala11 *
=11+ ,
ResultadoUnionSala11- ?
.11? @
EnJuego11@ G
;11G H
}22 
else33 
{44 
if55 
(55 
HayCupoEnSala55 )
(55) *
salaBuscada55* 5
)555 6
)556 7
{66 
resultadoUnionSala77 .
=77/ 0
ResultadoUnionSala771 C
.77C D
UnionExitosa77D P
;77P Q
}88 
else99 
{:: 
resultadoUnionSala;; .
=;;/ 0
ResultadoUnionSala;;1 C
.;;C D
	NoHayCupo;;D M
;;;M N
}<< 
}== 
}>> 
else?? 
{@@ 
resultadoUnionSalaAA &
=AA' (
ResultadoUnionSalaAA) ;
.AA; <!
Contrase√±aIncorrectaAA< P
;AAP Q
}BB 
}CC 
callbackActualEE 
.EE 
NotificarUnionASalaEE .
(EE. /
resultadoUnionSalaEE/ A
)EEA B
;EEB C
ifFF 
(FF 
salaBuscadaFF 
!=FF 
nullFF #
&&FF$ &
resultadoUnionSalaFF' 9
==FF: <
ResultadoUnionSalaFF= O
.FFO P
UnionExitosaFFP \
)FF\ ]
{GG 
callbackActualHH 
.HH $
ObtenerInformacionDeSalaHH 7
(HH7 8
salaBuscadaHH8 C
)HHC D
;HHD E
salaBuscadaII 
.II 
JugadoresEnSalaII +
.II+ ,
AddII, /
(II/ 0
jugadorII0 7
,II7 8
callbackActualII9 G
)IIG H
;IIH I%
AgregarNuevoJugadorEnSalaJJ )
(JJ) *
salaBuscadaJJ* 5
,JJ5 6
jugadorJJ7 >
)JJ> ?
;JJ? @
}KK 
}LL 	
privateNN 
voidNN %
AgregarNuevoJugadorEnSalaNN .
(NN. /
SalaNN/ 3
salaNN4 8
,NN8 9
JugadorNN: A
nuevoJugadorNNB N
)NNN O
{OO 	
foreachPP 
(PP 
varPP 
jugadorPP  
inPP! #
salaPP$ (
.PP( )
JugadoresEnSalaPP) 8
)PP8 9
{QQ 
jugadorRR 
.RR 
ValueRR 
.RR 
AgregarNuevoJugadorRR 1
(RR1 2
nuevoJugadorRR2 >
)RR> ?
;RR? @
}SS 
}TT 	
privateVV 
boolVV 
HayCupoEnSalaVV "
(VV" #
SalaVV# '
salaVV( ,
)VV, -
{WW 	
boolXX 
hayCupoXX 
=XX 
falseXX  
;XX  !
ifZZ 
(ZZ 
salaZZ 
.ZZ 
JugadoresEnSalaZZ $
.ZZ$ %
CountZZ% *
<ZZ+ ,
salaZZ- 1
.ZZ1 2"
NumeroTotalDeJugadoresZZ2 H
)ZZH I
{[[ 
hayCupo\\ 
=\\ 
true\\ 
;\\ 
}]] 
return__ 
hayCupo__ 
;__ 
}`` 	
privatebb 
Stringbb "
ObtenerNuevoCodigoSalabb -
(bb- .
)bb. /
{cc 	
Randomdd 
randomdd 
=dd 
newdd 
Randomdd  &
(dd& '
)dd' (
;dd( )
stringff 
idSalaff 
=ff 
randomff "
.ff" #
Nextff# '
(ff' (
$numff( -
,ff- .
$numff/ 4
)ff4 5
.ff5 6
ToStringff6 >
(ff> ?
)ff? @
;ff@ A
returnhh 
idSalahh 
;hh 
}ii 	
publicpp 
voidpp 
SalirDeSalapp 
(pp  
stringpp  &
idSalapp' -
,pp- .
stringpp/ 5
nicknamepp6 >
)pp> ?
{qq 	
varrr 

salaActualrr 
=rr 
salasCreadasrr )
.rr) *
Findrr* .
(rr. /
salarr/ 3
=>rr4 6
salarr7 ;
.rr; <
Idrr< >
.rr> ?
Equalsrr? E
(rrE F
idSalarrF L
)rrL M
)rrM N
;rrN O
iftt 
(tt 

salaActualtt 
!=tt 
nulltt "
)tt" #
{uu 
IJuegoCallbackvv 
callbackActualvv -
=vv. /
JuegoCallbackActualvv0 C
;vvC D
Jugadorww 
jugadorBuscadoww &
=ww' (

salaActualww) 3
.ww3 4
JugadoresEnSalaww4 C
.wwC D
KeyswwD H
.wwH I
ToListxx 
(xx 
)xx 
.xx 
FirstOrDefaultxx +
(xx+ ,
jugadorxx, 3
=>xx4 6
jugadorxx7 >
.xx> ?
Nicknamexx? G
.xxG H
EqualsxxH N
(xxN O
nicknamexxO W
)xxW X
)xxX Y
;xxY Z
ifzz 
(zz 
EsCreadorDeLaSalazz %
(zz% &

salaActualzz& 0
,zz0 1
jugadorBuscadozz2 @
)zz@ A
)zzA B
{{{ 
callbackActual|| "
.||" #
EliminarCreador||# 2
(||2 3
)||3 4
;||4 5

salaActual}} 
.}} 
JugadoresEnSala}} .
.}}. /
Remove}}/ 5
(}}5 6
jugadorBuscado}}6 D
)}}D E
;}}E F
EliminarSala~~  
(~~  !

salaActual~~! +
)~~+ ,
;~~, -
} 
else
ÄÄ 
{
ÅÅ 
callbackActual
ÇÇ "
.
ÇÇ" ##
NotificarSalidaDeSala
ÇÇ# 8
(
ÇÇ8 9
)
ÇÇ9 :
;
ÇÇ: ;

salaActual
ÉÉ 
.
ÉÉ 
JugadoresEnSala
ÉÉ .
.
ÉÉ. /
Remove
ÉÉ/ 5
(
ÉÉ5 6
jugadorBuscado
ÉÉ6 D
)
ÉÉD E
;
ÉÉE F'
NotificarJugadorEliminado
ÑÑ -
(
ÑÑ- .

salaActual
ÑÑ. 8
,
ÑÑ8 9
jugadorBuscado
ÑÑ: H
)
ÑÑH I
;
ÑÑI J
if
ÜÜ 
(
ÜÜ 

salaActual
ÜÜ "
.
ÜÜ" #
EnJuego
ÜÜ# *
)
ÜÜ* +
{
áá 

salaActual
àà "
.
àà" #
PartidaDeSala
àà# 0
.
àà0 1
SacarJugador
àà1 =
(
àà= >
jugadorBuscado
àà> L
)
ààL M
;
ààM N
if
ää 
(
ää 

salaActual
ää &
.
ää& '
PartidaDeSala
ää' 4
.
ää4 5%
HaySuficientesJugadores
ää5 L
(
ääL M
)
ääM N
)
ääN O
{
ãã 

salaActual
åå &
.
åå& '
PartidaDeSala
åå' 4
.
åå4 5
ReiniciarTurnos
åå5 D
(
ååD E
)
ååE F
;
ååF G
CambiarTurno
çç (
(
çç( )

salaActual
çç) 3
)
çç3 4
;
çç4 5
}
éé 
else
èè 
{
êê -
EliminarSalaPorFaltaDeJugadores
ëë ;
(
ëë; <

salaActual
ëë< F
)
ëëF G
;
ëëG H
}
íí 
}
ìì 
}
îî 
}
ïï 
}
ññ 	
private
òò 
void
òò -
EliminarSalaPorFaltaDeJugadores
òò 4
(
òò4 5
Sala
òò5 9

salaActual
òò: D
)
òòD E
{
ôô 	
if
öö 
(
öö 

salaActual
öö 
.
öö 
JugadoresEnSala
öö *
.
öö* +
Count
öö+ 0
>
öö1 2
$num
öö3 4
)
öö4 5
{
õõ 
foreach
úú 
(
úú 
var
úú 
jugador
úú $
in
úú% '

salaActual
úú( 2
.
úú2 3
JugadoresEnSala
úú3 B
)
úúB C
{
ùù 
jugador
ûû 
.
ûû 
Value
ûû !
.
ûû! "'
NotificarFaltaDeJugadores
ûû" ;
(
ûû; <
)
ûû< =
;
ûû= >
}
üü 

salaActual
°° 
.
°° 
JugadoresEnSala
°° *
.
°°* +
Clear
°°+ 0
(
°°0 1
)
°°1 2
;
°°2 3
}
¢¢ 
salasCreadas
§§ 
.
§§ 
Remove
§§ 
(
§§  

salaActual
§§  *
)
§§* +
;
§§+ ,
}
•• 	
private
ßß 
void
ßß '
NotificarJugadorEliminado
ßß .
(
ßß. /
Sala
ßß/ 3

salaActual
ßß4 >
,
ßß> ?
Dominio
ßß@ G
.
ßßG H
Jugador
ßßH O
jugadorASacar
ßßP ]
)
ßß] ^
{
®® 	
foreach
©© 
(
©© 
var
©© 
jugador
©©  
in
©©! #

salaActual
©©$ .
.
©©. /
JugadoresEnSala
©©/ >
)
©©> ?
{
™™ 
jugador
´´ 
.
´´ 
Value
´´ 
.
´´ 
SacarJugador
´´ *
(
´´* +
jugadorASacar
´´+ 8
)
´´8 9
;
´´9 :
}
¨¨ 
}
≠≠ 	
private
ØØ 
void
ØØ 
EliminarSala
ØØ !
(
ØØ! "
Sala
ØØ" &

salaActual
ØØ' 1
)
ØØ1 2
{
∞∞ 	
if
±± 
(
±± 

salaActual
±± 
.
±± 
JugadoresEnSala
±± *
.
±±* +
Count
±±+ 0
>
±±1 2
$num
±±3 4
)
±±4 5
{
≤≤ 
foreach
≥≥ 
(
≥≥ 
var
≥≥ 
jugador
≥≥ $
in
≥≥% '

salaActual
≥≥( 2
.
≥≥2 3
JugadoresEnSala
≥≥3 B
)
≥≥B C
{
¥¥ 
jugador
µµ 
.
µµ 
Value
µµ !
.
µµ! "(
NotificarEliminacionDeSala
µµ" <
(
µµ< =
)
µµ= >
;
µµ> ?
}
∂∂ 

salaActual
∏∏ 
.
∏∏ 
JugadoresEnSala
∏∏ *
.
∏∏* +
Clear
∏∏+ 0
(
∏∏0 1
)
∏∏1 2
;
∏∏2 3
}
ππ 
salasCreadas
ªª 
.
ªª 
Remove
ªª 
(
ªª  

salaActual
ªª  *
)
ªª* +
;
ªª+ ,
}
ºº 	
private
ææ 
bool
ææ 
EsCreadorDeLaSala
ææ &
(
ææ& '
Sala
ææ' +
sala
ææ, 0
,
ææ0 1
Dominio
ææ2 9
.
ææ9 :
Jugador
ææ: A
jugador
ææB I
)
ææI J
{
øø 	
bool
¿¿ 
	esCreador
¿¿ 
=
¿¿ 
false
¿¿ "
;
¿¿" #
if
¬¬ 
(
¬¬ 
sala
¬¬ 
.
¬¬ 
	CreadaPor
¬¬ 
.
¬¬ 
Equals
¬¬ %
(
¬¬% &
jugador
¬¬& -
.
¬¬- .
Nickname
¬¬. 6
)
¬¬6 7
)
¬¬7 8
{
√√ 
	esCreador
ƒƒ 
=
ƒƒ 
true
ƒƒ  
;
ƒƒ  !
}
≈≈ 
return
«« 
	esCreador
«« 
;
«« 
}
»» 	
private
   
IJuegoCallback
   !
JuegoCallbackActual
   2
{
ÀÀ 	
get
ÃÃ 
{
ÕÕ 
return
ŒŒ 
OperationContext
ŒŒ '
.
ŒŒ' (
Current
ŒŒ( /
.
ŒŒ/ 0 
GetCallbackChannel
ŒŒ0 B
<
ŒŒB C
IJuegoCallback
ŒŒC Q
>
ŒŒQ R
(
ŒŒR S
)
ŒŒS T
;
ŒŒT U
}
œœ 
}
–– 	
}
—— 
}““ ⁄ˆ
7D:\Juego-UNO\UNOServer\UNO.Contratos\ServicioPartida.cs
	namespace 	
UNO
 
. 
	Contratos 
{ 
public 

partial 
class 
JuegoUNOServicio )
{ 
private 
readonly 
List 
< 
Carta #
># $
mazoSala% -
=. /
	CrearMazo0 9
(9 :
): ;
;; <
public 
void 
IniciarPartida "
(" #
string# )
idSala* 0
)0 1
{ 	
var 
salaBuscada 
= 
salasCreadas *
.* +
Find+ /
(/ 0
sala0 4
=>5 7
sala8 <
.< =
Id= ?
.? @
Equals@ F
(F G
idSalaG M
)M N
)N O
;O P
PonerSalaEnJuego 
( 
idSala #
)# $
;$ %
salaBuscada 
. 
PartidaDeSala %
=& '
new( +
Partida, 3
(3 4
)4 5
{ 
JugadoresEnPartida "
=# $
salaBuscada% 0
.0 1
JugadoresEnSala1 @
.@ A
KeysA E
.E F
ToListF L
(L M
)M N
} 
; 
foreach 
( 
var 
jugador  
in! #
salaBuscada$ /
./ 0
JugadoresEnSala0 ?
)? @
{ 
jugador   
.   
Value   
.   "
NotificarInicioPartida   4
(  4 5
salaBuscada  5 @
)  @ A
;  A B
}!! 
RepartirCartas## 
(## 
salaBuscada## &
)##& '
;##' (
ColocarCartaCentral$$ 
($$  
	TomaCarta$$  )
($$) *
)$$* +
,$$+ ,
salaBuscada$$- 8
.$$8 9
Id$$9 ;
)$$; <
;$$< =
CambiarTurno%% 
(%% 
salaBuscada%% $
)%%$ %
;%%% &
}&& 	
private(( 
void(( 
PonerSalaEnJuego(( %
(((% &
string((& ,
idSala((- 3
)((3 4
{)) 	
salasCreadas** 
.** 
FirstOrDefault** '
(**' (
sala**( ,
=>**- /
sala**0 4
.**4 5
Id**5 7
.**7 8
Equals**8 >
(**> ?
idSala**? E
)**E F
)**F G
.**G H
EnJuego**H O
=**P Q
true**R V
;**V W
}++ 	
private-- 
static-- 
List-- 
<-- 
Carta-- !
>--! "
	CrearMazo--# ,
(--, -
)--- .
{.. 	
List// 
<// 
Carta// 
>// 
mazocompleto// $
=//% &
new//' *
List//+ /
</// 0
Carta//0 5
>//5 6
(//6 7
)//7 8
;//8 9
mazocompleto00 
.00 
AddRange00 !
(00! "
CrearCartasDeColor00" 4
(004 5
ColoresCartas005 B
.00B C
Rojo00C G
)00G H
)00H I
;00I J
mazocompleto11 
.11 
AddRange11 !
(11! "
CrearCartasDeColor11" 4
(114 5
ColoresCartas115 B
.11B C
Amarillo11C K
)11K L
)11L M
;11M N
mazocompleto22 
.22 
AddRange22 !
(22! "
CrearCartasDeColor22" 4
(224 5
ColoresCartas225 B
.22B C
Azul22C G
)22G H
)22H I
;22I J
mazocompleto33 
.33 
AddRange33 !
(33! "
CrearCartasDeColor33" 4
(334 5
ColoresCartas335 B
.33B C
Verde33C H
)33H I
)33I J
;33J K
mazocompleto44 
.44 
AddRange44 !
(44! "!
CrearCartasEspeciales44" 7
(447 8
)448 9
)449 :
;44: ;
return66 
mazocompleto66 
;66  
}88 	
private:: 
static:: 
List:: 
<:: 
Carta:: !
>::! "
CrearCartasDeColor::# 5
(::5 6
ColoresCartas::6 C
	colorMazo::D M
)::M N
{;; 	
List<< 
<<< 
Carta<< 
><< 
cartasDelMazo<< %
=<<& '
new<<( +
List<<, 0
<<<0 1
Carta<<1 6
><<6 7
(<<7 8
)<<8 9
;<<9 :
int== 
NUMERO_MINIMO_CARTA== #
===$ %
$num==& '
;==' (
int>> 
NUMERO_MAXIMO_CARTA>> #
=>>$ %
$num>>& '
;>>' (
for@@ 
(@@ 
int@@ 
i@@ 
=@@ 
NUMERO_MINIMO_CARTA@@ ,
;@@, -
i@@. /
<=@@0 2
NUMERO_MAXIMO_CARTA@@3 F
;@@F G
i@@H I
++@@I K
)@@K L
{AA 
CartaBB 

cartaNuevaBB  
=BB! "
newBB# &
CartaBB' ,
(BB, -
	colorMazoBB- 6
,BB6 7
iBB8 9
)BB9 :
;BB: ;
cartasDelMazoCC 
.CC 
AddCC !
(CC! "

cartaNuevaCC" ,
)CC, -
;CC- .
}DD 
CartaFF 
cartaCancelarFF 
=FF  !
newFF" %
CartaFF& +
(FF+ ,
	colorMazoFF, 5
,FF5 6
EfectosCartaFF7 C
.FFC D
CancelarFFD L
)FFL M
;FFM N
CartaGG 
cartaReversaGG 
=GG  
newGG! $
CartaGG% *
(GG* +
	colorMazoGG+ 4
,GG4 5
EfectosCartaGG6 B
.GGB C
ReversaGGC J
)GGJ K
;GGK L
CartaHH 
cartaTomaDosHH 
=HH  
newHH! $
CartaHH% *
(HH* +
	colorMazoHH+ 4
,HH4 5
EfectosCartaHH6 B
.HHB C
TomaDosHHC J
)HHJ K
;HHK L
cartasDelMazoJJ 
.JJ 
AddJJ 
(JJ 
cartaCancelarJJ +
)JJ+ ,
;JJ, -
cartasDelMazoKK 
.KK 
AddKK 
(KK 
cartaReversaKK *
)KK* +
;KK+ ,
cartasDelMazoLL 
.LL 
AddLL 
(LL 
cartaTomaDosLL *
)LL* +
;LL+ ,
returnNN 
cartasDelMazoNN  
;NN  !
}OO 	
privateQQ 
staticQQ 
ListQQ 
<QQ 
CartaQQ !
>QQ! "!
CrearCartasEspecialesQQ# 8
(QQ8 9
)QQ9 :
{RR 	
ListSS 
<SS 
CartaSS 
>SS 
cartasEspecialesSS (
=SS) *
newSS+ .
ListSS/ 3
<SS3 4
CartaSS4 9
>SS9 :
(SS: ;
)SS; <
;SS< =
CartaTT 
cartaMulticolorTT !
=TT" #
newTT$ '
CartaTT( -
(TT- .
ColoresCartasTT. ;
.TT; <
NegroTT< A
,TTA B
EfectosCartaTTC O
.TTO P

MultiColorTTP Z
)TTZ [
{TT\ ]
NumeroTT^ d
=TTe f
$numTTg i
}TTj k
;TTk l
CartaUU 
cartaMulticolor2UU "
=UU# $
newUU% (
CartaUU) .
(UU. /
ColoresCartasUU/ <
.UU< =
NegroUU= B
,UUB C
EfectosCartaUUD P
.UUP Q

MultiColorUUQ [
)UU[ \
{UU] ^
NumeroUU_ e
=UUf g
$numUUh j
}UUk l
;UUl m
CartaVV 
cartaTomaCuatroVV !
=VV" #
newVV$ '
CartaVV( -
(VV- .
ColoresCartasVV. ;
.VV; <
NegroVV< A
,VVA B
EfectosCartaVVC O
.VVO P

TomaCuatroVVP Z
)VVZ [
{VV\ ]
NumeroVV^ d
=VVe f
$numVVg i
}VVj k
;VVk l
CartaWW 
cartaTomaCuatro2WW "
=WW# $
newWW% (
CartaWW) .
(WW. /
ColoresCartasWW/ <
.WW< =
NegroWW= B
,WWB C
EfectosCartaWWD P
.WWP Q

TomaCuatroWWQ [
)WW[ \
{WW] ^
NumeroWW_ e
=WWf g
$numWWh j
}WWk l
;WWl m
cartasEspecialesYY 
.YY 
AddYY  
(YY  !
cartaMulticolorYY! 0
)YY0 1
;YY1 2
cartasEspecialesZZ 
.ZZ 
AddZZ  
(ZZ  !
cartaMulticolor2ZZ! 1
)ZZ1 2
;ZZ2 3
cartasEspeciales[[ 
.[[ 
Add[[  
([[  !
cartaTomaCuatro[[! 0
)[[0 1
;[[1 2
cartasEspeciales\\ 
.\\ 
Add\\  
(\\  !
cartaTomaCuatro2\\! 1
)\\1 2
;\\2 3
return^^ 
cartasEspeciales^^ #
;^^# $
}__ 	
privateaa 
voidaa 
RepartirCartasaa #
(aa# $
Salaaa$ (
salaaa) -
)aa- .
{bb 	
foreachcc 
(cc 
varcc 
jugadorcc  
incc! #
salacc$ (
.cc( )
JugadoresEnSalacc) 8
)cc8 9
{dd 
jugadoree 
.ee 
Valueee 
.ee 
ObtenerMazoee )
(ee) *
	CrearManoee* 3
(ee3 4
)ee4 5
)ee5 6
;ee6 7
}ff 
}gg 	
privateii 
Listii 
<ii 
Cartaii 
>ii 
	CrearManoii %
(ii% &
)ii& '
{jj 	
intkk 
MAXIMO_DE_CARTASkk  
=kk! "
$numkk# $
;kk$ %
intll 
MINIMO_DE_CARTASll  
=ll! "
$numll# $
;ll$ %
intmm !
posicionDeCartaEnMazomm %
;mm% &
Randomnn 
numbernn 
=nn 
newnn 
Randomnn  &
(nn& '
)nn' (
;nn( )
Listoo 
<oo 
Cartaoo 
>oo 
miManooo 
=oo  
newoo! $
Listoo% )
<oo) *
Cartaoo* /
>oo/ 0
(oo0 1
)oo1 2
;oo2 3
forqq 
(qq 
intqq 
iqq 
=qq 
MINIMO_DE_CARTASqq )
;qq) *
iqq+ ,
<=qq- /
MAXIMO_DE_CARTASqq0 @
;qq@ A
iqqB C
++qqC E
)qqE F
{rr !
posicionDeCartaEnMazoss %
=ss& '
numberss( .
.ss. /
Nextss/ 3
(ss3 4
$numss4 5
,ss5 6
mazoSalass7 ?
.ss? @
Countss@ E
-ssF G
$numssH I
)ssI J
;ssJ K
miManott 
.tt 
Addtt 
(tt 
mazoSalatt #
.tt# $
	ElementAttt$ -
(tt- .!
posicionDeCartaEnMazott. C
)ttC D
)ttD E
;ttE F
mazoSalauu 
.uu 
RemoveAtuu !
(uu! "!
posicionDeCartaEnMazouu" 7
)uu7 8
;uu8 9
}vv 
returnxx 
miManoxx 
;xx 
}zz 	
private|| 
Carta|| 
	TomaCarta|| 
(||  
)||  !
{}} 	
Carta~~ 
cartaTomada~~ 
;~~ 
Random 
number 
= 
new 
Random  &
(& '
)' (
;( )
int
ÄÄ 
posicionAleatoria
ÄÄ !
=
ÄÄ" #
number
ÄÄ$ *
.
ÄÄ* +
Next
ÄÄ+ /
(
ÄÄ/ 0
$num
ÄÄ0 1
,
ÄÄ1 2
mazoSala
ÄÄ3 ;
.
ÄÄ; <
Count
ÄÄ< A
-
ÄÄB C
$num
ÄÄD E
)
ÄÄE F
;
ÄÄF G
cartaTomada
ÇÇ 
=
ÇÇ 
mazoSala
ÇÇ "
.
ÇÇ" #
	ElementAt
ÇÇ# ,
(
ÇÇ, -
posicionAleatoria
ÇÇ- >
)
ÇÇ> ?
;
ÇÇ? @
return
ÑÑ 
cartaTomada
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
public
åå 
void
åå !
ColocarCartaCentral
åå '
(
åå' (
Carta
åå( -
cartaCentral
åå. :
,
åå: ;
String
åå< B
idSalaJugador
ååC P
)
ååP Q
{
çç 	
var
éé 
salaBuscada
éé 
=
éé 
salasCreadas
éé *
.
éé* +
Find
éé+ /
(
éé/ 0
sala
éé0 4
=>
éé5 7
sala
éé8 <
.
éé< =
Id
éé= ?
.
éé? @
Equals
éé@ F
(
ééF G
idSalaJugador
ééG T
)
ééT U
)
ééU V
;
ééV W
if
êê 
(
êê 
cartaCentral
êê 
.
êê 
Efecto
êê #
==
êê$ &
EfectosCarta
êê' 3
.
êê3 4
Cancelar
êê4 <
)
êê< =
{
ëë 
salaBuscada
íí 
.
íí 
PartidaDeSala
íí )
.
íí) *&
CancelarSiguienteJugador
íí* B
(
ííB C
)
ííC D
;
ííD E
string
ìì 
turnoActual
ìì "
=
ìì# $
salaBuscada
ìì% 0
.
ìì0 1
PartidaDeSala
ìì1 >
.
ìì> ?#
ObtenerJugadorEnTurno
ìì? T
(
ììT U
)
ììU V
;
ììV W'
NotificarJugadorCancelado
ïï )
(
ïï) *
salaBuscada
ïï* 5
,
ïï5 6
turnoActual
ïï7 B
)
ïïB C
;
ïïC D
}
ññ 
else
óó 
{
òò 
if
ôô 
(
ôô 
cartaCentral
ôô  
.
ôô  !
Efecto
ôô! '
==
ôô( *
EfectosCarta
ôô+ 7
.
ôô7 8
Reversa
ôô8 ?
)
ôô? @
{
öö #
CambiarSentidoPartida
õõ )
(
õõ) *
salaBuscada
õõ* 5
)
õõ5 6
;
õõ6 7
}
úú 
else
ùù 
{
ûû 
string
üü &
nicknameSiguienteJugador
üü 3
=
üü4 5
salaBuscada
üü6 A
.
üüA B
PartidaDeSala
üüB O
.
üüO P%
ObtenerSiguienteJugador
üüP g
(
üüg h
)
üüh i
;
üüi j
if
°° 
(
°° 
cartaCentral
°° $
.
°°$ %
Efecto
°°% +
==
°°, .
EfectosCarta
°°/ ;
.
°°; <
TomaDos
°°< C
)
°°C D
{
¢¢ 
AgregarDosCartas
££ (
(
££( )
salaBuscada
££) 4
,
££4 5&
nicknameSiguienteJugador
££6 N
)
££N O
;
££O P
}
§§ 
else
•• 
if
•• 
(
•• 
cartaCentral
•• )
.
••) *
Efecto
••* 0
==
••1 3
EfectosCarta
••4 @
.
••@ A

TomaCuatro
••A K
)
••K L
{
¶¶ !
AgregarCuatroCartas
ßß +
(
ßß+ ,
salaBuscada
ßß, 7
,
ßß7 8&
nicknameSiguienteJugador
ßß9 Q
)
ßßQ R
;
ßßR S
}
®® 
}
©© 
CambiarTurno
´´ 
(
´´ 
salaBuscada
´´ (
)
´´( )
;
´´) *
}
¨¨ 
foreach
ÆÆ 
(
ÆÆ 
var
ÆÆ 
jugador
ÆÆ  
in
ÆÆ! #
salaBuscada
ÆÆ$ /
.
ÆÆ/ 0
JugadoresEnSala
ÆÆ0 ?
)
ÆÆ? @
{
ØØ 
jugador
∞∞ 
.
∞∞ 
Value
∞∞ 
.
∞∞ $
ActualizarCartaCentral
∞∞ 4
(
∞∞4 5
cartaCentral
∞∞5 A
)
∞∞A B
;
∞∞B C
}
±± 
}
≤≤ 	
private
¥¥ 
void
¥¥ '
NotificarJugadorCancelado
¥¥ .
(
¥¥. /
Sala
¥¥/ 3
sala
¥¥4 8
,
¥¥8 9
string
¥¥: @
turnoActual
¥¥A L
)
¥¥L M
{
µµ 	
foreach
∂∂ 
(
∂∂ 
var
∂∂ 
jugador
∂∂  
in
∂∂! #
sala
∂∂$ (
.
∂∂( )
JugadoresEnSala
∂∂) 8
)
∂∂8 9
{
∑∑ 
jugador
∏∏ 
.
∏∏ 
Value
∏∏ 
.
∏∏  
ObtenerTurnoActual
∏∏ 0
(
∏∏0 1
turnoActual
∏∏1 <
)
∏∏< =
;
∏∏= >
}
ππ 
}
∫∫ 	
private
ºº 
void
ºº !
AgregarCuatroCartas
ºº (
(
ºº( )
Sala
ºº) -
salaBuscada
ºº. 9
,
ºº9 :
string
ºº; A
nicknameJugador
ººB Q
)
ººQ R
{
ΩΩ 	
foreach
ææ 
(
ææ 
var
ææ 
jugador
ææ  
in
ææ! #
salaBuscada
ææ$ /
.
ææ/ 0
JugadoresEnSala
ææ0 ?
)
ææ? @
{
øø 
if
¿¿ 
(
¿¿ 
jugador
¿¿ 
.
¿¿ 
Key
¿¿ 
.
¿¿  
Nickname
¿¿  (
.
¿¿( )
Equals
¿¿) /
(
¿¿/ 0
nicknameJugador
¿¿0 ?
)
¿¿? @
)
¿¿@ A
{
¡¡ 
jugador
¬¬ 
.
¬¬ 
Value
¬¬ !
.
¬¬! "!
ObtenerCuatroCartas
¬¬" 5
(
¬¬5 6&
TomarCuatroCartasDelMazo
¬¬6 N
(
¬¬N O
)
¬¬O P
)
¬¬P Q
;
¬¬Q R
break
√√ 
;
√√ 
}
ƒƒ 
}
≈≈ 
}
∆∆ 	
private
»» 
List
»» 
<
»» 
Carta
»» 
>
»» #
TomarDosCartasDelMazo
»» 1
(
»»1 2
)
»»2 3
{
…… 	
List
   
<
   
Carta
   
>
   
cartasTomadas
   %
=
  & '
new
  ( +
List
  , 0
<
  0 1
Carta
  1 6
>
  6 7
(
  7 8
)
  8 9
;
  9 :
Random
ÀÀ 
number
ÀÀ 
=
ÀÀ 
new
ÀÀ 
Random
ÀÀ  &
(
ÀÀ& '
)
ÀÀ' (
;
ÀÀ( )
int
ÃÃ %
posicionAleatoriaCarta1
ÃÃ '
=
ÃÃ( )
number
ÃÃ* 0
.
ÃÃ0 1
Next
ÃÃ1 5
(
ÃÃ5 6
$num
ÃÃ6 7
,
ÃÃ7 8
mazoSala
ÃÃ9 A
.
ÃÃA B
Count
ÃÃB G
-
ÃÃH I
$num
ÃÃJ K
)
ÃÃK L
;
ÃÃL M
int
ÕÕ %
posicionAleatoriaCarta2
ÕÕ '
=
ÕÕ( )
number
ÕÕ* 0
.
ÕÕ0 1
Next
ÕÕ1 5
(
ÕÕ5 6
$num
ÕÕ6 7
,
ÕÕ7 8
mazoSala
ÕÕ9 A
.
ÕÕA B
Count
ÕÕB G
-
ÕÕH I
$num
ÕÕJ K
)
ÕÕK L
;
ÕÕL M
cartasTomadas
œœ 
.
œœ 
Add
œœ 
(
œœ 
mazoSala
œœ &
.
œœ& '
	ElementAt
œœ' 0
(
œœ0 1%
posicionAleatoriaCarta1
œœ1 H
)
œœH I
)
œœI J
;
œœJ K
cartasTomadas
–– 
.
–– 
Add
–– 
(
–– 
mazoSala
–– &
.
––& '
	ElementAt
––' 0
(
––0 1%
posicionAleatoriaCarta2
––1 H
)
––H I
)
––I J
;
––J K
return
““ 
cartasTomadas
““  
;
““  !
}
”” 	
private
’’ 
List
’’ 
<
’’ 
Carta
’’ 
>
’’ &
TomarCuatroCartasDelMazo
’’ 4
(
’’4 5
)
’’5 6
{
÷÷ 	
List
◊◊ 
<
◊◊ 
Carta
◊◊ 
>
◊◊ 
cartasTomadas
◊◊ %
=
◊◊& '
new
◊◊( +
List
◊◊, 0
<
◊◊0 1
Carta
◊◊1 6
>
◊◊6 7
(
◊◊7 8
)
◊◊8 9
;
◊◊9 :
Random
ÿÿ 
number
ÿÿ 
=
ÿÿ 
new
ÿÿ 
Random
ÿÿ  &
(
ÿÿ& '
)
ÿÿ' (
;
ÿÿ( )
int
ŸŸ %
posicionAleatoriaCarta1
ŸŸ '
=
ŸŸ( )
number
ŸŸ* 0
.
ŸŸ0 1
Next
ŸŸ1 5
(
ŸŸ5 6
$num
ŸŸ6 7
,
ŸŸ7 8
mazoSala
ŸŸ9 A
.
ŸŸA B
Count
ŸŸB G
-
ŸŸH I
$num
ŸŸJ K
)
ŸŸK L
;
ŸŸL M
int
⁄⁄ %
posicionAleatoriaCarta2
⁄⁄ '
=
⁄⁄( )
number
⁄⁄* 0
.
⁄⁄0 1
Next
⁄⁄1 5
(
⁄⁄5 6
$num
⁄⁄6 7
,
⁄⁄7 8
mazoSala
⁄⁄9 A
.
⁄⁄A B
Count
⁄⁄B G
-
⁄⁄H I
$num
⁄⁄J K
)
⁄⁄K L
;
⁄⁄L M
int
€€ %
posicionAleatoriaCarta3
€€ '
=
€€( )
number
€€* 0
.
€€0 1
Next
€€1 5
(
€€5 6
$num
€€6 7
,
€€7 8
mazoSala
€€9 A
.
€€A B
Count
€€B G
-
€€H I
$num
€€J K
)
€€K L
;
€€L M
int
‹‹ %
posicionAleatoriaCarta4
‹‹ '
=
‹‹( )
number
‹‹* 0
.
‹‹0 1
Next
‹‹1 5
(
‹‹5 6
$num
‹‹6 7
,
‹‹7 8
mazoSala
‹‹9 A
.
‹‹A B
Count
‹‹B G
-
‹‹H I
$num
‹‹J K
)
‹‹K L
;
‹‹L M
cartasTomadas
ﬁﬁ 
.
ﬁﬁ 
Add
ﬁﬁ 
(
ﬁﬁ 
mazoSala
ﬁﬁ &
.
ﬁﬁ& '
	ElementAt
ﬁﬁ' 0
(
ﬁﬁ0 1%
posicionAleatoriaCarta1
ﬁﬁ1 H
)
ﬁﬁH I
)
ﬁﬁI J
;
ﬁﬁJ K
cartasTomadas
ﬂﬂ 
.
ﬂﬂ 
Add
ﬂﬂ 
(
ﬂﬂ 
mazoSala
ﬂﬂ &
.
ﬂﬂ& '
	ElementAt
ﬂﬂ' 0
(
ﬂﬂ0 1%
posicionAleatoriaCarta2
ﬂﬂ1 H
)
ﬂﬂH I
)
ﬂﬂI J
;
ﬂﬂJ K
cartasTomadas
‡‡ 
.
‡‡ 
Add
‡‡ 
(
‡‡ 
mazoSala
‡‡ &
.
‡‡& '
	ElementAt
‡‡' 0
(
‡‡0 1%
posicionAleatoriaCarta3
‡‡1 H
)
‡‡H I
)
‡‡I J
;
‡‡J K
cartasTomadas
·· 
.
·· 
Add
·· 
(
·· 
mazoSala
·· &
.
··& '
	ElementAt
··' 0
(
··0 1%
posicionAleatoriaCarta4
··1 H
)
··H I
)
··I J
;
··J K
return
„„ 
cartasTomadas
„„  
;
„„  !
}
‰‰ 	
private
ÊÊ 
void
ÊÊ 
AgregarDosCartas
ÊÊ %
(
ÊÊ% &
Sala
ÊÊ& *
salaBuscada
ÊÊ+ 6
,
ÊÊ6 7
string
ÊÊ8 >
nicknameJugador
ÊÊ? N
)
ÊÊN O
{
ÁÁ 	
foreach
ËË 
(
ËË 
var
ËË 
jugador
ËË  
in
ËË! #
salaBuscada
ËË$ /
.
ËË/ 0
JugadoresEnSala
ËË0 ?
)
ËË? @
{
ÈÈ 
if
ÍÍ 
(
ÍÍ 
jugador
ÍÍ 
.
ÍÍ 
Key
ÍÍ 
.
ÍÍ  
Nickname
ÍÍ  (
.
ÍÍ( )
Equals
ÍÍ) /
(
ÍÍ/ 0
nicknameJugador
ÍÍ0 ?
)
ÍÍ? @
)
ÍÍ@ A
{
ÎÎ 
jugador
ÏÏ 
.
ÏÏ 
Value
ÏÏ !
.
ÏÏ! "
ObtenerDosCartas
ÏÏ" 2
(
ÏÏ2 3#
TomarDosCartasDelMazo
ÏÏ3 H
(
ÏÏH I
)
ÏÏI J
)
ÏÏJ K
;
ÏÏK L
break
ÌÌ 
;
ÌÌ 
}
ÓÓ 
}
ÔÔ 
}
 	
private
ÚÚ 
void
ÚÚ #
CambiarSentidoPartida
ÚÚ *
(
ÚÚ* +
Sala
ÚÚ+ /
salaBuscada
ÚÚ0 ;
)
ÚÚ; <
{
ÛÛ 	
salaBuscada
ÙÙ 
.
ÙÙ 
PartidaDeSala
ÙÙ %
.
ÙÙ% &
SentidoJuego
ÙÙ& 2
=
ÙÙ3 4
$str
ÙÙ5 @
;
ÙÙ@ A
}
ıı 	
private
˜˜ 
void
˜˜ 
CambiarTurno
˜˜ !
(
˜˜! "
Sala
˜˜" &
sala
˜˜' +
)
˜˜+ ,
{
¯¯ 	
String
˘˘ 

nuevoTurno
˘˘ 
=
˘˘ 
sala
˘˘  $
.
˘˘$ %
PartidaDeSala
˘˘% 2
.
˘˘2 3
CambiarTurno
˘˘3 ?
(
˘˘? @
)
˘˘@ A
;
˘˘A B
foreach
˚˚ 
(
˚˚ 
var
˚˚ 
jugador
˚˚  
in
˚˚! #
sala
˚˚$ (
.
˚˚( )
JugadoresEnSala
˚˚) 8
)
˚˚8 9
{
¸¸ 
jugador
˝˝ 
.
˝˝ 
Value
˝˝ 
.
˝˝ 
CambiarTurno
˝˝ *
(
˝˝* +

nuevoTurno
˝˝+ 5
)
˝˝5 6
;
˝˝6 7
}
˛˛ 
}
ˇˇ 	
public
ÜÜ 
void
ÜÜ 

TomarCarta
ÜÜ 
(
ÜÜ 
String
ÜÜ %
idSalaJugador
ÜÜ& 3
,
ÜÜ3 4
String
ÜÜ5 ;
nickname
ÜÜ< D
)
ÜÜD E
{
áá 	
var
àà 
salaBuscada
àà 
=
àà 
salasCreadas
àà *
.
àà* +
Find
àà+ /
(
àà/ 0
sala
àà0 4
=>
àà5 7
sala
àà8 <
.
àà< =
Id
àà= ?
.
àà? @
Equals
àà@ F
(
ààF G
idSalaJugador
ààG T
)
ààT U
)
ààU V
;
ààV W
foreach
ää 
(
ää 
var
ää 
jugador
ää  
in
ää! #
salaBuscada
ää$ /
.
ää/ 0
JugadoresEnSala
ää0 ?
)
ää? @
{
ãã 
if
åå 
(
åå 
jugador
åå 
.
åå 
Key
åå 
.
åå  
Nickname
åå  (
.
åå( )
Equals
åå) /
(
åå/ 0
nickname
åå0 8
)
åå8 9
)
åå9 :
{
çç 
jugador
éé 
.
éé 
Value
éé !
.
éé! "
RecibirCarta
éé" .
(
éé. /
	TomaCarta
éé/ 8
(
éé8 9
)
éé9 :
)
éé: ;
;
éé; <
break
èè 
;
èè 
}
êê 
}
ëë 
}
íí 	
public
ôô 
void
ôô 
AnunciarGanador
ôô #
(
ôô# $
String
ôô$ *
idSalaJugador
ôô+ 8
,
ôô8 9
Jugador
ôô: A
jugadorGanador
ôôB P
)
ôôP Q
{
öö 	
var
õõ 
salaBuscada
õõ 
=
õõ 
salasCreadas
õõ *
.
õõ* +
Find
õõ+ /
(
õõ/ 0
sala
õõ0 4
=>
õõ5 7
sala
õõ8 <
.
õõ< =
Id
õõ= ?
.
õõ? @
Equals
õõ@ F
(
õõF G
idSalaJugador
õõG T
)
õõT U
)
õõU V
;
õõV W
foreach
ùù 
(
ùù 
var
ùù 
jugador
ùù  
in
ùù! #
salaBuscada
ùù$ /
.
ùù/ 0
JugadoresEnSala
ùù0 ?
)
ùù? @
{
ûû 
jugador
üü 
.
üü 
Value
üü 
.
üü 
NotificarGanador
üü .
(
üü. /
jugadorGanador
üü/ =
.
üü= >
Nickname
üü> F
)
üüF G
;
üüG H
if
°° 
(
°° 
jugador
°° 
.
°° 
Key
°° 
.
°°  
Nickname
°°  (
.
°°( )
Equals
°°) /
(
°°/ 0
jugadorGanador
°°0 >
.
°°> ?
Nickname
°°? G
)
°°G H
)
°°H I
{
¢¢ +
ActualizarDatosJugadorGanador
££ 1
(
££1 2
jugadorGanador
££2 @
)
££@ A
;
££A B
}
§§ 
else
•• 
{
¶¶ $
ActualizarDatosJugador
ßß *
(
ßß* +
jugador
ßß+ 2
.
ßß2 3
Key
ßß3 6
)
ßß6 7
;
ßß7 8
}
®® 
}
©© 
TerminarPartida
´´ 
(
´´ 
salaBuscada
´´ '
)
´´' (
;
´´( )
}
¨¨ 	
private
ÆÆ 
void
ÆÆ $
ActualizarDatosJugador
ÆÆ +
(
ÆÆ+ ,
Jugador
ÆÆ, 3
jugador
ÆÆ4 ;
)
ÆÆ; <
{
ØØ 	'
administradorDatosJugador
∞∞ %
.
∞∞% &'
ActualizarPartidasJugadas
∞∞& ?
(
∞∞? @
jugador
∞∞@ G
)
∞∞G H
;
∞∞H I
}
±± 	
private
≥≥ 
void
≥≥ +
ActualizarDatosJugadorGanador
≥≥ 2
(
≥≥2 3
Jugador
≥≥3 :
jugadorGanador
≥≥; I
)
≥≥I J
{
¥¥ 	'
administradorDatosJugador
µµ %
.
µµ% &-
ActualizarEstadisticasDeJugador
µµ& E
(
µµE F
jugadorGanador
µµF T
)
µµT U
;
µµU V
}
∂∂ 	
public
ææ 
void
ææ %
ActualizarNumeroDeCarta
ææ +
(
ææ+ ,
String
ææ, 2
idSalaJugador
ææ3 @
,
ææ@ A
String
ææB H
nickname
ææI Q
,
ææQ R
String
ææS Y
numeroDeCartas
ææZ h
)
ææh i
{
øø 	
var
¿¿ 
salaBuscada
¿¿ 
=
¿¿ 
salasCreadas
¿¿ *
.
¿¿* +
Find
¿¿+ /
(
¿¿/ 0
sala
¿¿0 4
=>
¿¿5 7
sala
¿¿8 <
.
¿¿< =
Id
¿¿= ?
.
¿¿? @
Equals
¿¿@ F
(
¿¿F G
idSalaJugador
¿¿G T
)
¿¿T U
)
¿¿U V
;
¿¿V W
foreach
¬¬ 
(
¬¬ 
var
¬¬ 
jugador
¬¬  
in
¬¬! #
salaBuscada
¬¬$ /
.
¬¬/ 0
JugadoresEnSala
¬¬0 ?
)
¬¬? @
{
√√ 
jugador
ƒƒ 
.
ƒƒ 
Value
ƒƒ 
.
ƒƒ &
ActualizarNumeroDeCartas
ƒƒ 6
(
ƒƒ6 7
nickname
ƒƒ7 ?
,
ƒƒ? @
numeroDeCartas
ƒƒA O
)
ƒƒO P
;
ƒƒP Q
}
≈≈ 
}
∆∆ 	
public
ŒŒ 
void
ŒŒ 
ActualizarPuntaje
ŒŒ %
(
ŒŒ% &
String
ŒŒ& ,
idSalaJugador
ŒŒ- :
,
ŒŒ: ;
String
ŒŒ< B
nickname
ŒŒC K
,
ŒŒK L
int
ŒŒM P
puntajeASumar
ŒŒQ ^
)
ŒŒ^ _
{
œœ 	
var
–– 
salaBuscada
–– 
=
–– 
salasCreadas
–– *
.
––* +
Find
––+ /
(
––/ 0
sala
––0 4
=>
––5 7
sala
––8 <
.
––< =
Id
––= ?
.
––? @
Equals
––@ F
(
––F G
idSalaJugador
––G T
)
––T U
)
––U V
;
––V W
foreach
““ 
(
““ 
var
““ 
jugador
““  
in
““! #
salaBuscada
““$ /
.
““/ 0
JugadoresEnSala
““0 ?
)
““? @
{
”” 
jugador
‘‘ 
.
‘‘ 
Value
‘‘ 
.
‘‘ (
ActualizarPuntajeDeJugador
‘‘ 8
(
‘‘8 9
nickname
‘‘9 A
,
‘‘A B
puntajeASumar
‘‘C P
)
‘‘P Q
;
‘‘Q R
}
’’ 
}
÷÷ 	
private
ÿÿ 
void
ÿÿ 
TerminarPartida
ÿÿ $
(
ÿÿ$ %
Sala
ÿÿ% )
sala
ÿÿ* .
)
ÿÿ. /
{
ŸŸ 	
salasCreadas
⁄⁄ 
.
⁄⁄ 
Remove
⁄⁄ 
(
⁄⁄  
sala
⁄⁄  $
)
⁄⁄$ %
;
⁄⁄% &
}
€€ 	
}
‹‹ 
}›› 