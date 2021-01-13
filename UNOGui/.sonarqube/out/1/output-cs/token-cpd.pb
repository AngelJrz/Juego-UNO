Å
D:\Juego-UNO\UNOGui\App.xaml.cs
[ 
assembly 	
:	 

log4net 
. 
Config 
. 
XmlConfigurator )
() *
Watch* /
=0 1
true2 6
)6 7
]7 8
	namespace 	
UNOGui
 
{ 
public 

partial 
class 
App 
: 
Application *
{ 
public 
string 
Idioma 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
UNOGui- 3
.3 4

Properties4 >
.> ?
Settings? G
.G H
DefaultH O
.O P
IdiomaP V
;V W
private 
readonly 
System 
.  
Globalization  -
.- .
CultureInfo. 9
informacionCultural: M
;M N
public 
App 
( 
) 
{ 	
informacionCultural 
=  !
new" %
System& ,
., -
Globalization- :
.: ;
CultureInfo; F
(F G
IdiomaG M
)M N
;N O
Thread 
. 
CurrentThread  
.  !
CurrentUICulture! 1
=2 3
informacionCultural4 G
;G H
} 	
} 
} ü
$D:\Juego-UNO\UNOGui\Logica\Idioma.cs
	namespace 	
UNOGui
 
. 
Logica 
{ 
public 

class 
Idioma 
{ 
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Nomenclatura "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ‡
(D:\Juego-UNO\UNOGui\Logica\LoginAdmin.cs
	namespace 	
UNOGui
 
. 
Logica 
{ 
public

 

static

 
class

 

LoginAdmin

 "
{ 
private 
static 
readonly 
InstanceContext  /
contexto0 8
=9 :
new; >
InstanceContext? N
(N O
newO R
LoginCallbackAdminS e
(e f
)f g
)g h
;h i
private 
static 
readonly 
LoginClient  +
servidor, 4
=5 6
new7 :
LoginClient; F
(F G
contextoG O
)O P
;P Q
public 
static 
void 
IniciarSesion (
(( )
string) /
nickname0 8
,8 9
string: @
contrase√±aA K
)K L
{ 	
try 
{ 
servidor 
. 
IniciarSesion &
(& '
nickname' /
,/ 0
contrase√±a1 ;
); <
;< =
} 
catch 
( %
EndpointNotFoundException ,
ex- /
)/ 0
{ 
LoggerAdmin 
. 
EscribirLog '
(' (
$str( /
,/ 0
ex1 3
)3 4
;4 5
throw 
; 
} 
} 	
public&& 
static&& 
void&& 
CerrarSesion&& '
(&&' (
string&&( .
nickname&&/ 7
)&&7 8
{'' 	
try(( 
{)) 
servidor** 
.** 
CerrarSesion** %
(**% &
nickname**& .
)**. /
;**/ 0
}++ 
catch,, 
(,, %
EndpointNotFoundException,, ,
ex,,- /
),,/ 0
{-- 
LoggerAdmin.. 
... 
EscribirLog.. '
(..' (
$str..( /
,../ 0
ex..1 3
)..3 4
;..4 5
throw// 
;// 
}00 
}11 	
}22 
}33 ¿,
0D:\Juego-UNO\UNOGui\Logica\LoginCallbackAdmin.cs
	namespace		 	
UNOGui		
 
.		 
Logica		 
{

 
public 

class 
LoginCallbackAdmin #
:$ %
ILoginCallback& 4
{ 
public 
void #
NotificarResultadoLogin +
(+ ,
ResultadoLogin, :
	resultado; D
)D E
{ 	
if 
( 
	resultado 
== 
ResultadoLogin +
.+ ,
ExisteJugador, 9
)9 :
{ 
	Principal 
ventanaPrincipal *
=+ ,
Application- 8
.8 9
Current9 @
.@ A
WindowsA H
.H I
OfTypeI O
<O P
	PrincipalP Y
>Y Z
(Z [
)[ \
. 
SingleOrDefault $
($ %
)% &
;& '
string !
nicknameJugadorActual ,
=- .
(/ 0
ventanaPrincipal0 @
.@ A
ContentA H
asI K
LoginL Q
)Q R
.R S
JugadorNicknameS b
;b c
MenuPrincipal 
menuPrincipal +
=, -
new. 1
MenuPrincipal2 ?
(? @
)@ A
{ 
DataContext 
=  !
new" %
Jugador& -
{   
Nickname!!  
=!!! "!
nicknameJugadorActual!!# 8
}"" 
}## 
;## 
menuPrincipal%% 
.%% 
Show%% "
(%%" #
)%%# $
;%%$ %
ventanaPrincipal&&  
.&&  !
Close&&! &
(&&& '
)&&' (
;&&( )
}'' 
else(( 
{)) 
Mensaje** 
ventanaMensaje** &
=**' (
new**) ,
Mensaje**- 4
(**4 5
)**5 6
;**6 7
if,, 
(,, 
	resultado,, 
==,,  
ResultadoLogin,,! /
.,,/ 0
SesionIniciada,,0 >
),,> ?
{-- 
ventanaMensaje.. "
..." #
Title..# (
=..) *

Properties..+ 5
...5 6
	Resources..6 ?
...? @-
!Login_MensajeSesionIniciadaTitulo..@ a
;..a b
ventanaMensaje// "
.//" #
TituloMensaje//# 0
=//1 2

Properties//3 =
.//= >
	Resources//> G
.//G H-
!Login_MensajeSesionIniciadaTitulo//H i
;//i j
ventanaMensaje00 "
.00" #
	Contenido00# ,
=00- .

Properties00/ 9
.009 :
	Resources00: C
.00C D0
$Login_MensajeSesionIniciadaContenido00D h
;00h i
}11 
else22 
if22 
(22 
	resultado22 "
==22# %
ResultadoLogin22& 4
.224 5
NoExisteNickname225 E
)22E F
{33 
ventanaMensaje44 "
.44" #
Title44# (
=44) *

Properties44+ 5
.445 6
	Resources446 ?
.44? @'
Login_MensajeNicknameTitulo44@ [
;44[ \
ventanaMensaje55 "
.55" #
TituloMensaje55# 0
=551 2

Properties553 =
.55= >
	Resources55> G
.55G H'
Login_MensajeNicknameTitulo55H c
;55c d
ventanaMensaje66 "
.66" #
	Contenido66# ,
=66- .

Properties66/ 9
.669 :
	Resources66: C
.66C D*
Login_MensajeNicknameContenido66D b
;66b c
}77 
else88 
if88 
(88 
	resultado88 "
==88# %
ResultadoLogin88& 4
.884 5!
Contrase√±aIncorrecta885 I
)88I J
{99 
ventanaMensaje:: "
.::" #
Title::# (
=::) *

Properties::+ 5
.::5 6
	Resources::6 ?
.::? @*
Login_MensajeContrase√±aTitulo::@ ]
;::] ^
ventanaMensaje;; "
.;;" #
TituloMensaje;;# 0
=;;1 2

Properties;;3 =
.;;= >
	Resources;;> G
.;;G H*
Login_MensajeContrase√±aTitulo;;H e
;;;e f
ventanaMensaje<< "
.<<" #
	Contenido<<# ,
=<<- .

Properties<</ 9
.<<9 :
	Resources<<: C
.<<C D-
!Login_MensajeContrase√±aContenido<<D d
;<<d e
}== 
ventanaMensaje?? 
.?? 

ShowDialog?? )
(??) *
)??* +
;??+ ,
}@@ 
}AA 	
publicGG 
voidGG 
ObtenerJugadoresTopGG '
(GG' (
ListGG( ,
<GG, -
JugadorGG- 4
>GG4 5
jugadoresTopGG6 B
)GGB C
{HH 	
MenuPrincipalII 
menuPrincipalII '
=II( )
ApplicationII* 5
.II5 6
CurrentII6 =
.II= >
WindowsII> E
.IIE F
OfTypeIIF L
<IIL M
MenuPrincipalIIM Z
>IIZ [
(II[ \
)II\ ]
.JJ 
SingleOrDefaultJJ $
(JJ$ %
)JJ% &
;JJ& '
menuPrincipalLL 
.LL 
PaginaIncioLL %
.LL% &
TablaPuntacionesLL& 6
.LL6 7
ItemsSourceLL7 B
=LLC D
newLLE H 
ObservableCollectionLLI ]
<LL] ^
JugadorLL^ e
>LLe f
(LLf g
jugadoresTopLLg s
)LLs t
;LLt u
}MM 	
}NN 
}OO §	
-D:\Juego-UNO\UNOGui\Logica\Log\LoggerAdmin.cs
	namespace 	
UNOGui
 
. 
Logica 
. 
Log 
{ 
public 

static 
class 
LoggerAdmin #
{ 
private 
static 
readonly 
log4net  '
.' (
ILog( ,
log- 0
=1 2
log4net 
. 

LogManager 
. 
	GetLogger $
($ %
System% +
.+ ,

Reflection, 6
.6 7

MethodBase7 A
.A B
GetCurrentMethodB R
(R S
)S T
.T U
DeclaringTypeU b
)b c
;c d
public 
static 
void 
EscribirLog &
(& '
string' -
message. 5
,5 6
	Exception7 @
exA C
)C D
{ 	
log 
. 
Error 
( 
message 
, 
ex !
)! "
;" #
} 	
} 
} Î<
*D:\Juego-UNO\UNOGui\Logica\PartidaAdmin.cs
	namespace 	
UNOGui
 
. 
Logica 
{ 
public 

static 
class 
PartidaAdmin $
{ 
private 
static 
readonly 
InstanceContext  /
contexto0 8
=9 :
new; >
InstanceContext? N
(N O
newO R
JuegoCallbackAdminS e
(e f
)f g
)g h
;h i
private 
static 
readonly "
AdministrarJuegoClient  6
servidor7 ?
=@ A
newB E"
AdministrarJuegoClientF \
(\ ]
contexto] e
)e f
;f g
public 
static 
void 
IniciarPartida )
() *
string* 0
idSala1 7
)7 8
{ 	
try 
{ 
servidor 
. 
IniciarPartida '
(' (
idSala( .
). /
;/ 0
} 
catch 
( %
EndpointNotFoundException ,
ex- /
)/ 0
{ 
LoggerAdmin 
. 
EscribirLog '
(' (
$str( /
,/ 0
ex1 3
)3 4
;4 5
throw 
; 
} 
catch 
( 
TimeoutException #
ex$ &
)& '
{   
LoggerAdmin!! 
.!! 
EscribirLog!! '
(!!' (
$str!!( /
,!!/ 0
ex!!1 3
)!!3 4
;!!4 5
throw"" 
;"" 
}## 
}$$ 	
public++ 
static++ 
void++ 
ColocarCarta++ '
(++' (
Carta++( -

nuevaCarta++. 8
,++8 9
String++: @
idSalaDeJjugador++A Q
)++Q R
{,, 	
try-- 
{.. 
servidor// 
.// 
ColocarCartaCentral// ,
(//, -

nuevaCarta//- 7
,//7 8
idSalaDeJjugador//9 I
)//I J
;//J K
}00 
catch11 
(11 %
EndpointNotFoundException11 ,
ex11- /
)11/ 0
{22 
LoggerAdmin33 
.33 
EscribirLog33 '
(33' (
$str33( /
,33/ 0
ex331 3
)333 4
;334 5
throw44 
;44 
}55 
catch66 
(66 
TimeoutException66 #
ex66$ &
)66& '
{77 
LoggerAdmin88 
.88 
EscribirLog88 '
(88' (
$str88( /
,88/ 0
ex881 3
)883 4
;884 5
throw99 
;99 
}:: 
};; 	
publicBB 
staticBB 
voidBB 

TomarCartaBB %
(BB% &
StringBB& ,
idSalaDeJjugadorBB- =
,BB= >
StringBB? E
nicknameBBF N
)BBN O
{CC 	
tryDD 
{EE 
servidorFF 
.FF 

TomarCartaFF #
(FF# $
idSalaDeJjugadorFF$ 4
,FF4 5
nicknameFF6 >
)FF> ?
;FF? @
}GG 
catchHH 
(HH %
EndpointNotFoundExceptionHH ,
exHH- /
)HH/ 0
{II 
LoggerAdminJJ 
.JJ 
EscribirLogJJ '
(JJ' (
$strJJ( /
,JJ/ 0
exJJ1 3
)JJ3 4
;JJ4 5
throwKK 
;KK 
}LL 
catchMM 
(MM 
TimeoutExceptionMM #
exMM$ &
)MM& '
{NN 
LoggerAdminOO 
.OO 
EscribirLogOO '
(OO' (
$strOO( /
,OO/ 0
exOO1 3
)OO3 4
;OO4 5
throwPP 
;PP 
}QQ 
}RR 	
publicYY 
staticYY 
voidYY 
AnunciarGanadorYY *
(YY* +
StringYY+ 1
idSalaDeJjugadorYY2 B
,YYB C
JugadorYYD K
jugadorGanadorYYL Z
)YYZ [
{ZZ 	
try[[ 
{\\ 
servidor]] 
.]] 
AnunciarGanador]] (
(]]( )
idSalaDeJjugador]]) 9
,]]9 :
jugadorGanador]]; I
)]]I J
;]]J K
}^^ 
catch__ 
(__ %
EndpointNotFoundException__ ,
ex__- /
)__/ 0
{`` 
LoggerAdminaa 
.aa 
EscribirLogaa '
(aa' (
$straa( /
,aa/ 0
exaa1 3
)aa3 4
;aa4 5
throwbb 
;bb 
}cc 
catchdd 
(dd 
TimeoutExceptiondd #
exdd$ &
)dd& '
{ee 
LoggerAdminff 
.ff 
EscribirLogff '
(ff' (
$strff( /
,ff/ 0
exff1 3
)ff3 4
;ff4 5
throwgg 
;gg 
}hh 
}ii 	
publicqq 
staticqq 
voidqq $
ActualizarNumeroDeCartasqq 3
(qq3 4
Stringqq4 :
idSalaqq; A
,qqA B
StringqqC I
nicknameqqJ R
,qqR S
StringqqT Z
nuevoNumeroqq[ f
)qqf g
{rr 	
tryss 
{tt 
servidoruu 
.uu #
ActualizarNumeroDeCartauu 0
(uu0 1
idSalauu1 7
,uu7 8
nicknameuu9 A
,uuA B
nuevoNumerouuC N
)uuN O
;uuO P
}vv 
catchww 
(ww %
EndpointNotFoundExceptionww ,
exww- /
)ww/ 0
{xx 
LoggerAdminyy 
.yy 
EscribirLogyy '
(yy' (
$stryy( /
,yy/ 0
exyy1 3
)yy3 4
;yy4 5
throwzz 
;zz 
}{{ 
catch|| 
(|| 
TimeoutException|| #
ex||$ &
)||& '
{}} 
LoggerAdmin~~ 
.~~ 
EscribirLog~~ '
(~~' (
$str~~( /
,~~/ 0
ex~~1 3
)~~3 4
;~~4 5
throw 
; 
}
ÄÄ 
}
ÅÅ 	
public
ââ 
static
ââ 
void
ââ 
ActualizarPuntaje
ââ ,
(
ââ, -
String
ââ- 3
idSalaJugador
ââ4 A
,
ââA B
String
ââC I
nickname
ââJ R
,
ââR S
int
ââT W
puntajeASumar
ââX e
)
ââe f
{
ää 	
try
ãã 
{
åå 
servidor
çç 
.
çç 
ActualizarPuntaje
çç *
(
çç* +
idSalaJugador
çç+ 8
,
çç8 9
nickname
çç: B
,
ççB C
puntajeASumar
ççD Q
)
ççQ R
;
ççR S
}
éé 
catch
èè 
(
èè '
EndpointNotFoundException
èè ,
ex
èè- /
)
èè/ 0
{
êê 
LoggerAdmin
ëë 
.
ëë 
EscribirLog
ëë '
(
ëë' (
$str
ëë( /
,
ëë/ 0
ex
ëë1 3
)
ëë3 4
;
ëë4 5
throw
íí 
;
íí 
}
ìì 
catch
îî 
(
îî 
TimeoutException
îî #
ex
îî$ &
)
îî& '
{
ïï 
LoggerAdmin
ññ 
.
ññ 
EscribirLog
ññ '
(
ññ' (
$str
ññ( /
,
ññ/ 0
ex
ññ1 3
)
ññ3 4
;
ññ4 5
throw
óó 
;
óó 
}
òò 
}
ôô 	
}
öö 
}õõ ∏[
2D:\Juego-UNO\UNOGui\Logica\PartidaCallbackAdmin.cs
	namespace 	
UNOGui
 
. 
Logica 
{		 
public 

partial 
class 
JuegoCallbackAdmin +
{ 
public 
void "
NotificarInicioPartida *
(* +
Sala+ /
sala0 4
)4 5
{ 	
Juego 
ventanaJuego 
=  
Application! ,
., -
Current- 4
.4 5
Windows5 <
.< =
OfType= C
<C D
JuegoD I
>I J
(J K
)K L
.L M
SingleOrDefaultM \
(\ ]
)] ^
;^ _
ventanaJuego 
. 
Height 
=  !
$num" %
;% &
ventanaJuego 
. 
Width 
=  
$num! $
;$ %
Paginas 
. 
Partida 
paginaPartida )
=* +
new, /
Paginas0 7
.7 8
Partida8 ?
(? @
sala@ D
.D E
IdE G
)G H
;H I
paginaPartida 
. $
EstablecerJugadorEnTurno 2
(2 3
sala3 7
.7 8
	CreadaPor8 A
)A B
;B C
paginaPartida 
. 
PintarJungadores *
(* +
sala+ /
)/ 0
;0 1
ventanaJuego 
. 
PaginaActual %
=& '
paginaPartida( 5
;5 6
ventanaJuego 
. 
frameNavegacion (
.( )
Navigate) 1
(1 2
paginaPartida2 ?
)? @
;@ A
} 	
public$$ 
void$$ 
ObtenerMazo$$ 
($$  
List$$  $
<$$$ %
Carta$$% *
>$$* +
mazoJugador$$, 7
)$$7 8
{%% 	
Juego&& 
ventanaJuego&& 
=&&  
Application&&! ,
.&&, -
Current&&- 4
.&&4 5
Windows&&5 <
.&&< =
OfType&&= C
<&&C D
Juego&&D I
>&&I J
(&&J K
)&&K L
.&&L M
SingleOrDefault&&M \
(&&\ ]
)&&] ^
;&&^ _
Paginas'' 
.'' 
Partida'' 
ventanaPartida'' *
=''+ ,
ventanaJuego''- 9
.''9 :
PaginaActual'': F
as''G I
Paginas''J Q
.''Q R
Partida''R Y
;''Y Z
ventanaPartida)) 
.)) 
EntregarCartas)) )
())) *
mazoJugador))* 5
)))5 6
;))6 7
}** 	
public00 
void00 "
ActualizarCartaCentral00 *
(00* +
Carta00+ 0
cartaCentral001 =
)00= >
{11 	
Juego22 
ventanaJuego22 
=22  
Application22! ,
.22, -
Current22- 4
.224 5
Windows225 <
.22< =
OfType22= C
<22C D
Juego22D I
>22I J
(22J K
)22K L
.22L M
SingleOrDefault22M \
(22\ ]
)22] ^
;22^ _
Paginas33 
.33 
Partida33 
ventanaPartida33 *
=33+ ,
ventanaJuego33- 9
.339 :
PaginaActual33: F
as33G I
Paginas33J Q
.33Q R
Partida33R Y
;33Y Z
ventanaPartida55 
.55 "
ActualizarCartaCentral55 1
(551 2
cartaCentral552 >
)55> ?
;55? @
}66 	
public<< 
void<< 
RecibirCarta<<  
(<<  !
Carta<<! &
cartaTomada<<' 2
)<<2 3
{== 	
Juego>> 
ventanaJuego>> 
=>>  
Application>>! ,
.>>, -
Current>>- 4
.>>4 5
Windows>>5 <
.>>< =
OfType>>= C
<>>C D
Juego>>D I
>>>I J
(>>J K
)>>K L
.>>L M
SingleOrDefault>>M \
(>>\ ]
)>>] ^
;>>^ _
Paginas?? 
.?? 
Partida?? 
ventanaPartida?? *
=??+ ,
ventanaJuego??- 9
.??9 :
PaginaActual??: F
as??G I
Paginas??J Q
.??Q R
Partida??R Y
;??Y Z
ventanaPartidaAA 
.AA 
AniadirCartaAA '
(AA' (
cartaTomadaAA( 3
)AA3 4
;AA4 5
}BB 	
publicHH 
voidHH 
NotificarGanadorHH $
(HH$ %
StringHH% +
jugadorGanadorHH, :
)HH: ;
{II 	
JuegoJJ 
ventanaJuegoJJ 
=JJ  
ApplicationJJ! ,
.JJ, -
CurrentJJ- 4
.JJ4 5
WindowsJJ5 <
.JJ< =
OfTypeJJ= C
<JJC D
JuegoJJD I
>JJI J
(JJJ K
)JJK L
.JJL M
SingleOrDefaultJJM \
(JJ\ ]
)JJ] ^
;JJ^ _
PaginasKK 
.KK 
PartidaKK 
ventanaPartidaKK *
=KK+ ,
ventanaJuegoKK- 9
.KK9 :
PaginaActualKK: F
asKKG I
PaginasKKJ Q
.KKQ R
PartidaKKR Y
;KKY Z
ventanaPartidaMM 
.MM !
MostrarMensajeGanadorMM 0
(MM0 1
jugadorGanadorMM1 ?
)MM? @
;MM@ A
}NN 	
publicTT 
voidTT 
CambiarTurnoTT  
(TT  !
StringTT! '

nuevoTurnoTT( 2
)TT2 3
{UU 	
JuegoVV 
ventanaJuegoVV 
=VV  
ApplicationVV! ,
.VV, -
CurrentVV- 4
.VV4 5
WindowsVV5 <
.VV< =
OfTypeVV= C
<VVC D
JuegoVVD I
>VVI J
(VVJ K
)VVK L
.VVL M
SingleOrDefaultVVM \
(VV\ ]
)VV] ^
;VV^ _
PaginasWW 
.WW 
PartidaWW 
ventanaPartidaWW *
=WW+ ,
ventanaJuegoWW- 9
.WW9 :
PaginaActualWW: F
asWWG I
PaginasWWJ Q
.WWQ R
PartidaWWR Y
;WWY Z
ventanaPartidaYY 
.YY $
EstablecerJugadorEnTurnoYY 3
(YY3 4

nuevoTurnoYY4 >
)YY> ?
;YY? @
}ZZ 	
publicaa 
voidaa $
ActualizarNumeroDeCartasaa ,
(aa, -
Stringaa- 3
nicknameaa4 <
,aa< =
Stringaa> D
numeroDeCartasaaE S
)aaS T
{bb 	
Juegocc 
ventanaJuegocc 
=cc  
Applicationcc! ,
.cc, -
Currentcc- 4
.cc4 5
Windowscc5 <
.cc< =
OfTypecc= C
<ccC D
JuegoccD I
>ccI J
(ccJ K
)ccK L
.ccL M
SingleOrDefaultccM \
(cc\ ]
)cc] ^
;cc^ _
Paginasdd 
.dd 
Partidadd 
ventanaPartidadd *
=dd+ ,
ventanaJuegodd- 9
.dd9 :
PaginaActualdd: F
asddG I
PaginasddJ Q
.ddQ R
PartidaddR Y
;ddY Z
ventanaPartidaff 
.ff "
ActualizarNumeroCartasff 1
(ff1 2
nicknameff2 :
,ff: ;
numeroDeCartasff< J
)ffJ K
;ffK L
}gg 	
publicnn 
voidnn &
ActualizarPuntajeDeJugadornn .
(nn. /
Stringnn/ 5
nicknamenn6 >
,nn> ?
intnn@ C
puntajeASumarnnD Q
)nnQ R
{oo 	
Juegopp 
ventanaJuegopp 
=pp  
Applicationpp! ,
.pp, -
Currentpp- 4
.pp4 5
Windowspp5 <
.pp< =
OfTypepp= C
<ppC D
JuegoppD I
>ppI J
(ppJ K
)ppK L
.ppL M
SingleOrDefaultppM \
(pp\ ]
)pp] ^
;pp^ _
Paginasqq 
.qq 
Partidaqq 
ventanaPartidaqq *
=qq+ ,
ventanaJuegoqq- 9
.qq9 :
PaginaActualqq: F
asqqG I
PaginasqqJ Q
.qqQ R
PartidaqqR Y
;qqY Z
ventanaPartidass 
.ss &
ActualizarPuntajeDeJugadorss 5
(ss5 6
nicknamess6 >
,ss> ?
puntajeASumarss@ M
)ssM N
;ssN O
}tt 	
publiczz 
voidzz 
ObtenerCuatroCartaszz '
(zz' (
Listzz( ,
<zz, -
Cartazz- 2
>zz2 3
nuevasCartaszz4 @
)zz@ A
{{{ 	!
A√±adirCartasAJugador||  
(||  !
nuevasCartas||! -
)||- .
;||. /
}}} 	
public
ÉÉ 
void
ÉÉ 
ObtenerDosCartas
ÉÉ $
(
ÉÉ$ %
List
ÉÉ% )
<
ÉÉ) *
Carta
ÉÉ* /
>
ÉÉ/ 0
nuevasCartas
ÉÉ1 =
)
ÉÉ= >
{
ÑÑ 	#
A√±adirCartasAJugador
ÖÖ  
(
ÖÖ  !
nuevasCartas
ÖÖ! -
)
ÖÖ- .
;
ÖÖ. /
}
ÜÜ 	
private
àà 
void
àà #
A√±adirCartasAJugador
àà )
(
àà) *
List
àà* .
<
àà. /
Carta
àà/ 4
>
àà4 5
nuevasCartas
àà6 B
)
ààB C
{
ââ 	
Juego
ää 
ventanaJuego
ää 
=
ää  
Application
ää! ,
.
ää, -
Current
ää- 4
.
ää4 5
Windows
ää5 <
.
ää< =
OfType
ää= C
<
ääC D
Juego
ääD I
>
ääI J
(
ääJ K
)
ääK L
.
ääL M
SingleOrDefault
ääM \
(
ää\ ]
)
ää] ^
;
ää^ _
Paginas
ãã 
.
ãã 
Partida
ãã 
ventanaPartida
ãã *
=
ãã+ ,
ventanaJuego
ãã- 9
.
ãã9 :
PaginaActual
ãã: F
as
ããG I
Paginas
ããJ Q
.
ããQ R
Partida
ããR Y
;
ããY Z
foreach
çç 
(
çç 
Carta
çç 
carta
çç  
in
çç! #
nuevasCartas
çç$ 0
)
çç0 1
{
éé 
ventanaPartida
èè 
.
èè 
AniadirCarta
èè +
(
èè+ ,
carta
èè, 1
)
èè1 2
;
èè2 3
}
êê 
}
ëë 	
public
óó 
void
óó  
ObtenerTurnoActual
óó &
(
óó& '
string
óó' -
turnoActual
óó. 9
)
óó9 :
{
òò 	
Juego
ôô 
ventanaJuego
ôô 
=
ôô  
Application
ôô! ,
.
ôô, -
Current
ôô- 4
.
ôô4 5
Windows
ôô5 <
.
ôô< =
OfType
ôô= C
<
ôôC D
Juego
ôôD I
>
ôôI J
(
ôôJ K
)
ôôK L
.
ôôL M
SingleOrDefault
ôôM \
(
ôô\ ]
)
ôô] ^
;
ôô^ _
Paginas
öö 
.
öö 
Partida
öö 
ventanaPartida
öö *
=
öö+ ,
ventanaJuego
öö- 9
.
öö9 :
PaginaActual
öö: F
as
ööG I
Paginas
ööJ Q
.
ööQ R
Partida
ööR Y
;
ööY Z
ventanaPartida
úú 
.
úú &
EstablecerJugadorEnTurno
úú 3
(
úú3 4
turnoActual
úú4 ?
)
úú? @
;
úú@ A
}
ùù 	
}
ûû 
}üü ∑%
2D:\Juego-UNO\UNOGui\Logica\RegistroJugadorAdmin.cs
	namespace 	
