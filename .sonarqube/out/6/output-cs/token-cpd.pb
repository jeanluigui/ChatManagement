ô
?D:\repositoriosGit\Chat\Chat\xChatWeb\App_Start\BundleConfig.cs
	namespace 	
xChatWeb
 
{ 
public 

class 
BundleConfig 
{ 
public 
static 
void 
RegisterBundles *
(* +
BundleCollection+ ;
bundles< C
)C D
{		 	
bundles

 
.

 
Add

 
(

 
new

 
ScriptBundle

 (
(

( )
$str

) ;
)

; <
.

< =
Include

= D
(

D E
$str 3
)3 4
)4 5
;5 6
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
). /
)/ 0
;0 1
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
BundleTable 
. 
EnableOptimizations +
=, -
true. 2
;2 3
} 	
} 
}   ñ
?D:\repositoriosGit\Chat\Chat\xChatWeb\App_Start\FilterConfig.cs
	namespace 	
xChatWeb
 
{ 
public 

class 
FilterConfig 
{ 
public		 
static		 
void		 !
RegisterGlobalFilters		 0
(		0 1"
GlobalFilterCollection		1 G
filters		H O
)		O P
{

 	
filters 
. 
Add 
( 
new  
HandleErrorAttribute 0
(0 1
)1 2
)2 3
;3 4
filters 
. 
Add 
( 
new 
VerifySession )
() *
)* +
)+ ,
;, -
} 	
} 
} »
>D:\repositoriosGit\Chat\Chat\xChatWeb\App_Start\RouteConfig.cs
	namespace 	
xChatWeb
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} Õi
CD:\repositoriosGit\Chat\Chat\xChatWeb\Controllers\HomeController.cs
	namespace 	
xChatWeb
 
. 
Controllers 
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
public 
ActionResult 
Index !
(! "
string" (
paramId) 0
,0 1
string2 8

paramAppId9 C
,C D
stringE K

