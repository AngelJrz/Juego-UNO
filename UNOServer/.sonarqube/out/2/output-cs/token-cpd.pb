�
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
contraseña  *
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
contraseña= G
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
<h1>¡Hola, .. (
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
E<h3>Ingresa la siguiente clave en la ventana de verificación: <code>00 V
{00V W
jugadorDestino00W e
.00e f
ClaveValidacion00f u
}00u v
</code></h3>	00v �
"
00� �
;
00� �
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
}== �
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
} �
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
} �
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
} �1
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
�� 	
public
�� 
void
�� 
ReiniciarTurnos
�� #
(
��# $
)
��$ %
{
�� 	
turno
�� 
=
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
SacarJugador
��  
(
��  !
Dominio
��! (
.
��( )
Jugador
��) 0
jugador
��1 8
)
��8 9
{
�� 	 
JugadoresEnPartida
�� 
.
�� 
Remove
�� %
(
��% &
jugador
��& -
)
��- .
;
��. /
}
�� 	
public
�� 
bool
�� %
HaySuficientesJugadores
�� +
(
��+ ,
)
��, -
{
�� 	
return
��  
JugadoresEnPartida
�� %
.
��% &
Count
��& +
>=
��, .
$num
��/ 0
;
��0 1
}
�� 	
private
�� 
bool
�� 
SonDosJugadores
�� $
(
��$ %
)
��% &
{
�� 	
return
��  
JugadoresEnPartida
�� %
.
��% &
Count
��& +
==
��, .
$num
��/ 0
;
��0 1
}
�� 	
}
�� 
}�� �
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
ContraseñaIncorrecta 
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
} �
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
Contraseña  
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
}.. �<
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
IRegistrarJugadorCallback	m �
,
� �
Jugador
� �
>
� �
(
� �
)
� �
;
� �
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
�� 
}
�� 	
private
�� '
IRegistrarJugadorCallback
�� )#
ObtenerCallbackActual
��* ?
{
�� 	
get
�� 
{
�� 
return
�� 
OperationContext
�� '
.
��' (
Current
��( /
.
��/ 0 
GetCallbackChannel
��0 B
<
��B C'
IRegistrarJugadorCallback
��C \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
}
�� 
}
�� 	
}
�� 
}�� �
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
}[[ �4
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
�� 	
OperationContract
��	 
(
�� 
IsOneWay
�� #
=
��$ %
true
��& *
)
��* +
]
��+ ,
void
�� &
ActualizarNumeroDeCartas
�� %
(
��% &
String
��& ,
nickname
��- 5
,
��5 6
String
��7 =
numeroDeCartas
��> L
)
��L M
;
��M N
[
�� 	
OperationContract
��	 
(
�� 
IsOneWay
�� #
=
��$ %
true
��& *
)
��* +
]
��+ ,
void
�� 
ObtenerDosCartas
�� 
(
�� 
List
�� "
<
��" #
Carta
��# (
>
��( )
nuevasCartas
��* 6
)
��6 7
;
��7 8
[
�� 	
OperationContract
��	 
(
�� 
IsOneWay
�� #
=
��$ %
true
��& *
)
��* +
]
��+ ,
void
�� !
ObtenerCuatroCartas
��  
(
��  !
List
��! %
<
��% &
Carta
��& +
>
��+ ,
nuevasCartas
��- 9
)
��9 :
;
��: ;
[
�� 	
OperationContract
��	 
(
�� 
IsOneWay
�� #
=
��$ %
true
��& *
)
��* +
]
��+ ,
void
��  
ObtenerTurnoActual
�� 
(
��  
string
��  &
turnoActual
��' 2
)
��2 3
;
��3 4
[
�� 	
OperationContract
��	 
(
�� 
IsOneWay
�� #
=
��$ %
true
��& *
)
��* +
]
��+ ,
void
�� (
ActualizarPuntajeDeJugador
�� '
(
��' (
String
��( .
nickname
��/ 7
,
��7 8
int
��9 <
puntajeASumar
��= J
)
��J K
;
��K L
}
�� 
}�� �!
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
contraseña: D
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
EsContraseñaCorrecta* >
(> ?
nickname? G
,G H
contraseñaI S
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
ContraseñaIncorrecta%%8 L
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
}MM �
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
contraseña3 =
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
} �
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
} �
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
ContraseñaIncorrecta 
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
} �
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
} �
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
]$$) *�
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
}&& �
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
}%% �
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
} �r
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
Contraseña--  *
.--* +
Equals--+ 1
(--1 2
salaAUnirse--2 =
.--= >
Contraseña--> H
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
ContraseñaIncorrectaAA< P
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
�� 
{
�� 
callbackActual
�� "
.
��" ##
NotificarSalidaDeSala
��# 8
(
��8 9
)
��9 :
;
��: ;

salaActual
�� 
.
�� 
JugadoresEnSala
�� .
.
��. /
Remove
��/ 5
(
��5 6
jugadorBuscado
��6 D
)
��D E
;
��E F'
NotificarJugadorEliminado
�� -
(
��- .

salaActual
��. 8
,
��8 9
jugadorBuscado
��: H
)
��H I
;
��I J
if
�� 
(
�� 

salaActual
�� "
.
��" #
EnJuego
��# *
)
��* +
{
�� 

salaActual
�� "
.
��" #
PartidaDeSala
��# 0
.
��0 1
SacarJugador
��1 =
(
��= >
jugadorBuscado
��> L
)
��L M
;
��M N
if
�� 
(
�� 

salaActual
�� &
.
��& '
PartidaDeSala
��' 4
.
��4 5%
HaySuficientesJugadores
��5 L
(
��L M
)
��M N
)
��N O
{
�� 

salaActual
�� &
.
��& '
PartidaDeSala
��' 4
.
��4 5
ReiniciarTurnos
��5 D
(
��D E
)
��E F
;
��F G
CambiarTurno
�� (
(
��( )

salaActual
��) 3
)
��3 4
;
��4 5
}
�� 
else
�� 
{
�� -
EliminarSalaPorFaltaDeJugadores
�� ;
(
��; <

salaActual
��< F
)
��F G
;
��G H
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� -
EliminarSalaPorFaltaDeJugadores
�� 4
(
��4 5
Sala
��5 9

salaActual
��: D
)
��D E
{
�� 	
if
�� 
(
�� 

salaActual
�� 
.
�� 
JugadoresEnSala
�� *
.
��* +
Count
��+ 0
>
��1 2
$num
��3 4
)
��4 5
{
�� 
foreach
�� 
(
�� 
var
�� 
jugador
�� $
in
��% '

salaActual
��( 2
.
��2 3
JugadoresEnSala
��3 B
)
��B C
{
�� 
jugador
�� 
.
�� 
Value
�� !
.
��! "'
NotificarFaltaDeJugadores
��" ;
(
��; <
)
��< =
;
��= >
}
�� 

salaActual
�� 
.
�� 
JugadoresEnSala
�� *
.
��* +
Clear
��+ 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
salasCreadas
�� 
.
�� 
Remove
�� 
(
��  

salaActual
��  *
)
��* +
;
��+ ,
}
�� 	
private
�� 
void
�� '
NotificarJugadorEliminado
�� .
(
��. /
Sala
��/ 3

salaActual
��4 >
,
��> ?
Dominio
��@ G
.
��G H
Jugador
��H O
jugadorASacar
��P ]
)
��] ^
{
�� 	
foreach
�� 
(
�� 
var
�� 
jugador
��  
in
��! #

salaActual
��$ .
.
��. /
JugadoresEnSala
��/ >
)
��> ?
{
�� 
jugador
�� 
.
�� 
Value
�� 
.
�� 
SacarJugador
�� *
(
��* +
jugadorASacar
��+ 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
private
�� 
void
�� 
EliminarSala
�� !
(
��! "
Sala
��" &

salaActual
��' 1
)
��1 2
{
�� 	
if
�� 
(
�� 

salaActual
�� 
.
�� 
JugadoresEnSala
�� *
.
��* +
Count
��+ 0
>
��1 2
$num
��3 4
)
��4 5
{
�� 
foreach
�� 
(
�� 
var
�� 
jugador
�� $
in
��% '

salaActual
��( 2
.
��2 3
JugadoresEnSala
��3 B
)
��B C
{
�� 
jugador
�� 
.
�� 
Value
�� !
.
��! "(
NotificarEliminacionDeSala
��" <
(
��< =
)
��= >
;
��> ?
}
�� 

salaActual
�� 
.
�� 
JugadoresEnSala
�� *
.
��* +
Clear
��+ 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
salasCreadas
�� 
.
�� 
Remove
�� 
(
��  

salaActual
��  *
)
��* +
;
��+ ,
}
�� 	
private
�� 
bool
�� 
EsCreadorDeLaSala
�� &
(
��& '
Sala
��' +
sala
��, 0
,
��0 1
Dominio
��2 9
.
��9 :
Jugador
��: A
jugador
��B I
)
��I J
{
�� 	
bool
�� 
	esCreador
�� 
=
�� 
false
�� "
;
��" #
if
�� 
(
�� 
sala
�� 
.
�� 
	CreadaPor
�� 
.
�� 
Equals
�� %
(
��% &
jugador
��& -
.
��- .
Nickname
��. 6
)
��6 7
)
��7 8
{
�� 
	esCreador
�� 
=
�� 
true
��  
;
��  !
}
�� 
return
�� 
	esCreador
�� 
;
�� 
}
�� 	
private
�� 
IJuegoCallback
�� !
JuegoCallbackActual
�� 2
{
�� 	
get
�� 
{
�� 
return
�� 
OperationContext
�� '
.
��' (
Current
��( /
.
��/ 0 
GetCallbackChannel
��0 B
<
��B C
IJuegoCallback
��C Q
>
��Q R
(
��R S
)
��S T
;
��T U
}
�� 
}
�� 	
}
�� 
}�� ��
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
�� 
posicionAleatoria
�� !
=
��" #
number
��$ *
.
��* +
Next
��+ /
(
��/ 0
$num
��0 1
,
��1 2
mazoSala
��3 ;
.
��; <
Count
��< A
-
��B C
$num
��D E
)
��E F
;
��F G
cartaTomada
�� 
=
�� 
mazoSala
�� "
.
��" #
	ElementAt
��# ,
(
��, -
posicionAleatoria
��- >
)
��> ?
;
��? @
return
�� 
cartaTomada
�� 
;
�� 
}
�� 	
public
�� 
void
�� !
ColocarCartaCentral
�� '
(
��' (
Carta
��( -
cartaCentral
��. :
,
��: ;
String
��< B
idSalaJugador
��C P
)
��P Q
{
�� 	
var
�� 
salaBuscada
�� 
=
�� 
salasCreadas
�� *
.
��* +
Find
��+ /
(
��/ 0
sala
��0 4
=>
��5 7
sala
��8 <
.
��< =
Id
��= ?
.
��? @
Equals
��@ F
(
��F G
idSalaJugador
��G T
)
��T U
)
��U V
;
��V W
if
�� 
(
�� 
cartaCentral
�� 
.
�� 
Efecto
�� #
==
��$ &
EfectosCarta
��' 3
.
��3 4
Cancelar
��4 <
)
��< =
{
�� 
salaBuscada
�� 
.
�� 
PartidaDeSala
�� )
.
��) *&
CancelarSiguienteJugador
��* B
(
��B C
)
��C D
;
��D E
string
�� 
turnoActual
�� "
=
��# $
salaBuscada
��% 0
.
��0 1
PartidaDeSala
��1 >
.
��> ?#
ObtenerJugadorEnTurno
��? T
(
��T U
)
��U V
;
��V W'
NotificarJugadorCancelado
�� )
(
��) *
salaBuscada
��* 5
,
��5 6
turnoActual
��7 B
)
��B C
;
��C D
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
cartaCentral
��  
.
��  !
Efecto
��! '
==
��( *
EfectosCarta
��+ 7
.
��7 8
Reversa
��8 ?
)
��? @
{
�� #
CambiarSentidoPartida
�� )
(
��) *
salaBuscada
��* 5
)
��5 6
;
��6 7
}
�� 
else
�� 
{
�� 
string
�� &
nicknameSiguienteJugador
�� 3
=
��4 5
salaBuscada
��6 A
.
��A B
PartidaDeSala
��B O
.
��O P%
ObtenerSiguienteJugador
��P g
(
��g h
)
��h i
;
��i j
if
�� 
(
�� 
cartaCentral
�� $
.
��$ %
Efecto
��% +
==
��, .
EfectosCarta
��/ ;
.
��; <
TomaDos
��< C
)
��C D
{
�� 
AgregarDosCartas
�� (
(
��( )
salaBuscada
��) 4
,
��4 5&
nicknameSiguienteJugador
��6 N
)
��N O
;
��O P
}
�� 
else
�� 
if
�� 
(
�� 
cartaCentral
�� )
.
��) *
Efecto
��* 0
==
��1 3
EfectosCarta
��4 @
.
��@ A

TomaCuatro
��A K
)
��K L
{
�� !
AgregarCuatroCartas
�� +
(
��+ ,
salaBuscada
��, 7
,
��7 8&
nicknameSiguienteJugador
��9 Q
)
��Q R
;
��R S
}
�� 
}
�� 
CambiarTurno
�� 
(
�� 
salaBuscada
�� (
)
��( )
;
��) *
}
�� 
foreach
�� 
(
�� 
var
�� 
jugador
��  
in
��! #
salaBuscada
��$ /
.
��/ 0
JugadoresEnSala
��0 ?
)
��? @
{
�� 
jugador
�� 
.
�� 
Value
�� 
.
�� $
ActualizarCartaCentral
�� 4
(
��4 5
cartaCentral
��5 A
)
��A B
;
��B C
}
�� 
}
�� 	
private
�� 
void
�� '
NotificarJugadorCancelado
�� .
(
��. /
Sala
��/ 3
sala
��4 8
,
��8 9
string
��: @
turnoActual
��A L
)
��L M
{
�� 	
foreach
�� 
(
�� 
var
�� 
jugador
��  
in
��! #
sala
��$ (
.
��( )
JugadoresEnSala
��) 8
)
��8 9
{
�� 
jugador
�� 
.
�� 
Value
�� 
.
��  
ObtenerTurnoActual
�� 0
(
��0 1
turnoActual
��1 <
)
��< =
;
��= >
}
�� 
}
�� 	
private
�� 
void
�� !
AgregarCuatroCartas
�� (
(
��( )
Sala
��) -
salaBuscada
��. 9
,
��9 :
string
��; A
nicknameJugador
��B Q
)
��Q R
{
�� 	
foreach
�� 
(
�� 
var
�� 
jugador
��  
in
��! #
salaBuscada
��$ /
.
��/ 0
JugadoresEnSala
��0 ?
)
��? @
{
�� 
if
�� 
(
�� 
jugador
�� 
.
�� 
Key
�� 
.
��  
Nickname
��  (
.
��( )
Equals
��) /
(
��/ 0
nicknameJugador
��0 ?
)
��? @
)
��@ A
{
�� 
jugador
�� 
.
�� 
Value
�� !
.
��! "!
ObtenerCuatroCartas
��" 5
(
��5 6&
TomarCuatroCartasDelMazo
��6 N
(
��N O
)
��O P
)
��P Q
;
��Q R
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
List
�� 
<
�� 
Carta
�� 
>
�� #
TomarDosCartasDelMazo
�� 1
(
��1 2
)
��2 3
{
�� 	
List
�� 
<
�� 
Carta
�� 
>
�� 
cartasTomadas
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
Carta
��1 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
Random
�� 
number
�� 
=
�� 
new
�� 
Random
��  &
(
��& '
)
��' (
;
��( )
int
�� %
posicionAleatoriaCarta1
�� '
=
��( )
number
��* 0
.
��0 1
Next
��1 5
(
��5 6
$num
��6 7
,
��7 8
mazoSala
��9 A
.
��A B
Count
��B G
-
��H I
$num
��J K
)
��K L
;
��L M
int
�� %
posicionAleatoriaCarta2
�� '
=
��( )
number
��* 0
.
��0 1
Next
��1 5
(
��5 6
$num
��6 7
,
��7 8
mazoSala
��9 A
.
��A B
Count
��B G
-
��H I
$num
��J K
)
��K L
;
��L M
cartasTomadas
�� 
.
�� 
Add
�� 
(
�� 
mazoSala
�� &
.
��& '
	ElementAt
��' 0
(
��0 1%
posicionAleatoriaCarta1
��1 H
)
��H I
)
��I J
;
��J K
cartasTomadas
�� 
.
�� 
Add
�� 
(
�� 
mazoSala
�� &
.
��& '
	ElementAt
��' 0
(
��0 1%
posicionAleatoriaCarta2
��1 H
)
��H I
)
��I J
;
��J K
return
�� 
cartasTomadas
��  
;
��  !
}
�� 	
private
�� 
List
�� 
<
�� 
Carta
�� 
>
�� &
TomarCuatroCartasDelMazo
�� 4
(
��4 5
)
��5 6
{
�� 	
List
�� 
<
�� 
Carta
�� 
>
�� 
cartasTomadas
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
Carta
��1 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
Random
�� 
number
�� 
=
�� 
new
�� 
Random
��  &
(
��& '
)
��' (
;
��( )
int
�� %
posicionAleatoriaCarta1
�� '
=
��( )
number
��* 0
.
��0 1
Next
��1 5
(
��5 6
$num
��6 7
,
��7 8
mazoSala
��9 A
.
��A B
Count
��B G
-
��H I
$num
��J K
)
��K L
;
��L M
int
�� %
posicionAleatoriaCarta2
�� '
=
��( )
number
��* 0
.
��0 1
Next
��1 5
(
��5 6
$num
��6 7
,
��7 8
mazoSala
��9 A
.
��A B
Count
��B G
-
��H I
$num
��J K
)
��K L
;
��L M
int
�� %
posicionAleatoriaCarta3
�� '
=
��( )
number
��* 0
.
��0 1
Next
��1 5
(
��5 6
$num
��6 7
,
��7 8
mazoSala
��9 A
.
��A B
Count
��B G
-
��H I
$num
��J K
)
��K L
;
��L M
int
�� %
posicionAleatoriaCarta4
�� '
=
��( )
number
��* 0
.
��0 1
Next
��1 5
(
��5 6
$num
��6 7
,
��7 8
mazoSala
��9 A
.
��A B
Count
��B G
-
��H I
$num
��J K
)
��K L
;
��L M
cartasTomadas
�� 
.
�� 
Add
�� 
(
�� 
mazoSala
�� &
.
��& '
	ElementAt
��' 0
(
��0 1%
posicionAleatoriaCarta1
��1 H
)
��H I
)
��I J
;
��J K
cartasTomadas
�� 
.
�� 
Add
�� 
(
�� 
mazoSala
�� &
.
��& '
	ElementAt
��' 0
(
��0 1%
posicionAleatoriaCarta2
��1 H
)
��H I
)
��I J
;
��J K
cartasTomadas
�� 
.
�� 
Add
�� 
(
�� 
mazoSala
�� &
.
��& '
	ElementAt
��' 0
(
��0 1%
posicionAleatoriaCarta3
��1 H
)
��H I
)
��I J
;
��J K
cartasTomadas
�� 
.
�� 
Add
�� 
(
�� 
mazoSala
�� &
.
��& '
	ElementAt
��' 0
(
��0 1%
posicionAleatoriaCarta4
��1 H
)
��H I
)
��I J
;
��J K
return
�� 
cartasTomadas
��  
;
��  !
}
�� 	
private
�� 
void
�� 
AgregarDosCartas
�� %
(
��% &
Sala
��& *
salaBuscada
��+ 6
,
��6 7
string
��8 >
nicknameJugador
��? N
)
��N O
{
�� 	
foreach
�� 
(
�� 
var
�� 
jugador
��  
in
��! #
salaBuscada
��$ /
.
��/ 0
JugadoresEnSala
��0 ?
)
��? @
{
�� 
if
�� 
(
�� 
jugador
�� 
.
�� 
Key
�� 
.
��  
Nickname
��  (
.
��( )
Equals
��) /
(
��/ 0
nicknameJugador
��0 ?
)
��? @
)
��@ A
{
�� 
jugador
�� 
.
�� 
Value
�� !
.
��! "
ObtenerDosCartas
��" 2
(
��2 3#
TomarDosCartasDelMazo
��3 H
(
��H I
)
��I J
)
��J K
;
��K L
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� #
CambiarSentidoPartida
�� *
(
��* +
Sala
��+ /
salaBuscada
��0 ;
)
��; <
{
�� 	
salaBuscada
�� 
.
�� 
PartidaDeSala
�� %
.
��% &
SentidoJuego
��& 2
=
��3 4
$str
��5 @
;
��@ A
}
�� 	
private
�� 
void
�� 
CambiarTurno
�� !
(
��! "
Sala
��" &
sala
��' +
)
��+ ,
{
�� 	
String
�� 

nuevoTurno
�� 
=
�� 
sala
��  $
.
��$ %
PartidaDeSala
��% 2
.
��2 3
CambiarTurno
��3 ?
(
��? @
)
��@ A
;
��A B
foreach
�� 
(
�� 
var
�� 
jugador
��  
in
��! #
sala
��$ (
.
��( )
JugadoresEnSala
��) 8
)
��8 9
{
�� 
jugador
�� 
.
�� 
Value
�� 
.
�� 
CambiarTurno
�� *
(
��* +

nuevoTurno
��+ 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
public
�� 
void
�� 

TomarCarta
�� 
(
�� 
String
�� %
idSalaJugador
��& 3
,
��3 4
String
��5 ;
nickname
��< D
)
��D E
{
�� 	
var
�� 
salaBuscada
�� 
=
�� 
salasCreadas
�� *
.
��* +
Find
��+ /
(
��/ 0
sala
��0 4
=>
��5 7
sala
��8 <
.
��< =
Id
��= ?
.
��? @
Equals
��@ F
(
��F G
idSalaJugador
��G T
)
��T U
)
��U V
;
��V W
foreach
�� 
(
�� 
var
�� 
jugador
��  
in
��! #
salaBuscada
��$ /
.
��/ 0
JugadoresEnSala
��0 ?
)
��? @
{
�� 
if
�� 
(
�� 
jugador
�� 
.
�� 
Key
�� 
.
��  
Nickname
��  (
.
��( )
Equals
��) /
(
��/ 0
nickname
��0 8
)
��8 9
)
��9 :
{
�� 
jugador
�� 
.
�� 
Value
�� !
.
��! "
RecibirCarta
��" .
(
��. /
	TomaCarta
��/ 8
(
��8 9
)
��9 :
)
��: ;
;
��; <
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
AnunciarGanador
�� #
(
��# $
String
��$ *
idSalaJugador
��+ 8
,
��8 9
Jugador
��: A
jugadorGanador
��B P
)
��P Q
{
�� 	
var
�� 
salaBuscada
�� 
=
�� 
salasCreadas
�� *
.
��* +
Find
��+ /
(
��/ 0
sala
��0 4
=>
��5 7
sala
��8 <
.
��< =
Id
��= ?
.
��? @
Equals
��@ F
(
��F G
idSalaJugador
��G T
)
��T U
)
��U V
;
��V W
foreach
�� 
(
�� 
var
�� 
jugador
��  
in
��! #
salaBuscada
��$ /
.
��/ 0
JugadoresEnSala
��0 ?
)
��? @
{
�� 
jugador
�� 
.
�� 
Value
�� 
.
�� 
NotificarGanador
�� .
(
��. /
jugadorGanador
��/ =
.
��= >
Nickname
��> F
)
��F G
;
��G H
if
�� 
(
�� 
jugador
�� 
.
�� 
Key
�� 
.
��  
Nickname
��  (
.
��( )
Equals
��) /
(
��/ 0
jugadorGanador
��0 >
.
��> ?
Nickname
��? G
)
��G H
)
��H I
{
�� +
ActualizarDatosJugadorGanador
�� 1
(
��1 2
jugadorGanador
��2 @
)
��@ A
;
��A B
}
�� 
else
�� 
{
�� $
ActualizarDatosJugador
�� *
(
��* +
jugador
��+ 2
.
��2 3
Key
��3 6
)
��6 7
;
��7 8
}
�� 
}
�� 
TerminarPartida
�� 
(
�� 
salaBuscada
�� '
)
��' (
;
��( )
}
�� 	
private
�� 
void
�� $
ActualizarDatosJugador
�� +
(
��+ ,
Jugador
��, 3
jugador
��4 ;
)
��; <
{
�� 	'
administradorDatosJugador
�� %
.
��% &'
ActualizarPartidasJugadas
��& ?
(
��? @
jugador
��@ G
)
��G H
;
��H I
}
�� 	
private
�� 
void
�� +
ActualizarDatosJugadorGanador
�� 2
(
��2 3
Jugador
��3 :
jugadorGanador
��; I
)
��I J
{
�� 	'
administradorDatosJugador
�� %
.
��% &-
ActualizarEstadisticasDeJugador
��& E
(
��E F
jugadorGanador
��F T
)
��T U
;
��U V
}
�� 	
public
�� 
void
�� %
ActualizarNumeroDeCarta
�� +
(
��+ ,
String
��, 2
idSalaJugador
��3 @
,
��@ A
String
��B H
nickname
��I Q
,
��Q R
String
��S Y
numeroDeCartas
��Z h
)
��h i
{
�� 	
var
�� 
salaBuscada
�� 
=
�� 
salasCreadas
�� *
.
��* +
Find
��+ /
(
��/ 0
sala
��0 4
=>
��5 7
sala
��8 <
.
��< =
Id
��= ?
.
��? @
Equals
��@ F
(
��F G
idSalaJugador
��G T
)
��T U
)
��U V
;
��V W
foreach
�� 
(
�� 
var
�� 
jugador
��  
in
��! #
salaBuscada
��$ /
.
��/ 0
JugadoresEnSala
��0 ?
)
��? @
{
�� 
jugador
�� 
.
�� 
Value
�� 
.
�� &
ActualizarNumeroDeCartas
�� 6
(
��6 7
nickname
��7 ?
,
��? @
numeroDeCartas
��A O
)
��O P
;
��P Q
}
�� 
}
�� 	
public
�� 
void
�� 
ActualizarPuntaje
�� %
(
��% &
String
��& ,
idSalaJugador
��- :
,
��: ;
String
��< B
nickname
��C K
,
��K L
int
��M P
puntajeASumar
��Q ^
)
��^ _
{
�� 	
var
�� 
salaBuscada
�� 
=
�� 
salasCreadas
�� *
.
��* +
Find
��+ /
(
��/ 0
sala
��0 4
=>
��5 7
sala
��8 <
.
��< =
Id
��= ?
.
��? @
Equals
��@ F
(
��F G
idSalaJugador
��G T
)
��T U
)
��U V
;
��V W
foreach
�� 
(
�� 
var
�� 
jugador
��  
in
��! #
salaBuscada
��$ /
.
��/ 0
JugadoresEnSala
��0 ?
)
��? @
{
�� 
jugador
�� 
.
�� 
Value
�� 
.
�� (
ActualizarPuntajeDeJugador
�� 8
(
��8 9
nickname
��9 A
,
��A B
puntajeASumar
��C P
)
��P Q
;
��Q R
}
�� 
}
�� 	
private
�� 
void
�� 
TerminarPartida
�� $
(
��$ %
Sala
��% )
sala
��* .
)
��. /
{
�� 	
salasCreadas
�� 
.
�� 
Remove
�� 
(
��  
sala
��  $
)
��$ %
;
��% &
}
�� 	
}
�� 
}�� 