UNOGui
 
. 
Logica 
{ 
public 

static 
class  
RegistroJugadorAdmin ,
{ 
private 
static 
readonly 
InstanceContext  /
contexto0 8
=9 :
new; >
InstanceContext? N
(N O
newO R#
RegistroJugadorCallbackS j
(j k
)k l
)l m
;m n
private 
static 
readonly "
RegistrarJugadorClient  6
servidor7 ?
=@ A
newB E"
RegistrarJugadorClientF \
(\ ]
contexto] e
)e f
;f g
public 
static 
void !
RegistrarNuevoJugador 0
(0 1
Jugador1 8
nuevoJugador9 E
)E F
{ 	
try 
{ 
servidor 
. 
RegistrarJugador )
() *
nuevoJugador* 6
)6 7
;7 8
} 
catch 
( %
EndpointNotFoundException ,
ex- /
)/ 0
{ 
LoggerAdmin 
. 
EscribirLog '
(' (
$str( /
,/ 0
ex1 3
)3 4
;4 5
throw 
; 
} 
catch 
( 
TimeoutException #
ex$ &
)& '
{   
LoggerAdmin!! 
.!! 
EscribirLog!! '
(!!' (
$str!!( /
,!!/ 0
ex!!1 3
)!!3 4
;!!4 5
throw"" 
;"" 
}## 
}$$ 	
public** 
static** 
void** #
VerificarClaveIngresada** 2
(**2 3
string**3 9
clave**: ?
)**? @
{++ 	
try,, 
{-- 
servidor.. 
... 
VerificarClave.. '
(..' (
clave..( -
)..- .
;... /
}// 
catch00 
(00 %
EndpointNotFoundException00 ,
ex00- /
)00/ 0
{11 
LoggerAdmin22 
.22 
EscribirLog22 '
(22' (
$str22( /
,22/ 0
ex221 3
)223 4
;224 5
throw33 
;33 
}44 
catch55 
(55 
TimeoutException55 #
ex55$ &
)55& '
{66 
LoggerAdmin77 
.77 
EscribirLog77 '
(77' (
$str77( /
,77/ 0
ex771 3
)773 4
;774 5
throw88 
;88 
}99 
}:: 	
public?? 
static?? 
void?? $
CancelarRegistrarJugador?? 3
(??3 4
)??4 5
{@@ 	
tryAA 
{BB 
servidorCC 
.CC 
CancelarRegistroCC )
(CC) *
)CC* +
;CC+ ,
}DD 
catchEE 
(EE %
EndpointNotFoundExceptionEE ,
exEE- /
)EE/ 0
{FF 
LoggerAdminGG 
.GG 
EscribirLogGG '
(GG' (
$strGG( /
,GG/ 0
exGG1 3
)GG3 4
;GG4 5
throwHH 
;HH 
}II 
catchJJ 
(JJ 
TimeoutExceptionJJ #
exJJ$ &
)JJ& '
{KK 
LoggerAdminLL 
.LL 
EscribirLogLL '
(LL' (
$strLL( /
,LL/ 0
exLL1 3
)LL3 4
;LL4 5
throwMM 
;MM 
}NN 
}OO 	
publicTT 
staticTT 
voidTT 
EnviarClaveTT &
(TT& '
)TT' (
{UU 	
tryVV 
{WW 
servidorXX 
.XX 
EnviarClaveDeNuevoXX +
(XX+ ,
)XX, -
;XX- .
}YY 
catchZZ 
(ZZ %
EndpointNotFoundExceptionZZ ,
exZZ- /
)ZZ/ 0
{[[ 
LoggerAdmin\\ 
.\\ 
EscribirLog\\ '
(\\' (
$str\\( /
,\\/ 0
ex\\1 3
)\\3 4
;\\4 5
throw]] 
;]] 
}^^ 
catch__ 
(__ 
TimeoutException__ #
ex__$ &
)__& '
{`` 
LoggerAdminaa 
.aa 
EscribirLogaa '
(aa' (
$straa( /
,aa/ 0
exaa1 3
)aa3 4
;aa4 5
throwbb 
;bb 
}cc 
}dd 	
}ee 
}ff «.
5D:\Juego-UNO\UNOGui\Logica\RegistroJugadorCallback.cs
	namespace 	
UNOGui
 
. 
Logica 
{ 
public 

class #
RegistroJugadorCallback (
:) *%
IRegistrarJugadorCallback+ D
{ 
private 
readonly 
	Principal "
ventanaPrincipal# 3
=4 5
Application6 A
.A B
CurrentB I
.I J
WindowsJ Q
.Q R
OfTypeR X
<X Y
	PrincipalY b
>b c
(c d
)d e
.e f
SingleOrDefaultf u
(u v
)v w
;w x
public 
void (
NotificarCancelacionRegistro 0
(0 1
)1 2
{ 	
ventanaPrincipal 
. 
Navigate %
(% &
new& )
Login* /
(/ 0
)0 1
)1 2
;2 3
} 	
public 
void !
NotificarEnvioDeClave )
() *
)* +
{ 	
new 
Mensaje 
{ 
Title 
= 

Properties "
." #
	Resources# ,
., -,
 RegistroEnEspera_ClaveValidacion- M
,M N
TituloMensaje   
=   

Properties    *
.  * +
	Resources  + 4
.  4 5,
 Registro_NuevaClaveTituloMensaje  5 U
,  U V
	Contenido!! 
=!! 

Properties!! &
.!!& '
	Resources!!' 0
.!!0 1&
Registro_NuevaClaveMensaje!!1 K
}"" 
."" 

ShowDialog"" 
("" 
)"" 
;"" 
($$ 
ventanaPrincipal$$ 
.$$ 
Content$$ %
as$$& (
RegistroEnEspera$$) 9
)$$9 :
.$$: ;
IniciarTemporizador$$; N
($$N O
)$$O P
;$$P Q
}%% 	
public++ 
void++ 
NotificarRegistro++ %
(++% &
ResultadoRegistro++& 7
	resultado++8 A
)++A B
{,, 	
if-- 
(-- 
	resultado-- 
==-- 
ResultadoRegistro-- .
.--. /
UsuarioYaExiste--/ >
)--> ?
{.. 
new// 
Mensaje// 
{00 
TituloMensaje11 !
=11" #

Properties11$ .
.11. /
	Resources11/ 8
.118 9)
Registro_NicknameExisteTitulo119 V
,11V W
	Contenido22 
=22 

Properties22  *
.22* +
	Resources22+ 4
.224 5*
Registro_NicknameExisteMensaje225 S
}33 
.33 

ShowDialog33 
(33 
)33 
;33 
}44 
else55 
if55 
(55 
	resultado55 
==55 !
ResultadoRegistro55" 3
.553 4
CorreoYaExiste554 B
)55B C
{66 
new77 
Mensaje77 
{88 
TituloMensaje99 !
=99" #

Properties99$ .
.99. /
	Resources99/ 8
.998 9'
Registro_CorreoExisteTitulo999 T
,99T U
	Contenido:: 
=:: 

Properties::  *
.::* +
	Resources::+ 4
.::4 5(
Registro_CorreoExisteMensaje::5 Q
};; 
.;; 

ShowDialog;; 
(;; 
);; 
;;; 
}<< 
else== 
if== 
(== 
	resultado== 
==== !
ResultadoRegistro==" 3
.==3 4
RegistroExitoso==4 C
)==C D
{>> 
ventanaPrincipal??  
.??  !
Navigate??! )
(??) *
new??* -
RegistroEnEspera??. >
(??> ?
)??? @
)??@ A
;??A B
}@@ 
}AA 	
publicGG 
voidGG #
NotificarResultadoClaveGG +
(GG+ ,
boolGG, 0
claveValidaGG1 <
)GG< =
{HH 	
MensajeII 
ventanaMensajeII "
=II# $
newII% (
MensajeII) 0
(II0 1
)II1 2
;II2 3
ifKK 
(KK 
claveValidaKK 
)KK 
{LL 
ventanaMensajeMM 
.MM 
TitleMM $
=MM% &

PropertiesMM' 1
.MM1 2
	ResourcesMM2 ;
.MM; < 
Registro_ExitoTituloMM< P
;MMP Q
ventanaMensajeNN 
.NN 
TituloMensajeNN ,
=NN- .

PropertiesNN/ 9
.NN9 :
	ResourcesNN: C
.NNC D 
Registro_ExitoTituloNND X
;NNX Y
ventanaMensajeOO 
.OO 
	ContenidoOO (
=OO) *

PropertiesOO+ 5
.OO5 6
	ResourcesOO6 ?
.OO? @!
Registro_ExitoMensajeOO@ U
;OOU V
ventanaMensajePP 
.PP 

ShowDialogPP )
(PP) *
)PP* +
;PP+ ,
ventanaPrincipalRR  
.RR  !
NavigateRR! )
(RR) *
newRR* -
LoginRR. 3
(RR3 4
)RR4 5
)RR5 6
;RR6 7
}SS 
elseTT 
{UU 
ventanaMensajeVV 
.VV 
TituloMensajeVV ,
=VV- .

PropertiesVV/ 9
.VV9 :
	ResourcesVV: C
.VVC D(
Registro_ClaveInvalidaTituloVVD `
;VV` a
ventanaMensajeWW 
.WW 
	ContenidoWW (
=WW) *

PropertiesWW+ 5
.WW5 6
	ResourcesWW6 ?
.WW? @)
Registro_ClaveInvalidaMensajeWW@ ]
;WW] ^
ventanaMensajeXX 
.XX 