paramRolIdL V
)V W
{ 	
String 
originalParamId "
=# $
paramId% ,
;, -
String 
originalParamAppId %
=& '

paramAppId( 2
;2 3
String 
originalParamRolId %
=& '

paramRolId( 2
;2 3
ViewBag 
. 
error 
= 
$str 
; 
ObjectResult 
< 
UserRoleType %
>% &
resultRolUser' 4
=5 6
new7 :
ObjectResult; G
<G H
UserRoleTypeH T
>T U
(U V
)V W
;W X
ObjectRequest 
< 
string  
>  !

objectUser" ,
=- .
new/ 2
ObjectRequest3 @
<@ A
stringA G
>G H
(H I
)I J
{   
SenderObject!! 
=!! 
$"!! !
{!!! "
originalParamId!!" 1
}!!1 2
;!!2 3
"!!3 4
}"" 
;"" 
resultRolUser## 
=## 
RequestService## *
.##* +
Execute##+ 2
<##2 3
UserRoleType##3 ?
,##? @
string##A G
>##G H
(##H I
	Constants##I R
.##R S
UrlApiService##S `
.##` a
UsersGetRoleType##a q
,##q r
$str##s y
,##y z

objectUser	##{ Ö
)
##Ö Ü
;
##Ü á
if$$ 
($$ 
resultRolUser$$ 
.$$ 
Id$$  
>$$! "
$num$$# $
)$$$ %
{%% 
if&& 
(&& 
resultRolUser&& !
.&&! "
Id&&" $
==&&& (
(&&) *
Int32&&* /
)&&/ 0
EnumRolTypeChat&&0 ?
.&&? @
Agent&&@ E
)&&E F
{'' 
ObjectRequest,, !
<,,! "
string,," (
>,,( )
objectRequest,,* 7
=,,8 9
new,,: =
ObjectRequest,,> K
<,,K L
string,,L R
>,,R S
(,,S T
),,T U
{-- 
SenderObject// $
=//% &
$"//' )
{//) *
originalParamId//* 9
}//9 :
;//: ;
{//; <
originalParamAppId//< N
}//N O
;//O P
{//P Q
originalParamRolId//Q c
}//c d
"//d e
}00 
;00 
ObjectResultList22 $
<22$ %!
AccountManagerConnect22% :
>22: ;
	lstAgents22< E
=22F G
RequestService22H V
.22V W
ExecuteList22W b
<22b c!
AccountManagerConnect22c x
,22x y
string	22z Ä
>
22Ä Å
(
22Å Ç
	Constants
22Ç ã
.
22ã å
UrlApiService
22å ô
.
22ô ö#
GetAccountManagerById
22ö Ø
,33 
$str33  
,44 
objectRequest44 '
)55 
;55 
ObjectResultList77 $
<77$ %!
AccountManagerConnect77% :
>77: ;
lstAgentResult77< J
=77K L
	lstAgents77M V
;77V W
ViewBag88 
.88 
AgentActive88 '
=88( )
lstAgentResult88* 8
;888 9
ViewBag99 
.99 
RolType99 #
=99$ %
(99& '
Int3299' ,
)99, -
EnumRolTypeChat99- <
.99< =
Agent99= B
;99B C
}:: 
if<< 
(<< 
resultRolUser<< !
.<<! "
Id<<" $
==<<% '
(<<( )
Int32<<) .
)<<. /
EnumRolTypeChat<</ >
.<<> ?
Manager<<? F
)<<F G
{== 
ObjectRequestBB !
<BB! "
stringBB" (
>BB( )
objectRequestBB* 7
=BB8 9
newBB: =
ObjectRequestBB> K
<BBK L
stringBBL R
>BBR S
(BBS T
)BBT U
{CC 
SenderObjectEE $
=EE% &
$"EE' )
{EE) *
originalParamIdEE* 9
}EE9 :
;EE: ;
"EE; <
}FF 
;FF 
ObjectResultListHH $
<HH$ %!
AccountManagerConnectHH% :
>HH: ;
lstAgentsByManagerHH< N
=HHO P
RequestServiceHHQ _
.HH_ `
ExecuteListHH` k
<HHk l"
AccountManagerConnect	HHl Å
,
HHÅ Ç
string
HHÉ â
>
HHâ ä
(
HHä ã
	Constants
HHã î
.
HHî ï
UrlApiService
HHï ¢
.
HH¢ £#
GetListAgentByManager
HH£ ∏
,II 
$strII  
,JJ 
objectRequestJJ '
)KK 
;KK 
ObjectResultListMM $
<MM$ %!
AccountManagerConnectMM% :
>MM: ;
lstAgentResultMM< J
=MMK L
lstAgentsByManagerMMM _
;MM_ `
ViewBagNN 
.NN 
ListAgentByManagerNN .
=NN/ 0
lstAgentResultNN1 ?
;NN? @
ViewBagOO 
.OO 
RolTypeOO #
=OO$ %
(OO& '
Int32OO' ,
)OO, -
EnumRolTypeChatOO- <
.OO< =
ManagerOO= D
;OOD E
ViewBagPP 
.PP 
	ManagetIdPP %
=PP& '
lstAgentsByManagerPP( :
.PP: ;
IdPP; =
;PP= >
}SS 
}VV 
returnYY 
ViewYY 
(YY 
)YY 
;YY 
}ZZ 	
[\\ 	
HttpPost\\	 
]\\ 
public]] 

JsonResult]] 
MyConversationShow]] ,
(]], -
String]]- 3
data]]4 8
)]]8 9
{^^ 	
ObjectResultList__ 
<__ &
ConversationResponseEntity__ 7
>__7 8
listConversations__9 J
=__K L
null__M Q
;__Q R
try`` 
{aa 
VMUserConnectbb 
	modelDatabb '
=bb( )
JsonConvertbb* 5
.bb5 6
DeserializeObjectbb6 G
<bbG H
VMUserConnectbbH U
>bbU V
(bbV W
databbW [
)bb[ \
;bb\ ]
ifdd 
(dd 
	modelDatadd 
.dd 
UserConnectdd )
.dd) *
ChatIddd* 0
>dd1 2
$numdd3 4
&&dd5 7
	modelDatadd8 A
.ddA B
UserConnectddB M
.ddM N
AgentIdddN U
>ddV W
$numddX Y
)ddY Z
{ee 
ObjectRequestgg !
<gg! "
stringgg" (
>gg( )
objectRequestgg* 7
=gg8 9
newgg: =
ObjectRequestgg> K
<ggK L
stringggL R
>ggR S
(ggS T
)ggT U
{hh 
SenderObjectii $
=ii% &
$"ii' )
{ii) *
	modelDataii* 3
.ii3 4
UserConnectii4 ?
.ii? @
ChatIdii@ F
}iiF G
;iiG H
{iiH I
	modelDataiiI R
.iiR S
UserConnectiiS ^
.ii^ _
AgentIdii_ f
}iif g
;iig h
"iih i
}jj 
;jj 
listConversationsll %
=ll& '
RequestServicell( 6
.ll6 7
ExecuteListll7 B
<llB C&
ConversationResponseEntityllC ]
,ll] ^
stringll_ e
>lle f
(llf g
	Constantsllg p
.llp q
UrlApiServicellq ~
.ll~ 0
#GetListConversationByChatAndAgentId	ll ¢
,mm 
$strmm 
,nn 
objectRequestnn #
)nn# $
;nn$ %
}oo 
}rr 
catchss 
(ss 
	Exceptionss 
exss 
)ss  
{tt 
throwuu 
exuu 
;uu 
}vv 
returnww 
Jsonww 
(ww 
listConversationsww )
)ww) *
;ww* +
}xx 	
[zz 	
HttpPostzz	 
]zz 
public{{ 

JsonResult{{ 
GetListUserByAgent{{ ,
({{, -
String{{- 3
data{{4 8
){{8 9
{|| 	
ObjectResultList}} 
<}} 
UserConnect}} (
>}}( )
lstUserConnect}}* 8
=}}9 :
null}}; ?
;}}? @
try~~ 
{ 
VMAccountManager
ÄÄ  
	modelData
ÄÄ! *
=
ÄÄ+ ,
JsonConvert
ÄÄ- 8
.
ÄÄ8 9
DeserializeObject
ÄÄ9 J
<
ÄÄJ K
VMAccountManager
ÄÄK [
>
ÄÄ[ \
(
ÄÄ\ ]
data
ÄÄ] a
)
ÄÄa b
;
ÄÄb c
if
ÇÇ 
(
ÇÇ 
	modelData
ÇÇ 
.
ÇÇ "
AccountManagerEntity
ÇÇ 2
.
ÇÇ2 3
AccountUserId
ÇÇ3 @
>
ÇÇA B
$num
ÇÇC D
)
ÇÇD E
{
ÉÉ 
ObjectRequest
ÖÖ !
<
ÖÖ! "
int
ÖÖ" %
>
ÖÖ% &
objectRequest
ÖÖ' 4
=
ÖÖ5 6
new
ÖÖ7 :
ObjectRequest
ÖÖ; H
<
ÖÖH I
int
ÖÖI L
>
ÖÖL M
(
ÖÖM N
)
ÖÖN O
{
ÜÜ 
SenderObject
áá $
=
áá% &
	modelData
áá' 0
.
áá0 1"
AccountManagerEntity
áá1 E
.
ááE F
AccountUserId
ááF S
}
àà 
;
àà 
lstUserConnect
ää "
=
ää# $
RequestService
ää% 3
.
ää3 4
ExecuteList
ää4 ?
<
ää? @
UserConnect
ää@ K
,
ääK L
int
ääM P
>
ääP Q
(
ääQ R
	Constants
ääR [
.
ää[ \
UrlApiService
ää\ i
.
ääi j,
GetListUserByAccountManagerIdääj á
,
ãã 
$str
ãã 
,
åå 
objectRequest
åå #
)
åå# $
;
åå$ %
}
çç 
}
êê 
catch
ëë 
(
ëë 
	Exception
ëë 
ex
ëë 
)
ëë  
{
íí 
throw
ìì 
ex
ìì 
;
ìì 
}
îî 
return
ïï 
Json
ïï 
(
ïï 
lstUserConnect
ïï &
)
ïï& '
;
ïï' (
}
ññ 	
public
òò 
ActionResult
òò 
About
òò !
(
òò! "
)
òò" #
{
ôô 	
ViewBag
öö 
.
öö 
Message
öö 
=
öö 
$str
öö B
;
ööB C
return
úú 
View
úú 
(
úú 
)
úú 
;
úú 
}
ùù 	
public
üü 
ActionResult
üü 
Contact
üü #
(
üü# $
)
üü$ %
{
†† 	
ViewBag
°° 
.
°° 
Message
°° 
=
°° 
$str
°° 2
;
°°2 3
ObjectRequest
ßß 
<
ßß 
int
ßß 
>
ßß 
objectRequest
ßß ,
=
ßß- .
new
ßß/ 2
ObjectRequest
ßß3 @
<
ßß@ A
int
ßßA D
>
ßßD E
(
ßßE F
)
ßßF G
{
ßßH I
SenderObject
ßßJ V
=
ßßW X
$num
ßßY Z
}
ßß[ \
;
ßß\ ]
ObjectResult
©© 
<
©© 
ListUserConnect
©© (
>
©©( )
lista
©©* /
=
©©0 1
RequestService
©©2 @
.
©©@ A
Execute
©©A H
<
©©H I
ListUserConnect
©©I X
,
©©X Y
int
©©Z ]
>
©©] ^
(
©©^ _
	Constants
©©_ h
.
©©h i
UrlApiService
©©i v
.
©©v w3
$GetListUserConnectByAccountManagerId©©w õ
,
™™ 
$str
™™ 
,
´´ 
objectRequest
´´ 
)
´´  
;
´´  !
objectRequest
∞∞ 
=
∞∞ 
new
∞∞ 
ObjectRequest
∞∞  -
<
∞∞- .
int
∞∞. 1
>
∞∞1 2
(
∞∞2 3
)
∞∞3 4
{
∞∞5 6
SenderObject
∞∞7 C
=
∞∞D E
$num
∞∞F G
}
∞∞H I
;
∞∞I J
ObjectResultList
≤≤ 
<
≤≤ (
ConversationResponseEntity
≤≤ 7
>
≤≤7 8
listConversations
≤≤9 J
=
≤≤K L
RequestService
≤≤M [
.
≤≤[ \
ExecuteList
≤≤\ g
<
≤≤g h)
ConversationResponseEntity≤≤h Ç
,≤≤Ç É
int≤≤Ñ á
>≤≤á à
(≤≤à â
	Constants≤≤â í
.≤≤í ì
UrlApiService≤≤ì †
.≤≤† °+
GetListConversationByChatId≤≤° º
,
≥≥ 
$str
≥≥ 
,
¥¥ 
objectRequest
¥¥ 
)
¥¥  
;
¥¥  !
return
∂∂ 
View
∂∂ 
(
∂∂ 
lista
∂∂ 
)
∂∂ 
;
∂∂ 
}
∑∑ 	
}
ππ 
}∫∫ ∆d
FD:\repositoriosGit\Chat\Chat\xChatWeb\Controllers\ManagerController.cs
	namespace 	
xChatWeb
 
. 
Controllers 
{ 
public 

class 
ManagerController "
:# $

Controller% /
{ 
public 
ActionResult 
Index !
(! "
string" (
paramId) 0
,0 1
string2 8

paramAppId9 C
,C D
stringE K

paramRolIdL V
)V W
{ 	
String 
originalParamId "
=# $
paramId% ,
;, -
String 
originalParamAppId %
=& '

paramAppId( 2
;2 3
String 
originalParamRolId %
=& '

paramRolId( 2
;2 3
ViewBag 
. 
error 
= 
$str 
; 
ObjectResult!! 
<!! 
UserRoleType!! %
>!!% &
resultRolUser!!' 4
=!!5 6
new!!7 :
ObjectResult!!; G
<!!G H
UserRoleType!!H T
>!!T U
(!!U V
)!!V W
;!!W X
ObjectRequest"" 
<"" 
string""  
>""  !

objectUser""" ,
=""- .
new""/ 2
ObjectRequest""3 @
<""@ A
string""A G
>""G H
(""H I
)""I J
{## 
SenderObject$$ 
=$$ 
$"$$ !
{$$! "
originalParamId$$" 1
}$$1 2
;$$2 3
"$$3 4
}%% 
;%% 
resultRolUser&& 
=&& 
RequestService&& *
.&&* +
Execute&&+ 2
<&&2 3
UserRoleType&&3 ?
,&&? @
string&&A G
>&&G H
(&&H I
	Constants&&I R
.&&R S
UrlApiService&&S `
.&&` a
UsersGetRoleType&&a q
,&&q r
$str&&s y
,&&y z

objectUser	&&{ Ö
)
&&Ö Ü
;
&&Ü á
if'' 
('' 
resultRolUser'' 
.'' 
Id''  
>''! "
$num''# $
)''$ %
{(( 
if)) 
()) 
resultRolUser)) !
.))! "
Id))" $
==))% '
())( )
Int32))) .
))). /
EnumRolTypeChat))/ >
.))> ?
Manager))? F
)))F G
{** 
ObjectRequest// !
<//! "
string//" (
>//( )
objectRequest//* 7
=//8 9
new//: =
ObjectRequest//> K
<//K L
string//L R
>//R S
(//S T
)//T U
{00 
SenderObject22 $
=22% &
$"22' )
{22) *
originalParamId22* 9
}229 :
;22: ;
"22; <
}33 
;33 
ObjectResultList55 $
<55$ %!
AccountManagerConnect55% :
>55: ;
lstAgentsByManager55< N
=55O P
RequestService55Q _
.55_ `
ExecuteList55` k
<55k l"
AccountManagerConnect	55l Å
,
55Å Ç
string
55É â
>
55â ä
(
55ä ã
	Constants
55ã î
.
55î ï
UrlApiService
55ï ¢
.
55¢ £#
GetListAgentByManager
55£ ∏
,66 
$str66  
,77 
objectRequest77 '
)88 
;88 
ObjectResultList:: $
<::$ %!
AccountManagerConnect::% :
>::: ;
lstAgentResult::< J
=::K L
lstAgentsByManager::M _
;::_ `
ViewBag;; 
.;; 
ListAgentByManager;; .
=;;/ 0
lstAgentResult;;1 ?
;;;? @
ViewBag<< 
.<< 
RolType<< #
=<<$ %
(<<& '
Int32<<' ,
)<<, -
EnumRolTypeChat<<- <
.<<< =
Manager<<= D
;<<D E
ViewBag== 
.== 
	ManagetId== %
===& '
lstAgentsByManager==( :
.==: ;
Id==; =
;=== >
ViewBag>> 
.>> 

ManageName>> &
=>>' (
(>>) *
lstAgentsByManager>>* <
.>>< =
Elements>>= E
==>>F H
null>>I M
||>>N P
lstAgentsByManager>>Q c
.>>c d
Elements>>d l
.>>l m
Count>>m r
==>>s u
$num>>v w
)>>w x
?>>y z
$str>>{ }
:>>~  
lstAgentsByManager
>>Ä í
.
>>í ì
Elements
>>ì õ
[
>>õ ú
$num
>>ú ù
]
>>ù û
.
>>û ü
ManagerName
>>ü ™
;
>>™ ´
}?? 
}AA 
returnEE 
ViewEE 
(EE 
)EE 
;EE 
}FF 	
[HH 	
HttpPostHH	 
]HH 
publicII 

