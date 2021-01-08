�D
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
EsContraseñaCorrecta.. (
(..( )
string..) /
nickname..0 8
,..8 9
string..: @
contraseña..A K
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
contraseña55/ 9
,559 :
jugadorBuscado55; I
.55I J
Contraseña55J T
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
ContraseñaUU 
=UU 
AdministradorHashUU .
.UU. /
GenerarHashUU/ :
(UU: ;
nuevoJugadorUU; G
.UUG H
ContraseñaUUH R
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
�� 
return
�� 
mejoresJugadores
�� #
;
��# $
}
�� 	
public
�� 
Dominio
�� 
.
�� 
Jugador
�� 
ObtenerJugador
�� -
(
��- .
string
��. 4
nickname
��5 =
)
��= >
{
�� 	
Dominio
�� 
.
�� 
Jugador
�� 
jugador
�� #
;
��# $
var
�� 
jugadorBuscado
�� 
=
��  
baseDeDatos
��! ,
.
��, -
Jugador
��- 4
.
��4 5
Find
��5 9
(
��9 :
nickname
��: B
)
��B C
;
��C D
jugador
�� 
=
�� 
new
�� 
Dominio
�� !
.
��! "
Jugador
��" )
{
�� 
Nickname
�� 
=
�� 
nickname
�� #
,
��# $
CorreoElectronico
�� !
=
��" #
jugadorBuscado
��$ 2
.
��2 3
CorreoElectronico
��3 D
,
��D E
PuntajeTotal
�� 
=
�� 
(
��  
int
��  #
)
��# $
jugadorBuscado
��$ 2
.
��2 3
PuntajeTotal
��3 ?
,
��? @
Nivel
�� 
=
�� 
jugadorBuscado
�� &
.
��& '
Nivel
��' ,
,
��, -
Experiencia
�� 
=
�� 
(
�� 
int
�� "
)
��" #
jugadorBuscado
��# 1
.
��1 2
Experiencia
��2 =
,
��= >
PartidasGanadas
�� 
=
��  !
(
��" #
int
��# &
)
��& '
jugadorBuscado
��' 5
.
��5 6
PartidasGanadas
��6 E
,
��E F
PartidasJugadas
�� 
=
��  !
(
��" #
int
��# &
)
��& '
jugadorBuscado
��' 5
.
��5 6
PartidasJugadas
��6 E
}
�� 
;
�� 
return
�� 
jugador
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
}%% �
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
AD:\Juego-UNO\UNOServer\UNO.AccesoADatos\JuegoUNOModel.Designer.cs�
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
Contraseña  
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
} �
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
]$$) *�
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
$str	} �
)
� �
]
� �