ShowDialogXX )
(XX) *
)XX* +
;XX+ ,
}YY 
}ZZ 	
}[[ 
}\\ Ê
$D:\Juego-UNO\UNOGui\Logica\Reglas.cs
	namespace 	
UNOGui
 
. 
Logica 
{ 
public		 

static		 
class		 
Reglas		 
{

 
public 
static 
bool 
EsCartaValida (
(( )
Carta) .
cartaDeMano/ :
,: ;
Carta< A
cartaEnTableroB P
)P Q
{ 	
bool 
esValida 
= 
false !
;! "
if 
( 
cartaEnTablero 
.  
Colork__BackingField 3
==4 6
ColoresCartas7 D
.D E
NegroE J
)J K
{ 
esValida 
= 
true 
;  
} 
else 
if 
( 
cartaDeMano  
.  ! 
Colork__BackingField! 5
==6 8
ColoresCartas9 F
.F G
NegroG L
)L M
{ 
esValida 
= 
true 
;  
} 
else 
if 
( 
cartaDeMano  
.  ! 
Colork__BackingField! 5
==6 8
cartaEnTablero9 G
.G H 
Colork__BackingFieldH \
)\ ]
{ 
esValida 
= 
true 
;  
}   
else!! 
if!! 
(!! 
(!! 
cartaDeMano!! !
.!!! "!
Numerok__BackingField!!" 7
==!!8 :
cartaEnTablero!!; I
.!!I J!
Numerok__BackingField!!J _
)!!_ `
&&!!a c
(!!d e
cartaDeMano!!e p
.!!p q"
Efectok__BackingField	!!q Ü
==
!!á â
EfectosCarta
!!ä ñ
.
!!ñ ó
	SinEfecto
!!ó †
)
!!† °
)
!!° ¢
{"" 
esValida## 
=## 
true## 
;##  
}$$ 
return&& 
esValida&& 
;&& 
}'' 	
public.. 
static.. 
bool.. 
ElJugadorGano.. (
(..( )
List..) -
<..- .
Carta... 3
>..3 4
mazoJugador..5 @
)..@ A
{// 	
return00 
mazoJugador00 
.00 
Count00 $
==00% '
$num00( )
;00) *
}11 	
}22 
}33 ¸
5D:\Juego-UNO\UNOGui\Paginas\ContenedorJugador.xaml.cs
	namespace 	
UNOGui
 
. 
Paginas 
{ 
public 

partial 
class 
ContenedorJugador *
:+ ,
UserControl- 8
{		 
public

 
ContenedorJugador

  
(

  !
)

! "
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ¯&
2D:\Juego-UNO\UNOGui\Paginas\CreacionDeSala.xaml.cs
	namespace		 	
UNOGui		
 
.		 
Paginas		 
{

 
public 

partial 
class 
CreacionDeSala '
:( )
Page* .
{ 
private 
readonly 
List 
< 
int !
>! "
	jugadores# ,
;, -
public 
CreacionDeSala 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
	jugadores 
= 
new 
List  
<  !
int! $
>$ %
{ 
$num 
, 
$num 
, 
$num 
, 
$num 
} 
; 
numeroDeJugadores 
. 
ItemsSource )
=* +
	jugadores, 5
;5 6
} 	
private 
void 
	CrearSala 
( 
object %
sender& ,
,, -
RoutedEventArgs. =
e> ?
)? @
{ 	
if 
( 
CamposCompletos 
(  
)  !
)! "
{   
var!! 
jugador!! 
=!! 
Window!! $
.!!$ %
	GetWindow!!% .
(!!. /
this!!/ 3
)!!3 4
.!!4 5
DataContext!!5 @
as!!A C
Jugador!!D K
;!!K L
Sala## 
	nuevaSala## 
=##  
new##! $
Sala##% )
{$$ 
Contrase√±a%% 
=%%  
contrasenia%%! ,
.%%, -
Password%%- 5
,%%5 6"
NumeroTotalDeJugadores&& *
=&&+ ,
ObtenerJugadores&&- =
(&&= >
)&&> ?
,&&? @
	CreadaPor'' 
='' 
jugador''  '
.''' (
Nickname''( 0
,''0 1
JugadoresEnSala(( #
=(($ %
new((& )

Dictionary((* 4
<((4 5
Jugador((5 <
,((< =
object((> D
>((D E
(((E F
)((F G
})) 
;)) 
try++ 
{,, 
	SalaAdmin-- 
.-- 
	CrearSala-- '
(--' (
	nuevaSala--( 1
,--1 2
jugador--3 :
)--: ;
;--; <
}.. 
catch// 
(// %
EndpointNotFoundException// 0
)//0 1
{00 
new11 
Mensaje11 
{22 
TituloMensaje33 %
=33& '

Properties33( 2
.332 3
	Resources333 <
.33< =)
ErrorServidor_TituloContenido33= Z
,33Z [
	Contenido44 !
=44" #

Properties44$ .
.44. /
	Resources44/ 8
.448 9*
ErrorServidor_MensajeContenido449 W
}55 
.55 

ShowDialog55  
(55  !
)55! "
;55" #
}66 
LimpiarCampos88 
(88 
)88 
;88  
}99 
else:: 
{;; 
new<< 
Mensaje<< 
{== 
TituloMensaje>> !
=>>" #

Properties>>$ .
.>>. /
	Resources>>/ 8
.>>8 9#
CamposIncompletosTitulo>>9 P
,>>P Q
	Contenido?? 
=?? 

Properties??  *
.??* +
	Resources??+ 4
.??4 5.
"CrearSala_CamposIncompletosMensaje??5 W
}@@ 
.@@ 

ShowDialog@@ 
(@@ 
)@@ 
;@@ 
}AA 
}BB 	
privateDD 
intDD 
ObtenerJugadoresDD $
(DD$ %
)DD% &
{EE 	
intFF 
numeroJugadoresFF 
=FF  !
(FF" #
intFF# &
)FF& '
numeroDeJugadoresFF' 8
.FF8 9
SelectedValueFF9 F
;FFF G
returnHH 
numeroJugadoresHH "
;HH" #
}II 	
privateKK 
boolKK 
CamposCompletosKK $
(KK$ %
)KK% &
{LL 	
returnMM 
(MM 
contraseniaMM 
.MM  
PasswordMM  (
.MM( )
TrimMM) -
(MM- .
)MM. /
!=MM0 2
$strMM3 5
&&MM6 8
numeroDeJugadoresMM9 J
.MMJ K
SelectedItemMMK W
!=MMX Z
nullMM[ _
)MM_ `
;MM` a
}NN 	
privatePP 
voidPP 
LimpiarCamposPP "
(PP" #
)PP# $
{QQ 	
contraseniaRR 
.RR 
PasswordRR  
=RR! "
$strRR# %
;RR% &
numeroDeJugadoresSS 
.SS 
SelectedItemSS *
=SS+ ,
nullSS- 1
;SS1 2
}TT 	
}UU 
}VV ˙
*D:\Juego-UNO\UNOGui\Paginas\Inicio.xaml.cs
	namespace 	
UNOGui
 
. 
Paginas 
{ 
public 

partial 
class 
Inicio 
:  !
Page" &
{ 
public 
Inicio 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
public 

class 
IndexConverter 
:  !
IValueConverter" 1
{ 
public 
object 
Convert 
( 
object $
value% *
,* +
Type, 0

targetType1 ;
,; <
object= C
	parameterD M
,M N
CultureInfoO Z
culture[ b
)b c
{ 	
var 
item 
= 
( 
ListViewItem $
)$ %
value% *
;* +
var 
listView 
= 
ItemsControl '
.' ()
ItemsControlFromItemContainer( E
(E F
itemF J
)J K
asL N
ListViewO W
;W X
int 
index 
= 
listView  
.  !"
ItemContainerGenerator! 7
.7 8
IndexFromContainer8 J
(J K
itemK O
)O P
+Q R
$numS T
;T U
return 
index 
. 
ToString !
(! "
)" #
;# $
} 	
public   
object   
ConvertBack   !
(  ! "
object  " (
value  ) .
,  . /
Type  0 4

targetType  5 ?
,  ? @
object  A G
	parameter  H Q
,  Q R
CultureInfo  S ^
culture  _ f
)  f g
{!! 	
throw"" 
new"" #
NotImplementedException"" -
(""- .
)"". /
;""/ 0
}## 	
}$$ 
}%% Ÿ!
)D:\Juego-UNO\UNOGui\Paginas\Lobby.xaml.cs
	namespace

 	
UNOGui


 
.

 
Paginas

 
{ 
public 

partial 
class 
Lobby 
:  
Page! %
{ 
public  
ObservableCollection #
<# $
Jugador$ +
>+ ,
	Jugadores- 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
Lobby 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
public 
void "
ConfigurarSalaParaHost *
(* +
)+ ,
{ 	
mensajeParaInvitado   
.    

Visibility    *
=  + ,

Visibility  - 7
.  7 8
	Collapsed  8 A
;  A B
mensajeParaHost!! 
.!! 

Visibility!! &
=!!' (

Visibility!!) 3
.!!3 4
Visible!!4 ;
;!!; <
iniciarPartidaBoton"" 
.""  

Visibility""  *
=""+ ,

Visibility""- 7
.""7 8
Visible""8 ?
;""? @
}## 	
private%% 
void%% 
IniciarPartida%% #
(%%# $
object%%$ *
sender%%+ 1
,%%1 2
RoutedEventArgs%%3 B
e%%C D
)%%D E
{&& 	
if'' 
(''  
HayMinimoDeJugadores'' $
(''$ %
)''% &
)''& '
{(( 
string)) 
idSala)) 
=)) 
idSalaActual))  ,
.)), -
Text))- 1
;))1 2
try++ 
{,, 
PartidaAdmin--  
.--  !
IniciarPartida--! /
(--/ 0
idSala--0 6
)--6 7
;--7 8
}.. 
catch// 
(// %
EndpointNotFoundException// 0
)//0 1
{00 
new11 
Mensaje11 
{22 
}44 
.44 

ShowDialog44  
(44  !
)44! "
;44" #
}55 
}66 
else77 
{88 
new99 
Mensaje99 
{:: 
TituloMensaje;; !
=;;" #
$str;;$ 5
,;;5 6
	Contenido<< 
=<< 
$str	<<  ç
}== 
.== 

ShowDialog== 
(== 
)== 
;== 
}>> 
}?? 	
privateAA 
voidAA 
SalirDeSalaAA  
(AA  !
objectAA! '
senderAA( .
,AA. /
RoutedEventArgsAA0 ?
eAA@ A
)AAA B
{BB 	
stringCC 
idSalaCC 
=CC 
idSalaActualCC (
.CC( )
TextCC) -
;CC- .
MenuPrincipalDD 
menuPrincipalDD '
=DD( )
ApplicationDD* 5
.DD5 6
CurrentDD6 =
.DD= >
WindowsDD> E
.DDE F
OfTypeDDF L
<DDL M
MenuPrincipalDDM Z
>DDZ [
(DD[ \
)DD\ ]
.DD] ^
SingleOrDefaultDD^ m
(DDm n
)DDn o
;DDo p
varEE 
jugadorEE 
=EE 
menuPrincipalEE '
.EE' (
DataContextEE( 3
asEE4 6
JugadorEE7 >
;EE> ?
	SalaAdminGG 
.GG 
SalirDeSalaGG !
(GG! "
idSalaGG" (
,GG( )
jugadorGG* 1
.GG1 2
NicknameGG2 :
)GG: ;
;GG; <
}HH 	
privateJJ 
boolJJ  
HayMinimoDeJugadoresJJ )
(JJ) *
)JJ* +
{KK 	
boolLL 
	hayMinimoLL 
=LL 
falseLL "
;LL" #
intMM 
minimoDeJugadoresMM !
=MM" #
$numMM$ %
;MM% &
ifOO 
(OO 
	JugadoresOO 
.OO 
CountOO 
>=OO  "
minimoDeJugadoresOO# 4
)OO4 5
{PP 
	hayMinimoQQ 
=QQ 
trueQQ  
;QQ  !
}RR 
returnTT 
	hayMinimoTT 
;TT 
}UU 	
}VV 
}WW è"
)D:\Juego-UNO\UNOGui\Paginas\Login.xaml.cs
	namespace 	
UNOGui
 
. 
Paginas 
{		 
public 

partial 
class 
Login 
:  
Page! %
{ 
public 
string 
JugadorNickname %
{ 	
get 
{ 
return 
usuarioTextbox %
.% &
Text& *
;* +
} 
} 	
public 
Login 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
IrARegistrarCuenta '
(' (
object( .
sender/ 5
,5 6
RoutedEventArgs7 F
eG H
)H I
{   	
NavigationService!! 
.!! 
Navigate!! &
(!!& '
new!!' *
RegistrarCuenta!!+ :
(!!: ;
)!!; <
)!!< =
;!!= >
}"" 	
private$$ 
void$$ 
IrAVerificarCodigo$$ '
($$' (
object$$( .
sender$$/ 5
,$$5 6
RoutedEventArgs$$7 F
e$$G H
)$$H I
{%% 	
NavigationService&& 
.&& 
Navigate&& &
(&&& '
new&&' *
VerificarCodigo&&+ :
(&&: ;
)&&; <
)&&< =
;&&= >
}'' 	
private)) 
void)) 
IniciarSesionBoton)) '
())' (
object))( .
sender))/ 5
,))5 6
RoutedEventArgs))7 F
e))G H
)))H I
{** 	
if++ 
(++ 
CamposCompletos++ 
(++  
)++  !
)++! "
{,, 
string-- 
nickname-- 
=--  !
usuarioTextbox--" 0
.--0 1
Text--1 5
.--5 6
Trim--6 :
(--: ;
)--; <
;--< =
string.. 
contrase√±a.. !
=.." #
contrase√±aTextbox..$ 5
...5 6
Password..6 >
...> ?
Trim..? C
(..C D
)..D E
;..E F
try00 
{11 

LoginAdmin22 
.22 
IniciarSesion22 ,
(22, -
nickname22- 5
,225 6
contrase√±a227 A
)22A B
;22B C
}33 
catch44 
(44 %
EndpointNotFoundException44 0
)440 1
{55 
new66 
Mensaje66 
{77 
TituloMensaje88 %
=88& '

Properties88( 2
.882 3
	Resources883 <
.88< =)
ErrorServidor_TituloContenido88= Z
,88Z [
	Contenido99 !
=99" #

Properties99$ .
.99. /
	Resources99/ 8
.998 9*
ErrorServidor_MensajeContenido999 W
}:: 
.:: 

ShowDialog::  
(::  !
)::! "
;::" #
};; 
}<< 
else== 
{>> 
new?? 
Mensaje?? 
{@@ 
TitleAA 
=AA 

PropertiesAA &
.AA& '
	ResourcesAA' 0
.AA0 1%
Login_MensajeCamposTituloAA1 J
,AAJ K
TituloMensajeBB !
=BB" #

PropertiesBB$ .
.BB. /
	ResourcesBB/ 8
.BB8 9%
Login_MensajeCamposTituloBB9 R
,BBR S
	ContenidoCC 
=CC 

PropertiesCC  *
.CC* +
	ResourcesCC+ 4
.CC4 5(
Login_MensajeCamposContenidoCC5 Q
}DD 
.DD 

ShowDialogDD 
(DD 
)DD 
;DD 
}EE 
}FF 	
privateHH 
boolHH 
CamposCompletosHH $
(HH$ %
)HH% &
{II 	
returnJJ 
(JJ 
usuarioTextboxJJ "
.JJ" #
TextJJ# '
.JJ' (
TrimJJ( ,
(JJ, -
)JJ- .
!=JJ/ 1
$strJJ2 4
&&JJ5 7
contrase√±aTextboxJJ8 I
.JJI J
PasswordJJJ R
.JJR S
TrimJJS W
(JJW X
)JJX Y
!=JJZ \
$strJJ] _
)JJ_ `
;JJ` a
}KK 	
}LL 
}MM ˚1
,D:\Juego-UNO\UNOGui\Paginas\MiPerfil.xaml.cs
	namespace 	
UNOGui
 
. 
Paginas 
{		 
public 

partial 
class 
MiPerfil !
:" #
Page$ (
{ 
private 
readonly 
List 
< 
Idioma $
>$ %
idiomas& -
;- .
private 
bool 
cambioIdioma !
=" #
false$ )
;) *
private 
Idioma 
idiomaSeleccionado )
;) *
private 
string $
nomenclaturaIdiomaActual /
;/ 0
public 
MiPerfil 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
idiomas 
= 
new 
List 
< 
Idioma %
>% &
(& '
)' (
{ 
new 
Idioma 
{ 
Nombre 
= 

Properties '
.' (
	Resources( 1
.1 2
Idioma_Espa√±ol2 @
,@ A
Nomenclatura  
=! "
$str# *
} 
, 
new   
Idioma   
{!! 
Nombre"" 
="" 

Properties"" '
.""' (
	Resources""( 1
.""1 2
Idioma_Ingles""2 ?
,""? @
Nomenclatura##  
=##! "
$str### '
}$$ 
}%% 
;%% 
idiomaCombobox'' 
.'' 
ItemsSource'' &
=''' (
idiomas'') 0
;''0 1
ObtenerIdiomaActual(( 
(((  
)((  !
;((! "
})) 	
private++ 
void++ 
ObtenerIdiomaActual++ (
(++( )
)++) *
{,, 	$
nomenclaturaIdiomaActual-- $
=--% &

Properties--' 1
.--1 2
Settings--2 :
.--: ;
Default--; B
.--B C
Idioma--C I
;--I J
int.. 
idiomaEspa√±olIndex.. "
=..# $
$num..% &
;..& '
int// 
idiomaInglesIndex// !
=//" #
$num//$ %
;//% &
switch11 
(11 $
nomenclaturaIdiomaActual11 ,
)11, -
{22 
case33 
$str33 
:33 
idiomaCombobox44 "
.44" #
SelectedIndex44# 0
=441 2
idiomaEspa√±olIndex443 E
;44E F
break55 
;55 
case66 
$str66 
:66 
idiomaCombobox77 "
.77" #
SelectedIndex77# 0
=771 2
idiomaInglesIndex773 D
;77D E
break88 
;88 
}99 
}:: 	
private<< 
void<< 
GuardarCambios<< #
(<<# $
object<<$ *
sender<<+ 1
,<<1 2
RoutedEventArgs<<3 B
e<<C D
)<<D E
{== 	
if>> 
(>> 
cambioIdioma>> 
)>> 
{?? 
CambiarIdioma@@ 
(@@ 
)@@ 
;@@  
newAA 
MensajeAA 
{BB 
TituloMensajeCC !
=CC" #

PropertiesCC$ .
.CC. /
	ResourcesCC/ 8
.CC8 9&
Mensaje_CambioIdiomaTituloCC9 S
,CCS T
	ContenidoDD 
=DD 

PropertiesDD  *
.DD* +
	ResourcesDD+ 4
.DD4 5'
Mensaje_CambioIdiomaMensajeDD5 P
,DDP Q
TitleEE 
=EE 

PropertiesEE &
.EE& '
	ResourcesEE' 0
.EE0 1&
Mensaje_CambioIdiomaTituloEE1 K
}FF 
.FF 

ShowDialogFF 
(FF 
)FF 
;FF 

AbrirLoginHH 
(HH 
)HH 
;HH 
}II 
}JJ 	
privateLL 
voidLL 

AbrirLoginLL 
(LL  
)LL  !
{MM 	
	PrincipalNN 
loginNN 
=NN 
newNN !
	PrincipalNN" +
(NN+ ,
)NN, -
;NN- .
loginOO 
.OO 
ShowOO 
(OO 
)OO 
;OO 
WindowPP 
.PP 
	GetWindowPP 
(PP 
thisPP !
)PP! "
.PP" #
ClosePP# (
(PP( )
)PP) *
;PP* +
}QQ 	
privateSS 
voidSS 
CambiarIdiomaSS "
(SS" #
)SS# $
{TT 	

PropertiesUU 
.UU 
SettingsUU 
.UU  
DefaultUU  '
.UU' (
IdiomaUU( .
=UU/ 0
idiomaSeleccionadoUU1 C
.UUC D
NomenclaturaUUD P
;UUP Q

PropertiesVV 
.VV 
SettingsVV 
.VV  
DefaultVV  '
.VV' (
SaveVV( ,
(VV, -
)VV- .
;VV. /
ThreadWW 
.WW 
CurrentThreadWW  
.WW  !
CurrentUICultureWW! 1
=WW2 3
newWW4 7
SystemWW8 >
.WW> ?
GlobalizationWW? L
.WWL M
CultureInfoWWM X
(WWX Y
idiomaSeleccionadoWWY k
.WWk l
NomenclaturaWWl x
)WWx y
;WWy z
}XX 	
privateZZ 
voidZZ 
VerificarSeleccionZZ '
(ZZ' (
objectZZ( .
senderZZ/ 5
,ZZ5 6%
SelectionChangedEventArgsZZ7 P
eZZQ R
)ZZR S
{[[ 	
idiomaSeleccionado\\ 
=\\  
idiomaCombobox\\! /
.\\/ 0
SelectedItem\\0 <
as\\= ?
Idioma\\@ F
;\\F G
if^^ 
(^^ 
!^^ 
idiomaSeleccionado^^ #
.^^# $
Nomenclatura^^$ 0
.^^0 1
Equals^^1 7
(^^7 8$
nomenclaturaIdiomaActual^^8 P
)^^P Q
)^^Q R
{__ 
cambioIdioma`` 
=`` 
true`` #
;``# $
}aa 
elsebb 
{cc 
cambioIdiomadd 
=dd 
falsedd $
;dd$ %
}ee 
}ff 	
}gg 
}hh à∑
+D:\Juego-UNO\UNOGui\Paginas\Partida.xaml.cs
	namespace 	
UNOGui
 
. 
Paginas 
{ 
public 

partial 
class 
Partida  
:! "
Page# '
{ 
private 
readonly 
List 
< 
Carta #
># $
miMazo% +
=, -
new. 1
List2 6
<6 7
Carta7 <
>< =
(= >
)> ?
;? @
private 
List 
< 
ContenedorJugador &
>& '
contenedoresJugador( ;
;; <
private 
int 
espacioEntreCartas &
=' (
$num) *
;* +
private 
Carta 
cartaEnTablero $
;$ %
private 
readonly 
String 
miSala  &
;& '
public 
Partida 
( 
String 
sala "
)" #
{ 	
miSala 
= 
sala 
; 
InitializeComponent 
(  
)  !
;! "
} 	
public## 
void## 
EntregarCartas## "
(##" #
List### '
<##' (
Carta##( -
>##- .
cartasDeMano##/ ;
)##; <
{$$ 	
miMazo%% 
.%% 
AddRange%% 
(%% 
cartasDeMano%% (
)%%( )
;%%) *
MostrarMano&& 
(&& 
)&& 
;&& 
}'' 	
private)) 
void)) 
MostrarMano))  
())  !
)))! "
{** 	
if++ 
(++ 
!++ 
Reglas++ 
.++ 
ElJugadorGano++ %
(++% &
miMazo++& ,
)++, -
)++- .
{,, 
manoJugador-- 
.-- 
Children-- $
.--$ %
Clear--% *
(--* +
)--+ ,
;--, -
espacioEntreCartas.. "
=..# $
$num..% &
;..& '
foreach00 
(00 
Carta00 
carta00 $
in00% '
miMazo00( .
)00. /
{11 
RenderizarImagen22 $
(22$ %
carta22% *
)22* +
;22+ ,
}33 
}44 
else55 
{66 
Jugador77 
juadorGanador77 %
=77& '
new77( +
Jugador77, 3
{88 
Nickname99 
=99 
ObtenerMiNickname99 0
(990 1
)991 2
,992 3
PuntajeTotal::  
=::! "
ObtenerMiPuntaje::# 3
(::3 4
)::4 5
};; 
;;; 
PartidaAdmin== 
.== 
AnunciarGanador== ,
(==, -
miSala==- 3
,==3 4
juadorGanador==5 B
)==B C
;==C D
}>> 
}?? 	
privateAA 
intAA 
ObtenerMiPuntajeAA $
(AA$ %
)AA% &
{BB 	
returnCC 
intCC 
.CC 
ParseCC 
(CC 
miPuntajeTextCC *
.CC* +
TextCC+ /
)CC/ 0
;CC0 1
}DD 	
privateFF 
voidFF 
RenderizarImagenFF %
(FF% &
CartaFF& +
cartaFF, 1
)FF1 2
{GG 	
ImageHH 
imagenHH 
=HH 
newHH 
ImageHH $
(HH$ %
)HH% &
;HH& '
BitmapImageJJ 
srcJJ 
=JJ 
newJJ !
BitmapImageJJ" -
(JJ- .
)JJ. /
;JJ/ 0
srcKK 
.KK 
	BeginInitKK 
(KK 
)KK 
;KK 
srcLL 
.LL 
	UriSourceLL 
=LL 
newLL 
UriLL  #
(LL# $
cartaLL$ )
.LL) *
Rutak__BackingFieldLL* =
,LL= >
UriKindLL? F
.LLF G
RelativeLLG O
)LLO P
;LLP Q
srcMM 
.MM 
EndInitMM 
(MM 
)MM 
;MM 
imagenOO 
.OO 
SourceOO 
=OO 
srcOO 
;OO  
imagenQQ 
.QQ 
StretchQQ 
=QQ 
StretchQQ $
.QQ$ %
UniformQQ% ,
;QQ, -
imagenRR 
.RR 
HeightRR 
=RR 
$numRR 
;RR  
imagenSS 
.SS 
VerticalAlignmentSS $
=SS% &
VerticalAlignmentSS' 8
.SS8 9
BottomSS9 ?
;SS? @
imagenTT 
.TT 
HorizontalAlignmentTT &
=TT' (
HorizontalAlignmentTT) <
.TT< =
LeftTT= A
;TTA B
imagenUU 
.UU 
MarginUU 
=UU 
newUU 
	ThicknessUU  )
(UU) *
espacioEntreCartasUU* <
,UU< =
$numUU> ?
,UU? @
$numUUA B
,UUB C
$numUUD E
)UUE F
;UUF G
imagenWW 
.WW 
MouseLeftButtonUpWW $
+=WW% '
(WW( )
sWW) *
,WW* +
evWW, .
)WW. /
=>WW0 2
{XX 
ifYY 
(YY 
	EsMiTurnoYY 
(YY 
)YY 
)YY  
{ZZ 
if[[ 
([[ 
Reglas[[ 
.[[ 
EsCartaValida[[ ,
([[, -
carta[[- 2
,[[2 3
cartaEnTablero[[4 B
)[[B C
)[[C D
{\\ 
PartidaAdmin]] $
.]]$ %
ColocarCarta]]% 1
(]]1 2
carta]]2 7
,]]7 8
miSala]]9 ?
)]]? @
;]]@ A
miMazo^^ 
.^^ 
Remove^^ %
(^^% &
carta^^& +
)^^+ ,
;^^, -
manoJugador__ #
.__# $
Children__$ ,
.__, -
Remove__- 3
(__3 4
imagen__4 :
)__: ;
;__; <
PartidaAdmin`` $
.``$ %$
ActualizarNumeroDeCartas``% =
(``= >
miSala``> D
,``D E
ObtenerMiNickname``F W
(``W X
)``X Y
,``Y Z
miMazo``[ a
.``a b
Count``b g
.``g h
ToString``h p
(``p q
)``q r
)``r s
;``s t
PartidaAdminaa $
.aa$ %
ActualizarPuntajeaa% 6
(aa6 7
miSalaaa7 =
,aa= >
ObtenerMiNicknameaa? P
(aaP Q
)aaQ R
,aaR S
cartaaaT Y
.aaY Z!
Numerok__BackingFieldaaZ o
)aao p
;aap q
ActualizarMiPuntajebb +
(bb+ ,
cartabb, 1
.bb1 2!
Numerok__BackingFieldbb2 G
)bbG H
;bbH I
MostrarManocc #
(cc# $
)cc$ %
;cc% &
}dd 
elseee 
{ff 
newgg 
Mensajegg #
{gg$ %
TituloMensajehh )
=hh* +
$strhh, @
,hh@ A
	Contenidoii %
=ii& '
$strii( Q
}jj 
.jj 

ShowDialogjj $
(jj$ %
)jj% &
;jj& '
}kk 
}ll 
elsemm 
{nn 
newoo 
Mensajeoo 
{pp 
TituloMensajeqq %
=qq& '
$strqq( =
,qq= >
	Contenidorr !
=rr" #
$strrr$ 5
}ss 
.ss 

ShowDialogss  
(ss  !
)ss! "
;ss" #
}tt 
}uu 
;uu 
Gridww 
.ww 
SetRowww 
(ww 
imagenww 
,ww 
$numww  !
)ww! "
;ww" #
Gridxx 
.xx 
	SetColumnxx 
(xx 
imagenxx !
,xx! "
$numxx# $
)xx$ %
;xx% &
manoJugadorzz 
.zz 
Childrenzz  
.zz  !
Addzz! $
(zz$ %
imagenzz% +
)zz+ ,
;zz, -
espacioEntreCartas|| 
+=|| !
$num||" $
;||$ %
}}} 	
private 
void 
ActualizarMiPuntaje (
(( )
int) ,
puntaje- 4
)4 5
{
ÄÄ 	
int
ÅÅ 
nuevoPuntaje
ÅÅ 
=
ÅÅ 
int
ÅÅ "
.
ÅÅ" #
Parse
ÅÅ# (
(
ÅÅ( )
miPuntajeText
ÅÅ) 6
.
ÅÅ6 7
Text
ÅÅ7 ;
)
ÅÅ; <
+
ÅÅ= >
puntaje
ÅÅ? F
;
ÅÅF G
miPuntajeText
ÉÉ 
.
ÉÉ 
Text
ÉÉ 
=
ÉÉ  
nuevoPuntaje
ÉÉ! -
.
ÉÉ- .
ToString
ÉÉ. 6
(
ÉÉ6 7
)
ÉÉ7 8
;
ÉÉ8 9
}
ÑÑ 	
public
ää 
void
ää $
ActualizarCartaCentral
ää *
(
ää* +
Carta
ää+ 0

nuevaCarta
ää1 ;
)
ää; <
{
ãã 	
cartaEnTablero
åå 
=
åå 

nuevaCarta
åå '
;
åå' (
BitmapImage
éé 
src
éé 
=
éé 
new
éé !
BitmapImage
éé" -
(
éé- .
)
éé. /
;
éé/ 0
src
èè 
.
èè 
	BeginInit
èè 
(
èè 
)
èè 
;
èè 
src
êê 
.
êê 
	UriSource
êê 
=
êê 
new
êê 
Uri
êê  #
(
êê# $

nuevaCarta
êê$ .
.
êê. /!
Rutak__BackingField
êê/ B
,
êêB C
UriKind
êêD K
.
êêK L
Relative
êêL T
)
êêT U
;
êêU V
src
ëë 
.
ëë 
EndInit
ëë 
(
ëë 
)
ëë 
;
ëë 
cartaCentral
íí 
.
íí 
Source
íí 
=
íí  !
src
íí" %
;
íí% &
}
ìì 	
public
ôô 
void
ôô 
AniadirCarta
ôô  
(
ôô  !
Carta
ôô! &

nuevaCarta
ôô' 1
)
ôô1 2
{
öö 	
miMazo
õõ 
.
õõ 
Add
õõ 
(
õõ 

nuevaCarta
õõ !
)
õõ! "
;
õõ" #
MostrarMano
úú 
(
úú 
)
úú 
;
úú 
PartidaAdmin
ùù 
.
ùù &
ActualizarNumeroDeCartas
ùù 1
(
ùù1 2
miSala
ùù2 8
,
ùù8 9
ObtenerMiNickname
ùù: K
(
ùùK L
)
ùùL M
,
ùùM N
miMazo
ùùO U
.
ùùU V
Count
ùùV [
.
ùù[ \
ToString
ùù\ d
(
ùùd e
)
ùùe f
)
ùùf g
;
ùùg h
}
ûû 	
public
§§ 
void
§§ #
MostrarMensajeGanador
§§ )
(
§§) *
String
§§* 0
ganador
§§1 8
)
§§8 9
{
•• 	
new
¶¶ 
Mensaje
¶¶ 
{
ßß 
Title
®® 
=
®® 

Properties
®® "
.
®®" #
	Resources
®®# ,
.
®®, -*
Partida_GanadorMensajeTitulo
®®- I
,
®®I J
TituloMensaje
©© 
=
©© 

Properties
©©  *
.
©©* +
	Resources
©©+ 4
.
©©4 5*
Partida_GanadorMensajeTitulo
©©5 Q
,
©©Q R
	Contenido
™™ 
=
™™ 
$"
™™ 
{
™™ 

Properties
™™ )
.
™™) *
	Resources
™™* 3
.
™™3 4-
Partida_GanadorMensajeContenido
™™4 S
}
™™S T
{
™™U V
ganador
™™V ]
}
™™] ^
"
™™^ _
}
´´ 
.
´´ 

ShowDialog
´´ 
(
´´ 
)
´´ 
;
´´ 
TerminarPartida
≠≠ 
(
≠≠ 
)
≠≠ 
;
≠≠ 
}
ÆÆ 	
private
∞∞ 
void
∞∞ 
TerminarPartida
∞∞ $
(
∞∞$ %
)
∞∞% &
{
±± 	
Juego
≤≤ 
ventanaJuego
≤≤ 
=
≤≤  
Application
≤≤! ,
.
≤≤, -
Current
≤≤- 4
.
≤≤4 5
Windows
≤≤5 <
.
≤≤< =
OfType
≤≤= C
<
≤≤C D
Juego
≤≤D I
>
≤≤I J
(
≤≤J K
)
≤≤K L
.
≤≤L M
SingleOrDefault
≤≤M \
(
≤≤\ ]
)
≤≤] ^
;
≤≤^ _
MenuPrincipal
≥≥ 
ventanaMenu
≥≥ %
=
≥≥& '
Application
≥≥( 3
.
≥≥3 4
Current
≥≥4 ;
.
≥≥; <
Windows
≥≥< C
.
≥≥C D
OfType
≥≥D J
<
≥≥J K
MenuPrincipal
≥≥K X
>
≥≥X Y
(
≥≥Y Z
)
≥≥Z [
.
≥≥[ \
SingleOrDefault
≥≥\ k
(
≥≥k l
)
≥≥l m
;
≥≥m n
ventanaJuego
¥¥ 
.
¥¥ 
Close
¥¥ 
(
¥¥ 
)
¥¥  
;
¥¥  !
ventanaMenu
µµ 
.
µµ 
Show
µµ 
(
µµ 
)
µµ 
;
µµ 
}
∂∂ 	
private
∏∏ 
void
∏∏ 

TomarCarta
∏∏ 
(
∏∏  
object
∏∏  &
sender
∏∏' -
,
∏∏- .
RoutedEventArgs
∏∏/ >
e
∏∏? @
)
∏∏@ A
{
ππ 	
String
∫∫ 

miNickname
∫∫ 
=
∫∫ 
ObtenerMiNickname
∫∫  1
(
∫∫1 2
)
∫∫2 3
;
∫∫3 4
PartidaAdmin
ºº 
.
ºº 

TomarCarta
ºº #
(
ºº# $
miSala
ºº$ *
,
ºº* +

miNickname
ºº, 6
)
ºº6 7
;
ºº7 8
}
ΩΩ 	
public
√√ 
void
√√ &
EstablecerJugadorEnTurno
√√ ,
(
√√, -
String
√√- 3
nickname
√√4 <
)
√√< =
{
ƒƒ 	
turnoActual
≈≈ 
.
≈≈ 
Text
≈≈ 
=
≈≈ 
nickname
≈≈ '
;
≈≈' (
}
∆∆ 	
private
»» 
bool
»» 
	EsMiTurno
»» 
(
»» 
)
»»  
{
…… 	
String
   

miNickname
   
=
   
ObtenerMiNickname
    1
(
  1 2
)
  2 3
;
  3 4
bool
ÀÀ 
	esMiTurno
ÀÀ 
=
ÀÀ 
false
ÀÀ "
;
ÀÀ" #
if
ÕÕ 
(
ÕÕ 
turnoActual
ÕÕ 
.
ÕÕ 
Text
ÕÕ  
.
ÕÕ  !
Equals
ÕÕ! '
(
ÕÕ' (

miNickname
ÕÕ( 2
)
ÕÕ2 3
)
ÕÕ3 4
{
ŒŒ 
	esMiTurno
œœ 
=
œœ 
true
œœ  
;
œœ  !
}
–– 
return
““ 
	esMiTurno
““ 
;
““ 
}
”” 	
public
ŸŸ 
void
ŸŸ 
PintarJungadores
ŸŸ $
(
ŸŸ$ %
Sala
ŸŸ% )
sala
ŸŸ* .
)
ŸŸ. /
{
⁄⁄ 	
List
€€ 
<
€€ 

StackPanel
€€ 
>
€€ 
paneles
€€ $
=
€€% &
new
€€' *
List
€€+ /
<
€€/ 0

StackPanel
€€0 :
>
€€: ;
{
‹‹ 
panel1
›› 
,
›› 
panel2
ﬁﬁ 
,
ﬁﬁ 
panel3
ﬂﬂ 
,
ﬂﬂ 
panel4
‡‡ 
}
·· 
;
·· !
contenedoresJugador
„„ 
=
„„  !
new
„„" %
List
„„& *
<
„„* +
ContenedorJugador
„„+ <
>
„„< =
(
„„= >
)
„„> ?
;
„„? @
String
ÂÂ 

miNickname
ÂÂ 
=
ÂÂ 
ObtenerMiNickname
ÂÂ  1
(
ÂÂ1 2
)
ÂÂ2 3
;
ÂÂ3 4
int
ÁÁ 
posicionJugador
ÁÁ 
=
ÁÁ  !
sala
ÁÁ" &
.
ÁÁ& '
JugadoresEnSala
ÁÁ' 6
.
ÁÁ6 7
Keys
ÁÁ7 ;
.
ÁÁ; <
ToList
ÁÁ< B
(
ÁÁB C
)
ÁÁC D
.
ÁÁD E
	FindIndex
ÁÁE N
(
ÁÁN O
jugador
ÁÁO V
=>
ÁÁW Y
jugador
ÁÁZ a
.
ÁÁa b
Nickname
ÁÁb j
.
ÁÁj k
Equals
ÁÁk q
(
ÁÁq r

miNickname
ÁÁr |
)
ÁÁ| }
)
ÁÁ} ~
;
ÁÁ~ 
for
ÈÈ 
(
ÈÈ 
int
ÈÈ 
i
ÈÈ 
=
ÈÈ 
$num
ÈÈ 
;
ÈÈ 
i
ÈÈ 
<
ÈÈ 
sala
ÈÈ  $
.
ÈÈ$ %
JugadoresEnSala
ÈÈ% 4
.
ÈÈ4 5
Count
ÈÈ5 :
;
ÈÈ: ;
i
ÈÈ< =
++
ÈÈ= ?
)
ÈÈ? @
{
ÍÍ 
if
ÎÎ 
(
ÎÎ 
i
ÎÎ 
!=
ÎÎ 
posicionJugador
ÎÎ (
)
ÎÎ( )
{
ÏÏ !
contenedoresJugador
ÌÌ '
.
ÌÌ' (
Add
ÌÌ( +
(
ÌÌ+ ,
new
ÌÌ, /
ContenedorJugador
ÌÌ0 A
(
ÌÌA B
)
ÌÌB C
{
ÌÌD E
DataContext
ÌÌF Q
=
ÌÌR S
sala
ÌÌT X
.
ÌÌX Y
JugadoresEnSala
ÌÌY h
.
ÌÌh i
Keys
ÌÌi m
.
ÌÌm n
	ElementAt
ÌÌn w
(
ÌÌw x
i
ÌÌx y
)
ÌÌy z
}
ÌÌ{ |
)
ÌÌ| }
;
ÌÌ} ~
}
ÓÓ 
}
ÔÔ 
for
ÒÒ 
(
ÒÒ 
int
ÒÒ 
i
ÒÒ 
=
ÒÒ 
$num
ÒÒ 
;
ÒÒ 
i
ÒÒ 
<
ÒÒ !
contenedoresJugador
ÒÒ  3
.
ÒÒ3 4
Count
ÒÒ4 9
;
ÒÒ9 :
i
ÒÒ; <
++
ÒÒ< >
)
ÒÒ> ?
{
ÚÚ 
paneles
ÛÛ 
.
ÛÛ 
	ElementAt
ÛÛ %
(
ÛÛ% &
i
ÛÛ& '
)
ÛÛ' (
.
ÛÛ( )
Children
ÛÛ) 1
.
ÛÛ1 2
Add
ÛÛ2 5
(
ÛÛ5 6!
contenedoresJugador
ÛÛ6 I
.
ÛÛI J
	ElementAt
ÛÛJ S
(
ÛÛS T
i
ÛÛT U
)
ÛÛU V
)
ÛÛV W
;
ÛÛW X
}
ÙÙ 
}
ıı 	
private
˜˜ 
String
˜˜ 
ObtenerMiNickname
˜˜ (
(
˜˜( )
)
˜˜) *
{
¯¯ 	
MenuPrincipal
˘˘ 
ventanaJuego
˘˘ &
=
˘˘' (
Application
˘˘) 4
.
˘˘4 5
Current
˘˘5 <
.
˘˘< =
Windows
˘˘= D
.
˘˘D E
OfType
˘˘E K
<
˘˘K L
MenuPrincipal
˘˘L Y
>
˘˘Y Z
(
˘˘Z [
)
˘˘[ \
.
˘˘\ ]
SingleOrDefault
˘˘] l
(
˘˘l m
)
˘˘m n
;
˘˘n o
Jugador
˙˙ 
jugadorActual
˙˙ !
=
˙˙" #
ventanaJuego
˙˙$ 0
.
˙˙0 1
DataContext
˙˙1 <
as
˙˙= ?
Jugador
˙˙@ G
;
˙˙G H
String
˚˚ 

miNickname
˚˚ 
=
˚˚ 
jugadorActual
˚˚  -
.
˚˚- .
Nickname
˚˚. 6
;
˚˚6 7
return
˝˝ 

miNickname
˝˝ 
;
˝˝ 
}
˛˛ 	
public
ÖÖ 
void
ÖÖ $
ActualizarNumeroCartas
ÖÖ *
(
ÖÖ* +
String
ÖÖ+ 1
nickname
ÖÖ2 :
,
ÖÖ: ;
String
ÖÖ< B
numeroDeCartas
ÖÖC Q
)
ÖÖQ R
{
ÜÜ 	
foreach
áá 
(
áá 
ContenedorJugador
áá &

contenedor
áá' 1
in
áá2 4!
contenedoresJugador
áá5 H
)
ááH I
{
àà 
Jugador
ââ 
jugador
ââ 
=
ââ  !

contenedor
ââ" ,
.
ââ, -
DataContext
ââ- 8
as
ââ9 ;
Jugador
ââ< C
;
ââC D
if
ãã 
(
ãã 
jugador
ãã 
.
ãã 
Nickname
ãã $
.
ãã$ %
Equals
ãã% +
(
ãã+ ,
nickname
ãã, 4
)
ãã4 5
)
ãã5 6
{
åå 

contenedor
çç 
.
çç 
numeroDeCartas
çç -
.
çç- .
Text
çç. 2
=
çç3 4
numeroDeCartas
çç5 C
;
ççC D
break
éé 
;
éé 
}
èè 
}
êê 
}
ëë 	
public
òò 
void
òò (
ActualizarPuntajeDeJugador
òò .
(
òò. /
String
òò/ 5
nickname
òò6 >
,
òò> ?
int
òò@ C
puntaje
òòD K
)
òòK L
{
ôô 	
foreach
öö 
(
öö 
ContenedorJugador
öö &

contenedor
öö' 1
in
öö2 4!
contenedoresJugador
öö5 H
)
ööH I
{
õõ 
Jugador
úú 
jugador
úú 
=
úú  !

contenedor
úú" ,
.
úú, -
DataContext
úú- 8
as
úú9 ;
Jugador
úú< C
;
úúC D
if
ûû 
(
ûû 
jugador
ûû 
.
ûû 
Nickname
ûû $
.
ûû$ %
Equals
ûû% +
(
ûû+ ,
nickname
ûû, 4
)
ûû4 5
)
ûû5 6
{
üü 
int
†† 
puntajeActual
†† %
=
††& '
int
††( +
.
††+ ,
Parse
††, 1
(
††1 2

contenedor
††2 <
.
††< =
puntaje
††= D
.
††D E
Text
††E I
)
††I J
;
††J K

contenedor
¢¢ 
.
¢¢ 
puntaje
¢¢ &
.
¢¢& '
Text
¢¢' +
=
¢¢, -
(
¢¢. /
puntajeActual
¢¢/ <
+
¢¢= >
puntaje
¢¢? F
)
¢¢F G
.
¢¢G H
ToString
¢¢H P
(
¢¢P Q
)
¢¢Q R
;
¢¢R S
break
££ 
;
££ 
}
§§ 
}
•• 
}
¶¶ 	
private
®® 
void
®® 
SalirDePartida
®® #
(
®®# $
object
®®$ *
sender
®®+ 1
,
®®1 2
RoutedEventArgs
®®3 B
e
®®C D
)
®®D E
{
©© 	
	SalaAdmin
™™ 
.
™™ 
SalirDeSala
™™ !
(
™™! "
miSala
™™" (
,
™™( )
ObtenerMiNickname
™™* ;
(
™™; <
)
™™< =
)
™™= >
;
™™> ?
}
´´ 	
public
±± 
void
±± 
SacarJugador
±±  
(
±±  !
string
±±! '
nickname
±±( 0
)
±±0 1
{
≤≤ 	
foreach
≥≥ 
(
≥≥ 
ContenedorJugador
≥≥ &

contenedor
≥≥' 1
in
≥≥2 4!
contenedoresJugador
≥≥5 H
)
≥≥H I
{
¥¥ 
Jugador
µµ 
jugador
µµ 
=
µµ  !

contenedor
µµ" ,
.
µµ, -
DataContext
µµ- 8
as
µµ9 ;
Jugador
µµ< C
;
µµC D
if
∑∑ 
(
∑∑ 
jugador
∑∑ 
.
∑∑ 
Nickname
∑∑ $
.
∑∑$ %
Equals
∑∑% +
(
∑∑+ ,
nickname
∑∑, 4
)
∑∑4 5
)
∑∑5 6
{
∏∏ 

contenedor
ππ 
.
ππ 

Visibility
ππ )
=
ππ* +

Visibility
ππ, 6
.
ππ6 7
	Collapsed
ππ7 @
;
ππ@ A!
contenedoresJugador
∫∫ '
.
∫∫' (
Remove
∫∫( .
(
∫∫. /

contenedor
∫∫/ 9
)
∫∫9 :
;
∫∫: ;
break
ªª 
;
ªª 
}
ºº 
}
ΩΩ 
}
ææ 	
}
øø 
}¿¿ ©7
3D:\Juego-UNO\UNOGui\Paginas\RegistrarCuenta.xaml.cs
	namespace

 	
UNOGui


 
.

 
Paginas

 
{ 
public 

partial 
class 
RegistrarCuenta (
:) *
Page+ /
{ 
public 
RegistrarCuenta 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
CancelarRegistro %
(% &
object& ,
sender- 3
,3 4
RoutedEventArgs5 D
eE F
)F G
{ 	
NavigationService 
. 
GoBack $
($ %
)% &
;& '
} 	
private 
void  
RegistrarNuevaCuenta )
() *
object* 0
sender1 7
,7 8
RoutedEventArgs9 H
eI J
)J K
{ 	
if 
( 
CamposCompletos 
(  
)  !
&&" $
CorreoValido% 1
(1 2
)2 3
&&4 6"
SonContraseniasIguales7 M
(M N
)N O
)O P
{ 
Jugador 
jugadorARegistrar )
=* +
new, /
Jugador0 7
{   
Nickname!! 
=!! 
usuarioIngresado!! /
.!!/ 0
Text!!0 4
,!!4 5
CorreoElectronico"" %
=""& '&
correoElectronicoIngresado""( B
.""B C
Text""C G
,""G H
Contrase√±a## 
=##   
contraseniaIngresada##! 5
.##5 6
Password##6 >
}$$ 
;$$ 
try&& 
{''  
RegistroJugadorAdmin(( (
.((( )!
RegistrarNuevoJugador(() >
(((> ?
jugadorARegistrar((? P
)((P Q
;((Q R
})) 
catch** 
(** %
EndpointNotFoundException** 0
)**0 1
{++ 
new,, 
Mensaje,, 
{-- 
TituloMensaje.. %
=..& '

Properties..( 2
...2 3
	Resources..3 <
...< =)
ErrorServidor_TituloContenido..= Z
,..Z [
	Contenido// !
=//" #

Properties//$ .
.//. /
	Resources/// 8
.//8 9*
ErrorServidor_MensajeContenido//9 W
}00 
.00 

ShowDialog00  
(00  !
)00! "
;00" #
}11 
}22 
}33 	
private55 
bool55 
CamposCompletos55 $
(55$ %
)55% &
{66 	
bool77 
completo77 
=77 
false77 !
;77! "
if99 
(99 
usuarioIngresado99  
.99  !
Text99! %
.99% &
Trim99& *
(99* +
)99+ ,
!=99- /
$str990 2
&&993 5&
correoElectronicoIngresado:: *
.::* +
Text::+ /
.::/ 0
Trim::0 4
(::4 5
)::5 6
!=::7 9
$str::: <
&&::= ? 
contraseniaIngresada;; $
.;;$ %
Password;;% -
.;;- .
Trim;;. 2
(;;2 3
);;3 4
!=;;5 7
$str;;8 :
&&;;; =#
contraseniaDosIngresada<< '
.<<' (
Password<<( 0
.<<0 1
Trim<<1 5
(<<5 6
)<<6 7
!=<<8 :
$str<<; =
)<<= >
{== 
completo>> 
=>> 
true>> 
;>>  
}?? 
else@@ 
{AA 
newBB 
MensajeBB 
{CC 
TitleDD 
=DD 

PropertiesDD &
.DD& '
	ResourcesDD' 0
.DD0 1#
CamposIncompletosTituloDD1 H
,DDH I
TituloMensajeEE !
=EE" #

PropertiesEE$ .
.EE. /
	ResourcesEE/ 8
.EE8 9#
CamposIncompletosTituloEE9 P
,EEP Q
	ContenidoFF 
=FF 

PropertiesFF  *
.FF* +
	ResourcesFF+ 4
.FF4 5$
CamposIncompletosMensajeFF5 M
}GG 
.GG 

ShowDialogGG 
(GG 
)GG 
;GG 
}HH 
returnJJ 
completoJJ 
;JJ 
}KK 	
privateMM 
boolMM "
SonContraseniasIgualesMM +
(MM+ ,
)MM, -
{NN 	
boolOO 
igualesOO 
=OO 
falseOO  
;OO  !
ifQQ 
(QQ  
contraseniaIngresadaQQ $
.QQ$ %
PasswordQQ% -
.QQ- .
TrimQQ. 2
(QQ2 3
)QQ3 4
==QQ5 7#
contraseniaDosIngresadaQQ8 O
.QQO P
PasswordQQP X
.QQX Y
TrimQQY ]
(QQ] ^
)QQ^ _
)QQ_ `
{RR 
igualesSS 
=SS 
trueSS 
;SS 
}TT 
elseUU 
{VV 
newWW 
MensajeWW 
{XX 
TituloMensajeYY !
=YY" #

PropertiesYY$ .
.YY. /
	ResourcesYY/ 8
.YY8 9.
"Registro_MensajeContrase√±asTituloYY9 Z
,YYZ [
	ContenidoZZ 
=ZZ 

PropertiesZZ  *
.ZZ* +
	ResourcesZZ+ 4
.ZZ4 51
%Registro_MensajeContrase√±asContenidoZZ5 Y
}[[ 
.[[ 

ShowDialog[[ 
([[ 
)[[ 
;[[ 
}\\ 
return^^ 
iguales^^ 
;^^ 
}__ 	
privateaa 
boolaa 
CorreoValidoaa !
(aa! "
)aa" #
{bb 	
boolcc 
validocc 
=cc 
falsecc 
;cc  
Regexee 
emailee 
=ee 
newee 
Regexee #
(ee# $
$stree$ K
)eeK L
;eeL M
ifgg 
(gg 
emailgg 
.gg 
IsMatchgg 
(gg &
correoElectronicoIngresadogg 8
.gg8 9
Textgg9 =
.gg= >
Trimgg> B
(ggB C
)ggC D
)ggD E
)ggE F
{hh 
validoii 
=ii 
trueii 
;ii 
}jj 
elsekk 
{ll 
newmm 
Mensajemm 
{nn 
TituloMensajeoo !
=oo" #

Propertiesoo$ .
.oo. /
	Resourcesoo/ 8
.oo8 9(
Registro_MensajeCorreoTitulooo9 U
,ooU V
	Contenidopp 
=pp 

Propertiespp  *
.pp* +
	Resourcespp+ 4
.pp4 5+
Registro_MensajeCorreoContenidopp5 T
}qq 
.qq 

ShowDialogqq 
(qq 
)qq 
;qq 
}rr 
returntt 
validott 
;tt 
}uu 	
}vv 
}ww ¸4
4D:\Juego-UNO\UNOGui\Paginas\RegistroEnEspera.xaml.cs
	namespace		 	
UNOGui		
 
.		 
Paginas		 
{

 
public 

partial 
class 
RegistroEnEspera )
:* +
Page, 0
{ 
private 
DispatcherTimer 
temporizador  ,
;, -
int  
tiempoDeTemporizador  
=! "
$num# %
;% &
public 
RegistroEnEspera 
(  
)  !
{ 	
InitializeComponent 
(  
)  !
;! "
IniciarTemporizador 
(  
)  !
;! "
} 	
private 
void 
CancelarRegistro %
(% &
object& ,
sender- 3
,3 4
RoutedEventArgs5 D
eE F
)F G
{ 	
try 
{  
RegistroJugadorAdmin $
.$ %$
CancelarRegistrarJugador% =
(= >
)> ?
;? @
} 
catch 
( %
EndpointNotFoundException ,
), -
{   
new!! 
Mensaje!! 
{"" 
TituloMensaje## !
=##" #

Properties##$ .
.##. /
	Resources##/ 8
.##8 9)
ErrorServidor_TituloContenido##9 V
,##V W
	Contenido$$ 
=$$ 

Properties$$  *
.$$* +
	Resources$$+ 4
.$$4 5*
ErrorServidor_MensajeContenido$$5 S
}%% 
.%% 

ShowDialog%% 
(%% 
)%% 
;%% 
}&& 
}'' 	
private)) 
void)) 
ConfirmarRegistro)) &
())& '
object))' -
sender)). 4
,))4 5
RoutedEventArgs))6 E
e))F G
)))G H
{** 	
if++ 
(++ 
claveIngresada++ 
.++ 
Text++ #
.++# $
Trim++$ (
(++( )
)++) *
!=+++ -
$str++. 0
)++0 1
{,, 
try-- 
{..  
RegistroJugadorAdmin// (
.//( )#
VerificarClaveIngresada//) @
(//@ A
claveIngresada//A O
.//O P
Text//P T
)//T U
;//U V
}00 
catch11 
(11 %
EndpointNotFoundException11 0
)110 1
{22 
new33 
Mensaje33 
{44 
TituloMensaje55 %
=55& '

Properties55( 2
.552 3
	Resources553 <
.55< =)
ErrorServidor_TituloContenido55= Z
,55Z [
	Contenido66 !
=66" #

Properties66$ .
.66. /
	Resources66/ 8
.668 9*
ErrorServidor_MensajeContenido669 W
}77 
.77 

ShowDialog77  
(77  !
)77! "
;77" #
}88 
}99 
else:: 
{;; 
new<< 
Mensaje<< 
{== 
TituloMensaje>> !
=>>" #

Properties>>$ .
.>>. /
	Resources>>/ 8
.>>8 9#
CamposIncompletosTitulo>>9 P
,>>P Q
	Contenido?? 
=?? 

Properties??  *
.??* +
	Resources??+ 4
.??4 5$
CamposIncompletosMensaje??5 M
}@@ 
.@@ 

ShowDialog@@ 
(@@ 
)@@ 
;@@ 
}AA 
}BB 	
publicGG 
voidGG 
IniciarTemporizadorGG '
(GG' (
)GG( )
{HH 	
temporizadorII 
=II 
newII 
DispatcherTimerII .
{JJ 
IntervalKK 
=KK 
newKK 
TimeSpanKK '
(KK' (
$numKK( )
,KK) *
$numKK+ ,
,KK, -
$numKK. /
)KK/ 0
}LL 
;LL 
temporizadorNN 
.NN 
TickNN 
+=NN  
Temporizador_TickNN! 2
;NN2 3
temporizadorOO 
.OO 
StartOO 
(OO 
)OO  
;OO  !
}PP 	
privateRR 
voidRR 
Temporizador_TickRR &
(RR& '
objectRR' -
senderRR. 4
,RR4 5
	EventArgsRR6 ?
eRR@ A
)RRA B
{SS 	
ifTT 
(TT  
tiempoDeTemporizadorTT $
>TT% &
$numTT' (
)TT( )
{UU  
tiempoDeTemporizadorVV $
--VV$ &
;VV& '
stringWW 
mensajeWW 
=WW  

PropertiesWW! +
.WW+ ,
	ResourcesWW, 5
.WW5 6 
Temporizador_MensajeWW6 J
;WWJ K
temporizadorTextoXX !
.XX! "
TextXX" &
=XX' (
stringXX) /
.XX/ 0
FormatXX0 6
(XX6 7
$strXX7 H
,XXH I
mensajeXXJ Q
,XXQ R 
tiempoDeTemporizadorXXS g
/XXh i
$numXXj l
,XXl m!
tiempoDeTemporizador	XXn Ç
%
XXÉ Ñ
$num
XXÖ á
)
XXá à
;
XXà â
}YY 
elseZZ 
{[[ 
temporizador\\ 
.\\ 
Stop\\ !
(\\! "
)\\" #
;\\# $
temporizadorTexto]] !
.]]! "