JsonResultII 
MyConversationShowII ,
(II, -
StringII- 3
dataII4 8
)II8 9
{JJ 	
ObjectResultListKK 
<KK &
ConversationResponseEntityKK 7
>KK7 8
listConversationsKK9 J
=KKK L
nullKKM Q
;KKQ R
tryLL 
{MM 
VMUserConnectNN 
	modelDataNN '
=NN( )
JsonConvertNN* 5
.NN5 6
DeserializeObjectNN6 G
<NNG H
VMUserConnectNNH U
>NNU V
(NNV W
dataNNW [
)NN[ \
;NN\ ]
ifPP 
(PP 
	modelDataPP 
.PP 
UserConnectPP )
.PP) *
ChatIdPP* 0
>PP1 2
$numPP3 4
&&PP5 7
	modelDataPP8 A
.PPA B
UserConnectPPB M
.PPM N
AgentIdPPN U
>PPV W
$numPPX Y
)PPY Z
{QQ 
ObjectRequestSS !
<SS! "
stringSS" (
>SS( )
objectRequestSS* 7
=SS8 9
newSS: =
ObjectRequestSS> K
<SSK L
stringSSL R
>SSR S
(SSS T
)SST U
{TT 
SenderObjectUU $
=UU% &
$"UU' )
{UU) *
	modelDataUU* 3
.UU3 4
UserConnectUU4 ?
.UU? @
ChatIdUU@ F
}UUF G
;UUG H
{UUH I
	modelDataUUI R
.UUR S
UserConnectUUS ^
.UU^ _
AgentIdUU_ f
}UUf g
;UUg h
"UUh i
}VV 
;VV 
listConversationsXX %
=XX& '
RequestServiceXX( 6
.XX6 7
ExecuteListXX7 B
<XXB C&
ConversationResponseEntityXXC ]
,XX] ^
stringXX_ e
>XXe f
(XXf g
	ConstantsXXg p
.XXp q
UrlApiServiceXXq ~
.XX~ 0
#GetListConversationByChatAndAgentId	XX ¢
,YY 
$strYY 
,ZZ 
objectRequestZZ #
)ZZ# $
;ZZ$ %
}[[ 
}^^ 
catch__ 
(__ 
	Exception__ 
ex__ 
)__  
{`` 
throwaa 
exaa 
;aa 
}bb 
returncc 
Jsoncc 
(cc 
listConversationscc )
)cc) *
;cc* +
}dd 	
[ff 	
HttpPostff	 
]ff 
publicgg 