Visibility]]" ,
=]]- .

Visibility]]/ 9
.]]9 :
	Collapsed]]: C
;]]C D
enviarCorreoBotton^^ "
.^^" #

Visibility^^# -
=^^. /

Visibility^^0 :
.^^: ;
Visible^^; B
;^^B C
}__ 
}`` 	
privatebb 
voidbb 
EnviarCorreobb !
(bb! "
objectbb" (
senderbb) /
,bb/ 0
RoutedEventArgsbb1 @
ebbA B
)bbB C
{cc 	
trydd 
{ee  
RegistroJugadorAdminff $
.ff$ %
EnviarClaveff% 0
(ff0 1
)ff1 2
;ff2 3
}gg 
catchhh 
(hh %
EndpointNotFoundExceptionhh ,
)hh, -
{ii 
newjj 
Mensajejj 
{kk 
TituloMensajell !
=ll" #

Propertiesll$ .
.ll. /
	Resourcesll/ 8
.ll8 9)
ErrorServidor_TituloContenidoll9 V
,llV W
	Contenidomm 
=mm 

Propertiesmm  *
.mm* +
	Resourcesmm+ 4
.mm4 5*
ErrorServidor_MensajeContenidomm5 S
}nn 
.nn 

ShowDialognn 
(nn 
)nn 
;nn 
}oo 
}pp 	
}qq 
}rr ä
/D:\Juego-UNO\UNOGui\Paginas\UnirseASala.xaml.cs
	namespace 	