JsonResultgg '
MyConversationShowByManagergg 5
(gg5 6
Stringgg6 <
datagg= A
)ggA B
{hh 	
ObjectResultListii 
<ii &
ConversationResponseEntityii 7
>ii7 8
listConversationsii9 J
=iiK L
nulliiM Q
;iiQ R
tryjj 
{kk 
VMUserConnectll 
	modelDatall '
=ll( )
JsonConvertll* 5
.ll5 6
DeserializeObjectll6 G
<llG H
VMUserConnectllH U
>llU V
(llV W
datallW [
)ll[ \
;ll\ ]
ifnn 
(nn 
	modelDatann 
.nn 
UserConnectnn )
.nn) *
ChatIdnn* 0
>nn1 2
$numnn3 4
&&nn5 7
	modelDatann8 A
.nnA B
UserConnectnnB M
.nnM N
AgentIdnnN U
>nnV W
$numnnX Y
)nnY Z
{oo 
ObjectRequestqq !
<qq! "
stringqq" (
>qq( )
objectRequestqq* 7
=qq8 9
newqq: =
ObjectRequestqq> K
<qqK L
stringqqL R
>qqR S
(qqS T
)qqT U
{rr 
SenderObjectss $
=ss% &
$"ss' )
{ss) *
	modelDatass* 3
.ss3 4
UserConnectss4 ?
.ss? @
ChatIdss@ F
}ssF G
;ssG H
{ssH I
	modelDatassI R
.ssR S
UserConnectssS ^
.ss^ _
AgentIdss_ f
}ssf g
;ssg h
"ssh i
}tt 
;tt 
listConversationsvv %
=vv& '
RequestServicevv( 6
.vv6 7
ExecuteListvv7 B
<vvB C&
ConversationResponseEntityvvC ]
,vv] ^
stringvv_ e
>vve f
(vvf g
	Constantsvvg p
.vvp q
UrlApiServicevvq ~
.vv~ 2
%GetListConversationByChatAndManagerId	vv §
,ww 
$strww 
,xx 
objectRequestxx #
)xx# $
;xx$ %
}yy 
}|| 
catch}} 
(}} 
	Exception}} 
ex}} 
)}}  
{~~ 
throw 
ex 
; 
}
ÄÄ 
return
ÅÅ 
Json
ÅÅ 
(
ÅÅ 
listConversations
ÅÅ )
)
ÅÅ) *
;
ÅÅ* +
}
ÇÇ 	
[
ÑÑ 	
HttpPost
ÑÑ	 
]
ÑÑ 
public
ÖÖ 