UNOGui
 
. 
Paginas 
{		 
public 

partial 
class 
UnirseASala $
:% &
Page' +
{ 
public 
UnirseASala 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
Unirse 
( 
object "
sender# )
,) *
RoutedEventArgs+ :
e; <
)< =
{ 	
if 
( 
CamposCompletos 
(  
)  !
)! "
{ 
Sala 
salaAUnirse  
=! "
new# &
Sala' +
{ 
Id 
= 

nombreSala #
.# $
Text$ (
,( )
Contrase√±a 
=  
contrasenia! ,
., -
Password- 5
} 
; 
var 
jugador 
= 
Window $
.$ %
	GetWindow% .
(. /
this/ 3
)3 4
.4 5
DataContext5 @
asA C
JugadorD K
;K L
try   
{!! 
	SalaAdmin"" 
."" 
UnirseASala"" )
("") *
salaAUnirse""* 5
,""5 6
jugador""7 >
)""> ?
;""? @
}## 
catch$$ 
($$ %
EndpointNotFoundException$$ 0
)$$0 1
{%% 
new&& 
Mensaje&& 
{'' 
TituloMensaje(( %
=((& '

Properties((( 2
.((2 3
	Resources((3 <
.((< =)
ErrorServidor_TituloContenido((= Z
,((Z [
	Contenido)) !
=))" #

Properties))$ .
.)). /
	Resources))/ 8
.))8 9*
ErrorServidor_MensajeContenido))9 W
}** 
.** 

ShowDialog**  
(**  !
)**! "
;**" #
}++ 
LimpiarCampos-- 
(-- 
)-- 
;--  
}.. 
else// 
{00 
new11 
Mensaje11 
{22 
TituloMensaje33 !
=33" #

Properties33$ .
.33. /
	Resources33/ 8
.338 9#
CamposIncompletosTitulo339 P
,33P Q
	Contenido44 
=44 

Properties44  *
.44* +
	Resources44+ 4
.444 5/
#UnirseSala_CamposIncompletosMensaje445 X
}55 
.55 

ShowDialog55 
(55 
)55 
;55 
}66 
}77 	
private99 
void99 
LimpiarCampos99 "
(99" #
)99# $
{:: 	

nombreSala;; 
.;; 
Text;; 
=;; 
$str;;  
;;;  !
contrasenia<< 
.<< 
Password<<  
=<<! "
$str<<# %
;<<% &
}== 	
private?? 
bool?? 
CamposCompletos?? $
(??$ %
)??% &
{@@ 	
returnAA 
(AA 

nombreSalaAA 
.AA 
TextAA #
.AA# $
TrimAA$ (
(AA( )
)AA) *
!=AA+ -
$strAA. 0
&&AA1 3
contraseniaAA4 ?
.AA? @
PasswordAA@ H
.AAH I
TrimAAI M
(AAM N
)AAN O
!=AAP R
$strAAS U
)AAU V
;AAV W
}BB 	
}CC 
}DD ñ
3D:\Juego-UNO\UNOGui\Paginas\VerificarCodigo.xaml.cs
	namespace 	
UNOGui
 
. 
Paginas 
{ 
public

 

partial

 
class

 
VerificarCodigo

 (
:

) *
Page

+ /
{ 
public 
VerificarCodigo 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void #
IrARecuperacionDeCuenta ,
(, -
object- 3
sender4 :
,: ;
RoutedEventArgs< K
eL M
)M N
{ 	
if 
( 
CamposCompletos 
(  
)  !
)! "
{ 
} 
else 
{ 

MessageBox 
. 
Show 
(  
$str  ;
); <
;< =
} 
}   	
private"" 
void"" 
Cancelar"" 
("" 
object"" $
sender""% +
,""+ ,
RoutedEventArgs""- <
e""= >
)""> ?
{## 	
NavigationService$$ 
.$$ 
GoBack$$ $
($$$ %
)$$% &
;$$& '
}%% 	
private'' 
bool'' 
CamposCompletos'' $
(''$ %
)''% &
{(( 	
return)) 
codigoIngresado)) "
.))" #
Text))# '
.))' (
Trim))( ,
()), -
)))- .
!=))/ 1
$str))2 4
;))4 5
}** 	
}++ 
},, à 
'D:\Juego-UNO\UNOGui\Logica\SalaAdmin.cs
	namespace 	
UNOGui
 
. 
Logica 
{ 
public 

static 
class 
	SalaAdmin !
{ 
private 
static 
readonly 
InstanceContext  /
contexto0 8
=9 :
new; >
InstanceContext? N
(N O
newO R
JuegoCallbackAdminS e
(e f
)f g
)g h
;h i
private 
static 
readonly "
AdministrarJuegoClient  6
servidor7 ?
=@ A
newB E"
AdministrarJuegoClientF \
(\ ]
contexto] e
)e f
;f g
public 
static 
void 
UnirseASala &
(& '
Sala' +
salaBuscada, 7
,7 8
Jugador9 @
jugadorA H
)H I
{ 	
try 
{ 
servidor 
. 
UnirseASala $
($ %
salaBuscada% 0
,0 1
jugador2 9
)9 :
;: ;
} 
catch 
( %
EndpointNotFoundException ,
ex- /
)/ 0
{ 
LoggerAdmin 
. 
EscribirLog '
(' (
$str( /
,/ 0
ex1 3
)3 4
;4 5
throw   
;   
}!! 
catch"" 
("" 
TimeoutException"" #
ex""$ &
)""& '
{## 
LoggerAdmin$$ 
.$$ 
EscribirLog$$ '
($$' (
$str$$( /
,$$/ 0
ex$$1 3
)$$3 4
;$$4 5
throw%% 
;%% 
}&& 
}'' 	
public00 
static00 
void00 
	CrearSala00 $
(00$ %
Sala00% )
	nuevaSala00* 3
,003 4
Jugador005 <
jugador00= D
)00D E
{11 	
try22 
{33 
servidor44 
.44 
	CrearSala44 "
(44" #
	nuevaSala44# ,
,44, -
jugador44. 5
)445 6
;446 7
}55 
catch66 
(66 %
EndpointNotFoundException66 ,
ex66- /
)66/ 0
{77 
LoggerAdmin88 
.88 
EscribirLog88 '
(88' (
$str88( /
,88/ 0
ex881 3
)883 4
;884 5
throw99 
;99 
}:: 
catch;; 
(;; 
TimeoutException;; #
ex;;$ &
);;& '
{<< 
LoggerAdmin== 
.== 
EscribirLog== '
(==' (
$str==( /
,==/ 0
ex==1 3
)==3 4
;==4 5
throw>> 
;>> 
}?? 
}@@ 	
publicHH 
staticHH 
voidHH 
SalirDeSalaHH &
(HH& '
stringHH' -
idSalaHH. 4
,HH4 5
stringHH6 <
nicknameHH= E
)HHE F
{II 	
tryJJ 
{KK 
servidorLL 
.LL 
SalirDeSalaLL $
(LL$ %
idSalaLL% +
,LL+ ,
nicknameLL- 5
)LL5 6
;LL6 7
}MM 
catchNN 
(NN %
EndpointNotFoundExceptionNN ,
exNN- /
)NN/ 0
{OO 
LoggerAdminPP 
.PP 
EscribirLogPP '
(PP' (
$strPP( /
,PP/ 0
exPP1 3
)PP3 4
;PP4 5
throwQQ 
;QQ 
}RR 
catchSS 
(SS 
TimeoutExceptionSS #
exSS$ &
)SS& '
{TT 
LoggerAdminUU 
.UU 
EscribirLogUU '
(UU' (
$strUU( /
,UU/ 0
exUU1 3
)UU3 4
;UU4 5
throwVV 
;VV 
}WW 
}XX 	
}YY 
}ZZ ºs
/D:\Juego-UNO\UNOGui\Logica\SalaCallbackAdmin.cs
	namespace		 	
UNOGui		
 
.		 
Logica		 
{

 
public 

partial 
class 
JuegoCallbackAdmin +
:, -%
IAdministrarJuegoCallback. G
{ 
public 
void 
ActualizarSala "
(" #
List# '
<' (
string( .
>. /
	jugadores0 9
)9 :
{ 	 
ObservableCollection  
<  !
string! '
>' (
jugadoresEnSala) 8
=9 :
new; > 
ObservableCollection? S
<S T
stringT Z
>Z [
([ \
	jugadores\ e
)e f
;f g
Juego 
ventanaJuego 
=  
Application! ,
., -
Current- 4
.4 5
Windows5 <
.< =
OfType= C
<C D
JuegoD I
>I J
(J K
)K L
.L M
SingleOrDefaultM \
(\ ]
)] ^
;^ _
Paginas 
. 
Lobby 
paginaLobby %
=& '
ventanaJuego( 4
.4 5
PaginaActual5 A
asB D
PaginasE L
.L M
LobbyM R
;R S
paginaLobby 
. 
jugadoresEnSala '
.' (
ItemsSource( 3
=4 5
jugadoresEnSala6 E
;E F
} 	
public 
void 
AgregarNuevoJugador '
(' (
Jugador( /
nuevoJugador0 <
)< =
{ 	
Juego   
ventanaJuego   
=    
Application  ! ,
.  , -
Current  - 4
.  4 5
Windows  5 <
.  < =
OfType  = C
<  C D
Juego  D I
>  I J
(  J K
)  K L
.  L M
SingleOrDefault  M \
(  \ ]
)  ] ^
;  ^ _
Paginas!! 
.!! 
Lobby!! 
paginaLobby!! %
=!!& '
ventanaJuego!!( 4
.!!4 5
PaginaActual!!5 A
as!!B D
Paginas!!E L
.!!L M
Lobby!!M R
;!!R S
paginaLobby## 
.## 
	Jugadores## !
.##! "
Add##" %
(##% &
nuevoJugador##& 2
)##2 3
;##3 4
}$$ 	
public)) 
void)) 
EliminarCreador)) #
())# $
)))$ %
{** 	

CerrarSala++ 
(++ 
)++ 
;++ 
},, 	
public22 
void22 #
NotificarCreacionDeSala22 +
(22+ ,
Sala22, 0

salaCreada221 ;
)22; <
{33 	
Juego44 
ventanaJuego44 
=44  
new44! $
Juego44% *
(44* +
)44+ ,
;44, -
ventanaJuego55 
.55 
Show55 
(55 
)55 
;55  
Paginas66 
.66 
Lobby66 
paginaLobby66 %
=66& '
new66( +
Paginas66, 3
.663 4
Lobby664 9
{77 
	Jugadores88 
=88 
new88  
ObservableCollection88  4
<884 5
Jugador885 <
>88< =
(88= >

salaCreada88> H
.88H I
JugadoresEnSala88I X
.88X Y
Keys88Y ]
)88] ^
,88^ _
DataContext99 
=99 

salaCreada99 (
}:: 
;:: 
paginaLobby;; 
.;; 
jugadoresEnSala;; '
.;;' (
ItemsSource;;( 3
=;;4 5
paginaLobby;;6 A
.;;A B
	Jugadores;;B K
;;;K L
paginaLobby<< 
.<< "
ConfigurarSalaParaHost<< .
(<<. /
)<</ 0
;<<0 1
ventanaJuego== 
.== 
PaginaActual== %
===& '
paginaLobby==( 3
;==3 4
ventanaJuego>> 
.>> 
frameNavegacion>> (
.>>( )
Content>>) 0
=>>1 2
paginaLobby>>3 >
;>>> ?
MenuPrincipal@@ 
menuPrincipal@@ '
=@@( )
Application@@* 5
.@@5 6
Current@@6 =
.@@= >
Windows@@> E
.@@E F
OfType@@F L
<@@L M
MenuPrincipal@@M Z
>@@Z [
(@@[ \
)@@\ ]
.@@] ^
SingleOrDefault@@^ m
(@@m n
)@@n o
;@@o p
menuPrincipalAA 
.AA 
HideAA 
(AA 
)AA  
;AA  !
}BB 	
publicGG 
voidGG &
NotificarEliminacionDeSalaGG .
(GG. /
)GG/ 0
{HH 	
newII 
MensajeII 
{JJ 
TitleKK 
=KK 
$strKK (
,KK( )
TituloMensajeLL 
=LL 
$strLL  0
,LL0 1
	ContenidoMM 
=MM 
$strMM I
}NN 
.NN 

ShowDialogNN 
(NN 
)NN 
;NN 

CerrarSalaPP 
(PP 
)PP 
;PP 
}QQ 	
publicVV 
voidVV %
NotificarFaltaDeJugadoresVV -
(VV- .
)VV. /
{WW 	
newXX 
MensajeXX 
{YY 
TitleZZ 
=ZZ 
$strZZ (
,ZZ( )
TituloMensaje[[ 
=[[ 
$str[[  0
,[[0 1
	Contenido\\ 
=\\ 
$str\\ ^
}]] 
.]] 

ShowDialog]] 
(]] 
)]] 
;]] 

CerrarSala__ 
(__ 
)__ 
;__ 
}`` 	
publicee 
voidee !
NotificarSalidaDeSalaee )
(ee) *
)ee* +
{ff 	

CerrarSalagg 
(gg 
)gg 
;gg 
}hh 	
publicnn 
voidnn 
NotificarUnionASalann '
(nn' (
ResultadoUnionSalann( :
	resultadonn; D
)nnD E
{oo 	
switchpp 
(pp 
	resultadopp 
)pp 
{qq 
caserr 
ResultadoUnionSalarr '
.rr' (

NoExisteIdrr( 2
:rr2 3
newss 
Mensajess 
{tt 
TituloMensajeuu %
=uu& '
$struu( <
,uu< =
	Contenidovv !
=vv" #
$strvv$ u
}ww 
.ww 

ShowDialogww  
(ww  !
)ww! "
;ww" #
breakxx 
;xx 
casezz 
ResultadoUnionSalazz '
.zz' (!
Contrase√±aIncorrectazz( <
:zz< =
new{{ 
Mensaje{{ 
{|| 
TituloMensaje}} %
=}}& '
$str}}( ?
,}}? @
	Contenido~~ !
=~~" #
$str	~~$ Ñ
} 
. 

ShowDialog  
(  !
)! "
;" #
break
ÄÄ 
;
ÄÄ 
case
ÇÇ  
ResultadoUnionSala
ÇÇ '
.
ÇÇ' (
	NoHayCupo
ÇÇ( 1
:
ÇÇ1 2

MessageBox
ÉÉ 
.
ÉÉ 
Show
ÉÉ #
(
ÉÉ# $
$str
ÉÉ$ ?
)
ÉÉ? @
;
ÉÉ@ A
new
ÑÑ 
Mensaje
ÑÑ 
{
ÖÖ 
TituloMensaje
ÜÜ %
=
ÜÜ& '
$str
ÜÜ( 5
,
ÜÜ5 6
	Contenido
áá !
=
áá" #
$str
áá$ d
}
àà 
.
àà 

ShowDialog
àà  
(
àà  !
)
àà! "
;
àà" #
break
ââ 
;
ââ 
case
ãã  
ResultadoUnionSala
ãã '
.
ãã' (
EnJuego
ãã( /
:
ãã/ 0
new
åå 
Mensaje
åå 
{
çç 
Title
éé 
=
éé 
$str
éé  /
,
éé/ 0
TituloMensaje
èè %
=
èè& '
$str
èè( 7
,
èè7 8
	Contenido
êê !
=
êê" #
$str
êê$ k
}
ëë 
.
ëë 

ShowDialog
ëë  
(
ëë  !
)
ëë! "
;
ëë" #
break
íí 
;
íí 
case
îî  
ResultadoUnionSala
îî '
.
îî' (
UnionExitosa
îî( 4
:
îî4 5
Juego
ïï 
ventanaJuego
ïï &
=
ïï' (
new
ïï) ,
Juego
ïï- 2
(
ïï2 3
)
ïï3 4
;
ïï4 5
ventanaJuego
ññ  
.
ññ  !
Show
ññ! %
(
ññ% &
)
ññ& '
;
ññ' (
MenuPrincipal
óó !
menuPrincipal
óó" /
=
óó0 1
Application
óó2 =
.
óó= >
Current
óó> E
.
óóE F
Windows
óóF M
.
óóM N
OfType
óóN T
<
óóT U
MenuPrincipal
óóU b
>
óób c
(
óóc d
)
óód e
.
óóe f
SingleOrDefault
óóf u
(
óóu v
)
óóv w
;
óów x
menuPrincipal
òò !
.
òò! "
Hide
òò" &
(
òò& '
)
òò' (
;
òò( )
break
ôô 
;
ôô 
default
õõ 
:
õõ 
break
õõ 
;
õõ 
}
úú 
}
ùù 	
public
££ 
void
££ &
ObtenerInformacionDeSala
££ ,
(
££, -
Sala
££- 1
sala
££2 6
)
££6 7
{
§§ 	
Paginas
•• 
.
•• 
Lobby
•• 
paginaLobby
•• %
=
••& '
new
••( +
Paginas
••, 3
.
••3 4
Lobby
••4 9
{
¶¶ 
DataContext
ßß 
=
ßß 
sala
ßß "
,
ßß" #
	Jugadores
®® 
=
®® 
new
®® "
ObservableCollection
®®  4
<
®®4 5
Jugador
®®5 <
>
®®< =
(
®®= >
sala
®®> B
.
®®B C
JugadoresEnSala
®®C R
.
®®R S
Keys
®®S W
)
®®W X
}
©© 
;
©© 
paginaLobby
™™ 
.
™™ 
jugadoresEnSala
™™ '
.
™™' (
ItemsSource
™™( 3
=
™™4 5
paginaLobby
™™6 A
.
™™A B
	Jugadores
™™B K
;
™™K L
Juego
´´ 
ventanaJuego
´´ 
=
´´  
Application
´´! ,
.
´´, -
Current
´´- 4
.
´´4 5
Windows
´´5 <
.
´´< =
OfType
´´= C
<
´´C D
Juego
´´D I
>
´´I J
(
´´J K
)
´´K L
.
´´L M
SingleOrDefault
´´M \
(
´´\ ]
)
´´] ^
;
´´^ _
ventanaJuego
¨¨ 
.
¨¨ 
PaginaActual
¨¨ %
=
¨¨& '
paginaLobby
¨¨( 3
;
¨¨3 4
ventanaJuego
≠≠ 
.
≠≠ 
frameNavegacion
≠≠ (
.
≠≠( )
Content
≠≠) 0
=
≠≠1 2
paginaLobby
≠≠3 >
;
≠≠> ?
}
ÆÆ 	
public
¥¥ 
void
¥¥ 
SacarJugador
¥¥  
(
¥¥  !
Jugador
¥¥! (
jugadorASacar
¥¥) 6
)
¥¥6 7
{
µµ 	
Juego
∂∂ 
ventanaJuego
∂∂ 
=
∂∂  
Application
∂∂! ,
.
∂∂, -
Current
∂∂- 4
.
∂∂4 5
Windows
∂∂5 <
.
∂∂< =
OfType
∂∂= C
<
∂∂C D
Juego
∂∂D I
>
∂∂I J
(
∂∂J K
)
∂∂K L
.
∂∂L M
SingleOrDefault
∂∂M \
(
∂∂\ ]
)
∂∂] ^
;
∂∂^ _
Page
∑∑ 
paginaActual
∑∑ 
=
∑∑ 
ventanaJuego
∑∑  ,
.
∑∑, -
PaginaActual
∑∑- 9
;
∑∑9 :
if
ππ 
(
ππ 
paginaActual
ππ 
.
ππ 
GetType
ππ $
(
ππ$ %
)
ππ% &
==
ππ' )
typeof
ππ* 0
(
ππ0 1
Paginas
ππ1 8
.
ππ8 9
Lobby
ππ9 >
)
ππ> ?
)
ππ? @
{
∫∫ 
Jugador
ªª 
jugador
ªª 
=
ªª  !
(
ªª" #
(
ªª# $
Paginas
ªª$ +
.
ªª+ ,
Lobby
ªª, 1
)
ªª1 2
paginaActual
ªª2 >
)
ªª> ?
.
ªª? @
	Jugadores
ªª@ I
.
ªªI J
Single
ªªJ P
(
ªªP Q

jugadorAux
ªªQ [
=>
ªª\ ^

jugadorAux
ªª_ i
.
ªªi j
Nickname
ªªj r
.
ªªr s
Equals
ªªs y
(
ªªy z
jugadorASacarªªz á
.ªªá à
Nicknameªªà ê
)ªªê ë
)ªªë í
;ªªí ì
(
ºº 
(
ºº 
Paginas
ºº 
.
ºº 
Lobby
ºº 
)
ºº  
paginaActual
ºº  ,
)
ºº, -
.
ºº- .
	Jugadores
ºº. 7
.
ºº7 8
Remove
ºº8 >
(
ºº> ?
jugador
ºº? F
)
ººF G
;
ººG H
}
ΩΩ 
else
ææ 
{
øø 
(
¿¿ 
(
¿¿ 
Paginas
¿¿ 
.
¿¿ 
Partida
¿¿ !
)
¿¿! "
paginaActual
¿¿" .
)
¿¿. /
.
¿¿/ 0
SacarJugador
¿¿0 <
(
¿¿< =
jugadorASacar
¿¿= J
.
¿¿J K
Nickname
¿¿K S
)
¿¿S T
;
¿¿T U
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
void
ƒƒ 

CerrarSala
ƒƒ 
(
ƒƒ  
)
ƒƒ  !
{
≈≈ 	
MenuPrincipal
∆∆ 
menuPrincipal
∆∆ '
=
∆∆( )
Application
∆∆* 5
.
∆∆5 6
Current
∆∆6 =
.
∆∆= >
Windows
∆∆> E
.
∆∆E F
OfType
∆∆F L
<
∆∆L M
MenuPrincipal
∆∆M Z
>
∆∆Z [
(
∆∆[ \
)
∆∆\ ]
.
∆∆] ^
SingleOrDefault
∆∆^ m
(
∆∆m n
)
∆∆n o
;
∆∆o p
var
«« 
ventanaJuego
«« 
=
«« 
Application
«« *
.
««* +
Current
««+ 2
.
««2 3
Windows
««3 :
.
««: ;
OfType
««; A
<
««A B
Juego
««B G
>
««G H
(
««H I
)
««I J
.
««J K
SingleOrDefault
««K Z
(
««Z [
)
««[ \
;
««\ ]
ventanaJuego
»» 
.
»» 
Close
»» 
(
»» 
)
»»  
;
»»  !
menuPrincipal
   
.
   
Show
   
(
   
)
    
;
    !
}
ÀÀ 	
}
ÃÃ 
}ÕÕ å
*D:\Juego-UNO\UNOGui\Ventanas\Juego.xaml.cs
	namespace 	
UNOGui
 
. 
Ventanas 
{ 
public

 

partial

 
class

 
Juego

 
:

  
Window

! '
{ 
public 
Page 
PaginaActual  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Juego 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void !
RegresarMenuPrincipal *
(* +
object+ 1
sender2 8
,8 9
System: @
.@ A
ComponentModelA O
.O P
CancelEventArgsP _
e` a
)a b
{ 	
MenuPrincipal 
menuPrincipal '
=( )
Application* 5
.5 6
Current6 =
.= >
Windows> E
.E F
OfTypeF L
<L M
MenuPrincipalM Z
>Z [
([ \
)\ ]
.] ^
SingleOrDefault^ m
(m n
)n o
;o p
menuPrincipal 
. 
Show 
( 
)  
;  !
} 	
} 
} ª	
,D:\Juego-UNO\UNOGui\Ventanas\Mensaje.xaml.cs
	namespace 	
UNOGui
 
. 
Ventanas 
{ 
public 

partial 
class 
Mensaje  
:! "
Window# )
{		 
public 
string 
TituloMensaje #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
$str4 ;
;; <
public 
string 
	Contenido 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
$str0 U
;U V
public 
Mensaje 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
CerrarVentana "
(" #
object# )
sender* 0
,0 1
RoutedEventArgs2 A
eB C
)C D
{ 	
this 
. 
Close 
( 
) 
; 
} 	
} 
} ÷4
2D:\Juego-UNO\UNOGui\Ventanas\MenuPrincipal.xaml.cs
	namespace 	
UNOGui
 
. 
Ventanas 
{ 
public 

partial 
class 
MenuPrincipal &
:' (
Window) /
,/ 0
IPerfilCallback1 @
{ 
public 
Inicio 
PaginaIncio !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
MenuPrincipal 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
PaginaIncio 
= 
new 
Inicio $
($ %
)% &
;& '
frameNavegacion 
. 
Content #
=$ %
PaginaIncio& 1
;1 2
} 	
private 
void 
CerrarSesion !
(! "
object" (
sender) /
,/ 0
RoutedEventArgs1 @
eA B
)B C
{ 	
string 
nickname 
= 
( 
DataContext *
as+ -
Jugador. 5
)5 6
.6 7
Nickname7 ?
;? @
try 
{ 

LoginAdmin   
.   
CerrarSesion   '
(  ' (
nickname  ( 0
)  0 1
;  1 2
}!! 
catch"" 
("" %
EndpointNotFoundException"" ,
)"", -
{## 
new$$ 
Mensaje$$ 
{%% 
TituloMensaje&& !
=&&" #

Properties&&$ .
.&&. /
	Resources&&/ 8
.&&8 9)
ErrorServidor_TituloContenido&&9 V
,&&V W
	Contenido'' 
='' 

Properties''  *
.''* +
	Resources''+ 4
.''4 5*
ErrorServidor_MensajeContenido''5 S
}(( 
.(( 

ShowDialog(( 
((( 
)(( 
;(( 
})) 
	Principal++ 
ventanaLogin++ "
=++# $
new++% (
	Principal++) 2
(++2 3
)++3 4
;++4 5
ventanaLogin-- 
.-- 
Show-- 
(-- 
)-- 
;--  
this.. 
... 
Close.. 
(.. 
).. 
;.. 
}// 	
private11 
void11 
IrAUnirseASala11 #
(11# $
object11$ *
sender11+ 1
,111 2
RoutedEventArgs113 B
e11C D
)11D E
{22 	
if33 
(33 
frameNavegacion33 
.33  
Content33  '
.33' (
GetType33( /
(33/ 0
)330 1
!=332 4
typeof335 ;
(33; <
UnirseASala33< G
)33G H
)33H I
{44 
frameNavegacion55 
.55  
Navigate55  (
(55( )
new55) ,
UnirseASala55- 8
(558 9
)559 :
)55: ;
;55; <
}66 
}77 	
private99 
void99 
IrACrearSala99 !
(99! "
object99" (
sender99) /
,99/ 0
RoutedEventArgs991 @
e99A B
)99B C
{:: 	
if;; 
(;; 
frameNavegacion;; 
.;;  
Content;;  '
.;;' (
GetType;;( /
(;;/ 0
);;0 1
!=;;2 4
typeof;;5 ;
(;;; <
CreacionDeSala;;< J
);;J K
);;K L
{<< 
frameNavegacion== 
.==  
Navigate==  (
(==( )
new==) ,
CreacionDeSala==- ;
(==; <
)==< =
)=== >
;==> ?
}>> 
}?? 	
privateAA 
voidAA 
IrAMiPerfilAA  
(AA  !
objectAA! '
senderAA( .
,AA. /
RoutedEventArgsAA0 ?
eAA@ A
)AAA B
{BB 	
ifCC 
(CC 
frameNavegacionCC 
.CC  
ContentCC  '
.CC' (
GetTypeCC( /
(CC/ 0
)CC0 1
!=CC2 4
typeofCC5 ;
(CC; <
MiPerfilCC< D
)CCD E
)CCE F
{DD 
InstanceContextEE 
contextoEE  (
=EE) *
newEE+ .
InstanceContextEE/ >
(EE> ?
thisEE? C
)EEC D
;EED E
PerfilClientFF 
servidorFF %
=FF& '
newFF( +
PerfilClientFF, 8
(FF8 9
contextoFF9 A
)FFA B
;FFB C
stringHH 
nicknameJugadorHH &
=HH' (
(HH) *
thisHH* .
.HH. /
DataContextHH/ :
asHH; =
JugadorHH> E
)HHE F
.HHF G
NicknameHHG O
;HHO P
tryJJ 
{KK 
servidorLL 
.LL 
BuscarJugadorLL *
(LL* +
nicknameJugadorLL+ :
)LL: ;
;LL; <
}MM 
catchNN 
(NN %
EndpointNotFoundExceptionNN 0
)NN0 1
{OO 
newPP 
MensajePP 
{QQ 
TituloMensajeRR %
=RR& '
$strRR( .
,RR. /
	ContenidoSS !
=SS" #
$strSS$ f
}TT 
.TT 

ShowDialogTT  
(TT  !
)TT! "
;TT" #
}UU 
}WW 
}XX 	
privateZZ 
voidZZ 
	IrAInicioZZ 
(ZZ 
objectZZ %
senderZZ& ,
,ZZ, -
RoutedEventArgsZZ. =
eZZ> ?
)ZZ? @
{[[ 	
if\\ 
(\\ 
frameNavegacion\\ 
.\\  
Content\\  '
.\\' (
GetType\\( /
(\\/ 0
)\\0 1
!=\\2 4
typeof\\5 ;
(\\; <
Inicio\\< B
)\\B C
)\\C D
{]] 
frameNavegacion^^ 
.^^  
Navigate^^  (
(^^( )
this^^) -
.^^- .
PaginaIncio^^. 9
)^^9 :
;^^: ;
}__ 
}`` 	
publicff 
voidff %
ObtenerInformacionJugadorff -
(ff- .
Jugadorff. 5
jugadorff6 =
)ff= >
{gg 	
frameNavegacionhh 
.hh 
Navigatehh $
(hh$ %
newhh% (
MiPerfilhh) 1
(hh1 2
)hh2 3
{ii 
DataContextjj 
=jj 
jugadorjj %
}kk 
)kk 
;kk 
}ll 	
}mm 
}nn Î
.D:\Juego-UNO\UNOGui\Ventanas\Principal.xaml.cs
	namespace 	
UNOGui
 
. 
Ventanas 
{ 
public 

partial 
class 
	Principal "
:# $
NavigationWindow% 5
{		 
public

 
	Principal

 
(

 
)

 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} Î
7D:\Juego-UNO\UNOGui\Ventanas\RecuperacionCuenta.xaml.cs
	namespace 	
UNOGui
 
. 
Ventanas 
{ 
public 

partial 
class 
RecuperacionCuenta +
:, -
Window. 4
{		 
public

 
RecuperacionCuenta

 !
(

! "
)

" #
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
CambiarContrasenia '
(' (
object( .
sender/ 5
,5 6
RoutedEventArgs7 F
eG H
)H I
{ 	
if 
( 
CamposCompletos 
(  
)  !
)! "
{ 

MessageBox 
. 
Show 
(  
$str  5
)5 6
;6 7
} 
} 	
private 
void 
Cancelar 
( 
object $
sender% +
,+ ,
RoutedEventArgs- <
e= >
)> ?
{ 	
} 	
private!! 
bool!! 
CamposCompletos!! $
(!!$ %
)!!% &
{"" 	
bool## 
completo## 
=## 
false## !
;##! "
if%% 
(%% 
nuevaContrasenia%%  
.%%  !
Password%%! )
.%%) *
Trim%%* .
(%%. /
)%%/ 0
!=%%1 3
$str%%4 6
&&%%7 9
nuevaContrasenia2&& !
.&&! "
Password&&" *
.&&* +
Trim&&+ /
(&&/ 0
)&&0 1
!=&&2 4
$str&&5 7
)&&7 8
{'' 
if(( 
((( 
nuevaContrasenia(( $
.(($ %
Password((% -
.((- .
Trim((. 2
(((2 3
)((3 4
==((5 7
nuevaContrasenia2((8 I
.((I J
Password((J R
.((R S
Trim((S W
(((W X
)((X Y
)((Y Z
{)) 
completo** 
=** 
true** #
;**# $
}++ 
else,, 
{-- 

MessageBox.. 
... 
Show.. #
(..# $
$str..$ D
)..D E
;..E F
}// 
}00 
else11 
{22 

MessageBox33 
.33 
Show33 
(33  
$str33  >
)33> ?
;33? @
}44 
return66 
completo66 
;66 
}77 	
}88 
}99 ´
4D:\Juego-UNO\UNOGui\Ventanas\VerificarCodigo.xaml.cs
	namespace 	
UNOGui
 
. 
Ventanas 
{ 
public 

partial 
class 
VerificarCodigo (
:) *
Window+ 1
{ 
public 
VerificarCodigo 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void #
IrARecuperacionDeCuenta ,
(, -
object- 3
sender4 :
,: ;
RoutedEventArgs< K
eL M
)M N
{ 	
if 
( 
CamposCompletos 
(  
)  !
)! "
{ 
RecuperacionCuenta " 
recuperacionDeCuenta# 7
=8 9
new: =
RecuperacionCuenta> P
(P Q
)Q R
;R S 
recuperacionDeCuenta   $
.  $ %
Show  % )
(  ) *
)  * +
;  + ,
this"" 
."" 
Close"" 
("" 
)"" 
;"" 
}## 
else$$ 
{%% 

MessageBox&& 
.&& 
Show&& 
(&&  
$str&&  ;
)&&; <
;&&< =
}'' 
}(( 	
private** 
void** 
Cancelar** 
(** 
object** $
sender**% +
,**+ ,
RoutedEventArgs**- <
e**= >
)**> ?
{++ 	
}22 	
private44 
bool44 
CamposCompletos44 $
(44$ %
)44% &
{55 	
return66 
codigoIngresado66 "
.66" #
Text66# '
.66' (
Trim66( ,
(66, -
)66- .
!=66/ 1
$str662 4
;664 5
}77 	
}88 
}99 ı
.D:\Juego-UNO\UNOGui\Properties\AssemblyInfo.cs
[

 
assembly

 	
:

	 

AssemblyTitle

 
(

 
$str

 !
)

! "
]

" #
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str $
)$ %
]% &
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 7
)7 8
]8 9
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
["" 
assembly"" 	
:""	 

	ThemeInfo"" 
("" &
ResourceDictionaryLocation## 
.## 
None## #
,### $&
ResourceDictionaryLocation&& 
.&& 
SourceAssembly&& -
))) 
])) 
[66 
assembly66 	
:66	 

AssemblyVersion66 
(66 
$str66 $
)66$ %
]66% &
[77 
assembly77 	
:77	 

AssemblyFileVersion77 
(77 
$str77 (
)77( )
]77) *