JsonResult
ÖÖ  
GetListUserByAgent
ÖÖ ,
(
ÖÖ, -
String
ÖÖ- 3
data
ÖÖ4 8
)
ÖÖ8 9
{
ÜÜ 	
ObjectResultList
áá 
<
áá 
UserConnect
áá (
>
áá( )
lstUserConnect
áá* 8
=
áá9 :
null
áá; ?
;
áá? @
try
àà 
{
ââ 
VMAccountManager
ää  
	modelData
ää! *
=
ää+ ,
JsonConvert
ää- 8
.
ää8 9
DeserializeObject
ää9 J
<
ääJ K
VMAccountManager
ääK [
>
ää[ \
(
ää\ ]
data
ää] a
)
ääa b
;
ääb c
if
åå 
(
åå 
	modelData
åå 
.
åå "
AccountManagerEntity
åå 2
.
åå2 3
AccountUserId
åå3 @
>
ååA B
$num
ååC D
)
ååD E
{
çç 
ObjectRequest
èè !
<
èè! "
int
èè" %
>
èè% &
objectRequest
èè' 4
=
èè5 6
new
èè7 :
ObjectRequest
èè; H
<
èèH I
int
èèI L
>
èèL M
(
èèM N
)
èèN O
{
êê 
SenderObject
ëë $
=
ëë% &
	modelData
ëë' 0
.
ëë0 1"
AccountManagerEntity
ëë1 E
.
ëëE F
AccountUserId
ëëF S
}
íí 
;
íí 
lstUserConnect
îî "
=
îî# $
RequestService
îî% 3
.
îî3 4
ExecuteList
îî4 ?
<
îî? @
UserConnect
îî@ K
,
îîK L
int
îîM P
>
îîP Q
(
îîQ R
	Constants
îîR [
.
îî[ \
UrlApiService
îî\ i
.
îîi j,
GetListUserByAccountManagerIdîîj á
,
ïï 
$str
ïï 
,
ññ 
objectRequest
ññ #
)
ññ# $
;
ññ$ %
}
óó 
}
öö 
catch
õõ 
(
õõ 
	Exception
õõ 
ex
õõ 
)
õõ  
{
úú 
throw
ùù 
ex
ùù 
;
ùù 
}
ûû 
return
üü 
Json
üü 
(
üü 
lstUserConnect
üü &
)
üü& '
;
üü' (
}
†† 	
public
¢¢ 
ActionResult
¢¢ 
About
¢¢ !
(
¢¢! "
)
¢¢" #
{
££ 	
ViewBag
§§ 
.
§§ 
Message
§§ 
=
§§ 
$str
§§ B
;
§§B C
return
¶¶ 
View
¶¶ 
(
¶¶ 
)
¶¶ 
;
¶¶ 
}
ßß 	
public
©© 
ActionResult
©© 
Contact
©© #
(
©©# $
)
©©$ %
{
™™ 	
ViewBag
´´ 
.
´´ 
Message
´´ 
=
´´ 
$str
´´ 2
;
´´2 3
return
≠≠ 
View
≠≠ 
(
≠≠ 
)
≠≠ 
;
≠≠ 
}
ÆÆ 	
}
ØØ 
}∞∞ ú<
ED:\repositoriosGit\Chat\Chat\xChatWeb\Controllers\ReportController.cs
	namespace 	
xChatWeb
 
. 
Controllers 
{ 
public		 

class		 
ReportController		 !
:		" #

Controller		$ .
{

 
private 
readonly 
VMReportFilter '
filter( .
=/ 0
new1 4
VMReportFilter5 C
(C D
)D E
;E F
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 

ListMarket 
=  
MasterContainer! 0
.0 1
GetList1 8
(8 9
EntityMasterEnum9 I
.I J
MarketJ P
)P Q
;Q R
return 
View 
( 
filter 
) 
;  
} 	
[!! 	
HttpPost!!	 
]!! 
public"" 
ActionResult"" 
Index"" !
(""! "
VMReportFilter""" 0
vmreport""1 9
)""9 :
{## 	
ViewBag(( 
.(( 

ListMarket(( 
=((  
MasterContainer((! 0
.((0 1
GetList((1 8
(((8 9
EntityMasterEnum((9 I
.((I J
Market((J P
)((P Q
;((Q R
return** 
View** 
(** 
filter** 
)** 
;**  
}++ 	
[-- 	
HttpPost--	 
]-- 
public.. 
PartialViewResult..  
ExecuteReport..! .
(... /
VMReportFilter../ =
vmreport..> F
)..F G
{// 	
ReportFilter44 
filter44 
=44  !
new44" %
ReportFilter44& 2
(442 3
)443 4
{55 
AgentId66 
=66 
vmreport66 "
.66" #
AgentId66# *
,66* +
ConversationDateEnd77 #
=77$ %
vmreport77& .
.77. /
ConversationDateEnd77/ B
,77B C!
ConversationDateStart88 %
=88& '
vmreport88( 0
.880 1!
ConversationDateStart881 F
,88F G
MarketId99 
=99 
vmreport99 #
.99# $
MarketId99$ ,
,99, -
UserId:: 
=:: 
vmreport:: !
.::! "
UserId::" (
};; 
;;; 
var== 
objectRequest== 
=== 
new==  #
ObjectRequest==$ 1
<==1 2
ReportFilter==2 >
>==> ?
(==? @
)==@ A
{==B C
SenderObject==D P
===Q R
filter==S Y
}==Z [
;==[ \
vmreport?? 
.?? 

ReportMain?? 
=??  !
RequestService??" 0
.??0 1
ExecuteList??1 <
<??< =

ReportChat??= G
,??G H
ReportFilter??I U
>??U V
(??V W
	Constants??W `
.??` a
UrlApiService??a n
.??n o
GetReportChat??o |
,@@ 
$str@@ 
,AA 
objectRequestAA 
)AA  
.AA  !
ElementsAA! )
;AA) *
returnEE 
PartialViewEE 
(EE 
$strEE ,
,EE, -
vmreportEE. 6
)EE6 7
;EE7 8
}FF 	
[JJ 	
HttpPostJJ	 
]JJ 
publicKK 
ActionResultKK 
ConversationDetailKK .
(KK. /
stringKK/ 5
agentIdKK6 =
,KK= >
stringKK? E
userIdKKF L
,KKL M
stringKKN T
	dateStartKKU ^
,KK^ _
stringKK` f
dateEndKKg n
,KKn o
stringKKp v
	agentName	KKw Ä
,
KKÄ Å
string
KKÇ à
userName
KKâ ë
)
KKë í
{LL 	
ObjectResultListMM 
<MM &
ConversationResponseEntityMM 7
>MM7 8
listConversationsMM9 J
=MMK L
nullMMM Q
;MMQ R
ObjectRequestOO 
<OO 
stringOO  
>OO  !
objectRequestOO" /
=OO0 1
newOO2 5
ObjectRequestOO6 C
<OOC D
stringOOD J
>OOJ K
(OOK L
)OOL M
{PP 
SenderObjectQQ 
=QQ 
$"QQ !
{QQ! "
agentIdQQ" )
}QQ) *
;QQ* +
{QQ+ ,
userIdQQ, 2
}QQ2 3
;QQ3 4
{QQ4 5
	dateStartQQ5 >
}QQ> ?
;QQ? @
{QQ@ A
dateEndQQA H
}QQH I
"QQI J
}RR 
;RR 
listConversationsTT 
=TT 
RequestServiceTT  .
.TT. /
ExecuteListTT/ :
<TT: ;&
ConversationResponseEntityTT; U
,TTU V
stringTTW ]
>TT] ^
(TT^ _
	ConstantsTT_ h
.TTh i
UrlApiServiceTTi v
.TTv w(
GetListConversationByReport	TTw í
,UU 
$strUU 
,VV 
objectRequestVV 
)VV 
;VV 
ViewBagXX 
.XX 
	AgentNameXX 
=XX 
	agentNameXX  )
;XX) *
ViewBagYY 
.YY 
UserNameYY 
=YY 
userNameYY '
;YY' (
ViewBagZZ 
.ZZ 
	DateStartZZ 
=ZZ 
	dateStartZZ  )
;ZZ) *
ViewBag[[ 
.[[ 
DateEnd[[ 
=[[ 
dateEnd[[ %
;[[% &
return]] 
View]] 
(]] 
listConversations]] )
.]]) *
Elements]]* 2
)]]2 3
;]]3 4
}^^ 	
public`` 

JsonResult`` 
SearchAgenteName`` *
(``* +
string``+ 1
term``2 6
)``6 7
{aa 	
returnbb 
Jsonbb 
(bb 
$strbb 
)bb 
;bb 
}cc 	
publicmm 
PartialViewResultmm  "
ConversationListActionmm! 7
(mm7 8
stringmm8 >
agentIdmm? F
,mmF G
stringmmH N
userIdmmO U
)mmU V
{nn 	
ObjectResultListoo 
<oo &
ConversationResponseEntityoo 7
>oo7 8
listConversationsoo9 J
=ooK L
nullooM Q
;ooQ R
ObjectRequestqq 
<qq 
stringqq  
>qq  !
objectRequestqq" /
=qq0 1
newqq2 5
ObjectRequestqq6 C
<qqC D
stringqqD J
>qqJ K
(qqK L
)qqL M
{rr 
SenderObjectss 
=ss 
$"ss !
{ss! "
agentIdss" )
}ss) *
;ss* +
{ss+ ,
userIdss, 2
}ss2 3
"ss3 4
}tt 
;tt 
listConversationsvv 
=vv 
RequestServicevv  .
.vv. /
ExecuteListvv/ :
<vv: ;&
ConversationResponseEntityvv; U
,vvU V
stringvvW ]
>vv] ^
(vv^ _
	Constantsvv_ h
.vvh i
UrlApiServicevvi v
.vvv w(
GetListConversationByReport	vvw í
,ww 
$strww 
,xx 
objectRequestxx 
)xx 
;xx 
returnzz 
PartialViewzz 
(zz 
$strzz 2
,zz2 3
listConversationszz4 E
.zzE F
ElementszzF N
)zzN O
;zzO P
}{{ 	
} 
}ÄÄ ë
>D:\repositoriosGit\Chat\Chat\xChatWeb\Filters\VerifySession.cs
	namespace 	
xChatWeb
 
. 
Filters 
{		 
public 

class 
VerifySession 
:  !
ActionFilterAttribute! 6
{ 
public 
override 
void 
OnActionExecuting .
(. /"
ActionExecutingContext/ E
filterContextF S
)S T
{ 	
}&& 	
}'' 
}(( €
4D:\repositoriosGit\Chat\Chat\xChatWeb\Global.asax.cs
	namespace		 	
xChatWeb		
 
{

 
public 

class 
MvcApplication 
:  !
System" (
.( )
Web) ,
., -
HttpApplication- <
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} ¸
?D:\repositoriosGit\Chat\Chat\xChatWeb\Models\MasterContainer.cs
	namespace 	
xChatWeb
 
. 
Models 
{		 
public 

class 
MasterContainer  
{ 
private 
static 

Dictionary !
<! "
string" (
,( )
List* .
<. /
EntityMaster/ ;
>; <
>< =
_list> C
=D E
newF I

DictionaryJ T
<T U
stringU [
,[ \
List] a
<a b
EntityMasterb n
>n o
>o p
(p q
)q r
;r s
public 
static 
List 
< 
EntityMaster '
>' (
GetList) 0
(0 1
EntityMasterEnum1 A
entityMasterEnumB R
)R S
{ 	
string 
clave 
= 
entityMasterEnum +
.+ ,
ToString, 4
(4 5
)5 6
;6 7
if 
( 
_list 
== 
null 
||  
!! "
_list" '
.' (
ContainsKey( 3
(3 4
clave4 9
)9 :
): ;
{ 
_list 
[ 
clave 
] 
= 
GetListService -
(- .
entityMasterEnum. >
)> ?
;? @
} 
return 
_list 
[ 
clave 
] 
;  
} 	
private 
static 
List 
< 
EntityMaster (
>( )
GetListService* 8
(8 9
EntityMasterEnum9 I
entityMasterEnumJ Z
)Z [
{ 	
ObjectResultList 
< 
EntityMaster )
>) *
listEntityMaster+ ;
=< =
new> A
ObjectResultListB R
<R S
EntityMasterS _
>_ `
(` a
)a b
;b c
ObjectRequest!! 
<!! 
EntityMasterEnum!! *
>!!* +
objectRequest!!, 9
=!!: ;
new!!< ?
ObjectRequest!!@ M
<!!M N
EntityMasterEnum!!N ^
>!!^ _
(!!_ `
)!!` a
{!!b c
SenderObject!!d p
=!!q r
entityMasterEnum	!!s É
}
!!Ñ Ö
;
!!Ö Ü
listEntityMaster"" 
="" 
RequestService"" -
.""- .
ExecuteList"". 9
<""9 :
EntityMaster"": F
,""F G
EntityMasterEnum""H X
>""X Y
(""Y Z
	Constants""Z c
.""c d
UrlApiService""d q
.""q r 
GetListEntityMaster	""r Ö
,
""Ö Ü
$str
""á ç
,
""ç é
objectRequest
""è ú
)
""ú ù
;
""ù û
return$$ 
listEntityMaster$$ #
.$$# $
Elements$$$ ,
;$$, -
}%% 	
}&& 
}'' √
@D:\repositoriosGit\Chat\Chat\xChatWeb\Models\VMAccountManager.cs
	namespace 	
xChatWeb
 
. 
Models 
{		 
public

 

class

 
VMAccountManager

 !
{ 
public  
AccountManagerEntity # 
AccountManagerEntity$ 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
} 
} ‘
<D:\repositoriosGit\Chat\Chat\xChatWeb\Models\VMBaseEntity.cs
	namespace 	
xChatWeb
 
. 
Models 
{ 
public 

class 
VMBaseEntity 
{		 
public

 
Int32

 
	CodResult

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
String 
Msg 
{ 
get 
;  
set! $
;$ %
}& '
public 
String 
MsgError 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ç
=D:\repositoriosGit\Chat\Chat\xChatWeb\Models\VMChatManager.cs
	namespace 	
xChatWeb
 
. 
Models 
{ 
public 

class 
VMChatManager 
{ 
public 
string 

TitleAgent  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 

TitleUsers		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
TitleConversation

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
public 
List 
< !
AccountManagerConnect )
>) *%
ListAccountManagerConnect+ D
{E F
getG J
;J K
setL O
;O P
}Q R
public 
List 
< 
UserConnect 
>  
ListUserConnects! 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
List 
< 
ConversationEntity &
>& '
ListConversation( 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
} 
} Ú
?D:\repositoriosGit\Chat\Chat\xChatWeb\Models\VMColumnsReport.cs
	namespace 	
xChatWeb
 
. 
Models 
{ 
public 

class 
VMColumnsReport  
{ 
[ 	
Display	 
( 
Name 
= 
$str 
)  
]  !
public 
string 
Agente 
{ 
get "
;" #
set$ '
;' (
}) *
[

 	
Display

	 
(

 
Name

 
=

 
$str

 !
)

! "
]

" #
public 
string 
Usuario 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Display	 
( 
Name 
= 
$str (
)( )
]) *
public 
string 
FechaUltimoMensaje (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} § 
8D:\repositoriosGit\Chat\Chat\xChatWeb\Models\VMReport.cs
	namespace 	
xChatWeb
 
. 
Models 
{ 
public 

class 
VMReport 
{ 
public 
int 
ChatId 
{ 
get 
;  
set! $
;$ %
}& '
public		 
int		 
ChatMessageId		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
int

 
AccountManagerId

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
MarketId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
AccountManagerName (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 

MarketName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
MessageNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 
LastMessageDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
VMReport 
( 
) 
{ 
} 
public 
VMReport 
( 
DataRow 
dataRow  '
)' (
{ 	
ChatId 
= 
Convert 
. 
ToInt32 $
($ %
dataRow% ,
[, -
$str- 5
]5 6
)6 7
;7 8
ChatMessageId 
= 
Convert #
.# $
ToInt32$ +
(+ ,
dataRow, 3
[3 4
$str4 C
]C D
)D E
;E F
AccountManagerId 
= 
Convert &
.& '
ToInt32' .
(. /
dataRow/ 6
[6 7
$str7 I
]I J
)J K
;K L
UserId 
= 
Convert 
. 
ToInt32 $
($ %
dataRow% ,
[, -
$str- 5
]5 6
)6 7
;7 8
MarketId 
= 
Convert 
. 
ToInt32 &
(& '
dataRow' .
[. /
$str/ 9
]9 :
): ;
;; <
AccountManagerName 
=  
dataRow! (
[( )
$str) =
]= >
.> ?
ToString? G
(G H
)H I
;I J
UserName 
= 
dataRow 
[ 
$str )
]) *
.* +
ToString+ 3
(3 4
)4 5
;5 6

MarketName 
= 
dataRow  
[  !
$str! -
]- .
.. /
ToString/ 7
(7 8
)8 9
;9 :
MessageNumber 
= 
Convert #
.# $
ToInt32$ +
(+ ,
dataRow, 3
[3 4
$str4 C
]C D
)D E
;E F
LastMessageDate   
=   
Convert   %
.  % &

ToDateTime  & 0
(  0 1
dataRow  1 8
[  8 9
$str  9 J
]  J K
)  K L
;  L M
}!! 	
}"" 
}## Ú
>D:\repositoriosGit\Chat\Chat\xChatWeb\Models\VMReportFilter.cs
	namespace 	
xChatWeb
 
. 
Models 
{ 
public 

class 
VMReportFilter 
{		 
public

 
int

 
AgentId

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
Display	 
( 
Name 
= 
$str  
)  !
]! "
public 
string 
TituloFiltro "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Display	 
( 
Name 
= 
$str !
)! "
]" #
public 
int 
MarketId 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Display	 
( 
Name 
= 
$str  
)  !
]! "
public 
string 
	AgentName 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Display	 
( 
Name 
= 
$str !
)! "
]" #
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Display	 
( 
Name 
= 
$str %
)% &
]& '
[ 	
DataType	 
( 
DataType 
. 
Date 
)  
]  !
[ 	
DisplayFormat	 
( !
ApplyFormatInEditMode ,
=- .
true/ 3
,3 4
DataFormatString5 E
=F G
$strH X
)X Y
]Y Z
public 
DateTime !
ConversationDateStart -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[ 	
Display	 
( 
Name 
= 
$str "
)" #
]# $
[ 	
DataType	 
( 
DataType 
. 
Date 
)  
]  !
[   	
DisplayFormat  	 
(   !
ApplyFormatInEditMode   ,
=  - .
true  / 3
,  3 4
DataFormatString  5 E
=  F G
$str  H X
)  X Y
]  Y Z
public!! 
DateTime!! 
ConversationDateEnd!! +
{!!, -
get!!. 1
;!!1 2
set!!3 6
;!!6 7
}!!8 9
public## 
VMColumnsReport## 
ColumnReport## +
{##, -
get##. 1
;##1 2
set##3 6
;##6 7
}##8 9
public$$ 
List$$ 
<$$ 

ReportChat$$ 
>$$ 

ReportMain$$  *
{$$+ ,
get$$- 0
;$$0 1
set$$2 5
;$$5 6
}$$7 8
public&& 
VMReportFilter&& 
(&& 
)&& 
{'' 	
ConversationDateEnd)) 
=))  !
DateTime))" *
.))* +
Now))+ .
.)). /
Date))/ 3
;))3 4!
ConversationDateStart** !
=**" #
DateTime**$ ,
.**, -
Now**- 0
.**0 1
Date**1 5
.**5 6
AddDays**6 =
(**= >
-**> ?
$num**? A
)**A B
;**B C
}++ 	
},, 
}-- ¸
>D:\repositoriosGit\Chat\Chat\xChatWeb\Models\VMResultObject.cs
	namespace 	
xChatWeb
 
. 
Models 
{ 
public 

class 
VMResultObject 
<  
Object  &
>& '
:( )
VMBaseEntity* 6
{		 
public

 
Object

 
Data

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} ´
=D:\repositoriosGit\Chat\Chat\xChatWeb\Models\VMUserConnect.cs
	namespace 	
xChatWeb
 
. 
Models 
{ 
public		 

class		 
VMUserConnect		 
{

 
public 
UserConnect 
UserConnect &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} Î
@D:\repositoriosGit\Chat\Chat\xChatWeb\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str #
)# $
]$ %
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
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str %
)% &
]& '
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
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
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *∂:
HD:\repositoriosGit\Chat\Chat\xChatWeb\Services\ServiceIntegrationChat.cs
	namespace 	
xChatWeb
 
. 
Services 
{ 
public

 

sealed

 
class

 "
ServiceIntegrationChat

 .
{ 
private 
static 
readonly "
ServiceIntegrationChat  6
	_instance7 @
=A B
newC F"
ServiceIntegrationChatG ]
(] ^
)^ _
;_ `
public 
static "
ServiceIntegrationChat ,
Instance- 5
{ 	
get 
{ 
return 
	_instance "
;" #
}$ %
} 	
public 
ObjectResultList 
<  !
AccountManagerConnect  5
>5 6
GetAccountManager7 H
(H I
stringI O
paramIdP W
,W X
stringY _

paramAppId` j
,j k
stringl r

paramRolIds }
,} ~
bool	 É
	allAgents
Ñ ç
)
ç é
{ 	
String## 
originalParamId## "
=### $
paramId##% ,
;##, -
String$$ 
originalParamAppId$$ %
=$$& '

paramAppId$$( 2
;$$2 3
String%% 
originalParamRolId%% %
=%%& '

paramRolId%%( 2
;%%2 3
ObjectRequest** 
<** 
string**  
>**  !
objectRequest**" /
=**0 1
new**2 5
ObjectRequest**6 C
<**C D
string**D J
>**J K
(**K L
)**L M
{++ 
SenderObject-- 
=-- 
$"-- !
{--! "
originalParamId--" 1
}--1 2
;--2 3
{--3 4
originalParamAppId--4 F
}--F G
;--G H
{--H I
originalParamRolId--I [
}--[ \
"--\ ]
}.. 
;.. 
ObjectResultList00 
<00 !
AccountManagerConnect00 2
>002 3
	lstAgents004 =
=00> ?
new00@ C
ObjectResultList00D T
<00T U!
AccountManagerConnect00U j
>00j k
(00k l
)00l m
;00m n
try22 
{33 
if44 
(44 
	allAgents44 
)44 
	lstAgents55 
=55 
RequestService55  .
.55. /
ExecuteList55/ :
<55: ;!
AccountManagerConnect55; P
,55P Q
string55R X
>55X Y
(55Y Z
	Constants55Z c
.55c d
UrlApiService55d q
.55q r6
)GetListAccountManagerConnectByModuleAppId	55r õ
,66 
$str66  
,77 
objectRequest77 '
)88 
;88 
else99 
	lstAgents:: 
=:: 
RequestService::  .
.::. /
ExecuteList::/ :
<::: ;!
AccountManagerConnect::; P
,::P Q
string::R X
>::X Y
(::Y Z
	Constants::Z c
.::c d
UrlApiService::d q
.::q r"
GetAccountManagerById	::r á
,;; 
$str;; !
,<< 
objectRequest<< (
)== 
;== 
}?? 
catch@@ 
(@@ 
	Exception@@ 
ex@@ 
)@@  
{AA 
	lstAgentsBB 
.BB 
IdBB 
=BB 
$numBB  
;BB  !
	lstAgentsCC 
.CC 
MessageCC !
=CC" #
exCC$ &
.CC& '
MessageCC' .
;CC. /
}DD 
returnFF 
	lstAgentsFF 
;FF 
}GG 	
publicNN 
ObjectResultListNN 
<NN  
UserConnectNN  +
>NN+ ,#
GetUserConnectByAgentIdNN- D
(NND E
intNNE H
agentIdNNI P
)NNP Q
{OO 	
ObjectResultListPP 
<PP 
UserConnectPP (
>PP( )
lstUserConnectPP* 8
=PP9 :
newPP; >
ObjectResultListPP? O
<PPO P
UserConnectPPP [
>PP[ \
(PP\ ]
)PP] ^
;PP^ _
tryRR 
{SS 
ObjectRequestTT 
<TT 
intTT !
>TT! "
objectRequestTT# 0
=TT1 2
newTT3 6
ObjectRequestTT7 D
<TTD E
intTTE H
>TTH I
(TTI J
)TTJ K
{UU 
SenderObjectVV  
=VV! "
agentIdVV# *
}WW 
;WW 
lstUserConnectYY 
=YY  
RequestServiceYY! /
.YY/ 0
ExecuteListYY0 ;
<YY; <
UserConnectYY< G
,YYG H
intYYI L
>YYL M
(YYM N
	ConstantsYYN W
.YYW X
UrlApiServiceYYX e
.YYe f1
$GetListUserConnectByAccountManagerId	YYf ä
,ZZ 
$strZZ 
,[[ 
objectRequest[[ 
)[[  
;[[  !
}]] 
catch^^ 
(^^ 
	Exception^^ 
ex^^ 
)^^  
{__ 
lstUserConnect`` 
.`` 
Id`` !
=``" #
$num``$ %
;``% &
lstUserConnectaa 
.aa 
Messageaa &
=aa' (
exaa) +
.aa+ ,
Messageaa, 3
;aa3 4
}bb 
returndd 
lstUserConnectdd !
;dd! "
}ee 	
publicll 
ObjectResultListll 
<ll  &
ConversationResponseEntityll  :
>ll: ;
GetConversationll< K
(llK L
intllL O
chatIdllP V
)llV W
{mm 	
ObjectResultListnn 
<nn &
ConversationResponseEntitynn 7
>nn7 8
listConversationsnn9 J
=nnK L
newnnM P
ObjectResultListnnQ a
<nna b&
ConversationResponseEntitynnb |
>nn| }
(nn} ~
)nn~ 
;	nn Ä
trypp 
{qq 
ObjectRequestrr 
<rr 
intrr !
>rr! "
objectRequestrr# 0
=rr1 2
newrr3 6
ObjectRequestrr7 D
<rrD E
intrrE H
>rrH I
(rrI J
)rrJ K
{ss 
SenderObjecttt  
=tt! "
chatIdtt# )
}uu 
;uu 
listConversationsww !
=ww" #
RequestServiceww$ 2
.ww2 3
ExecuteListww3 >
<ww> ?&
ConversationResponseEntityww? Y
,wwY Z
intww[ ^
>ww^ _
(ww_ `
	Constantsww` i
.wwi j
UrlApiServicewwj w
.www x(
GetListConversationByChatId	wwx ì
,xx 
$strxx 
,yy 
objectRequestyy 
)yy  
;yy  !
}zz 
catch{{ 
({{ 
	Exception{{ 
ex{{ 
){{  
{|| 
listConversations}} !
.}}! "
Id}}" $
=}}% &
$num}}' (
;}}( )
listConversations~~ !
.~~! "
Message~~" )
=~~* +
ex~~, .
.~~. /
Message~~/ 6
;~~6 7
} 
return
ÅÅ 
listConversations
ÅÅ $
;
ÅÅ$ %
}
ÇÇ 	
}
ÉÉ 
}ÑÑ ¡
0D:\repositoriosGit\Chat\Chat\xChatWeb\Startup.cs
[ 
assembly 	
:	 

OwinStartup 
( 
typeof 
( 
xChatWeb &
.& '
Startup' .
). /
)/ 0
]0 1
	namespace 	
xChatWeb
 
{ 
public 

class 
Startup 
{		 
public

 
void

 
Configuration

 !
(

! "
IAppBuilder

" -
app

. 1
)

1 2
{ 	
app 
. 

MapSignalR 
( 
) 
; 
} 	
} 
} 