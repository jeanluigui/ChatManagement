É
?D:\repositoriosGit\Chat\Chat\xChatAPI\App_Start\WebApiConfig.cs
	namespace 	
xChatAPI
 
{ 
public 

static 
class 
WebApiConfig $
{		 
public

 
static

 
void

 
Register

 #
(

# $
HttpConfiguration

$ 5
config

6 <
)

< =
{ 	
config 
. "
MapHttpAttributeRoutes )
() *
)* +
;+ ,
config 
. 
Routes 
. 
MapHttpRoute &
(& '
name 
: 
$str "
," #
routeTemplate 
: 
$str 6
,6 7
defaults 
: 
new 
{ 
id  "
=# $
RouteParameter% 3
.3 4
Optional4 <
}= >
) 
; 
var 
	formatter 
= 
GlobalConfiguration /
./ 0
Configuration0 =
.= >

Formatters> H
.H I
JsonFormatterI V
;V W
	formatter 
. 
SerializerSettings (
.( )
ContractResolver) 9
=: ;
new< ?

Newtonsoft@ J
.J K
JsonK O
.O P
SerializationP ]
.] ^3
&CamelCasePropertyNamesContractResolver	^ „
(
„ …
)
… †
;
† ‡
} 	
} 
} ¼
KD:\repositoriosGit\Chat\Chat\xChatAPI\Controllers\ConversationController.cs
	namespace 	
xChatAPI
 
. 
Controllers 
{ 
}ŽŽ Á
RD:\repositoriosGit\Chat\Chat\xChatAPI\Controllers\ManagerMasterEntityController.cs
	namespace 	
xChatAPI
 
. 
Controllers 
{ 
}66 º
ID:\repositoriosGit\Chat\Chat\xChatAPI\Controllers\SkillAgentController.cs
	namespace 	
xChatAPI
 
. 
Controllers 
{ 
}ßß ½
CD:\repositoriosGit\Chat\Chat\xChatAPI\Controllers\UserController.cs
	namespace 	
xChatAPI
 
. 
Controllers 
{ 
public 

class 
UserController 
:  !
ApiController" /
{ 
} 
} «â
3D:\repositoriosGit\Chat\Chat\xChatAPI\CounterHub.cs
	namespace 	
xChatAPI
 
{ 
public 

class 

CounterHub 
: 
Hub !
{ "
IServiceNotificationBL  
_serviceNotification 3
=4 5
new6 9!
ServiceNotificationBL: O
(O P
)P Q
;Q R
public 
override 
Task 
OnDisconnected +
(+ ,
bool, 0

stopCalled1 ;
); <
{ 	
ConversationEntity 
obj "
=# $
ServiceChatBL% 2
.2 3
	Instancia3 <
.< ='
GetAgentAndManagerIdByToken= X
(X Y
ContextY `
.` a
ConnectionIda m
)m n
;n o
String 
managerToken 
=  !
ServiceChatBL" /
./ 0
	Instancia0 9
.9 : 
GetManagerTokenValue: N
(N O
objO R
)R S
;S T
ObjectResultList 
< 
	ChatToken &
>& '
tokenDestino( 4
=5 6
ServiceChatBL7 D
.D E
	InstanciaE N
.N O
ChatDisconnectedO _
(_ `
Context` g
.g h
ConnectionIdh t
)t u
;u v
if   
(   
!   
String   
.   
IsNullOrEmpty   %
(  % &
managerToken  & 2
)  2 3
)  3 4
{!! 
ObjectResultList""  
<""  !!
AccountManagerConnect""! 6
>""6 7
lstAgentResult""8 F
=""G H
ServiceChatBL""I V
.""V W
	Instancia""W `
.""` a!
GetListAgentByManager""a v
(""v w
obj""w z
)""z {
;""{ |
Clients## 
.## 
Client## 
(## 
managerToken## +
)##+ ,
.##, --
!receivedListAgentsOfNewConnection##- N
(##N O
lstAgentResult##O ]
)##] ^
;##^ _
}%% 
if&& 
(&& 
tokenDestino&& 
!=&& 
null&&  $
&&&&% '
tokenDestino&&( 4
.&&4 5
Elements&&5 =
!=&&> @
null&&A E
&&&&F H
tokenDestino&&I U
.&&U V
Elements&&V ^
.&&^ _
Count&&_ d
>&&e f
$num&&g h
)&&h i
{'' 
foreach(( 
((( 
	ChatToken(( "
item((# '
in((( *
tokenDestino((+ 7
.((7 8
Elements((8 @
)((@ A
{)) 
if,, 
(,, 
item,, 
.,, 
	TypeToken,, &
.,,& '
Equals,,' -
(,,- .
$num,,. /
),,/ 0
),,0 1
{-- 
Clients.. 
...  
Client..  &
(..& '
item..' +
...+ ,
Token.., 1
)..1 2
...2 3
chatUserDisconnect..3 E
(..E F
item..F J
)..J K
;..K L
ConversationEntity// *
objChat//+ 2
=//3 4
ServiceChatBL//5 B
.//B C
	Instancia//C L
.//L M'
GetAgentAndManagerIdByToken//M h
(//h i
item//i m
.//m n
Token//n s
)//s t
;//t u
String00 
tokenManager00 +
=00, -
ServiceChatBL00. ;
.00; <
	Instancia00< E
.00E F 
GetManagerTokenValue00F Z
(00Z [
objChat00[ b
)00b c
;00c d
if11 
(11 
!11 
String11 #
.11# $
IsNullOrEmpty11$ 1
(111 2
tokenManager112 >
)11> ?
)11? @
{11A B
Clients22 #
.22# $
Client22$ *
(22* +
tokenManager22+ 7
)227 8
.228 9
chatUserDisconnect229 K
(22K L
item22L P
)22P Q
;22Q R
}33 
}44 
else55 
{66 
Clients77 
.77  
Client77  &
(77& '
item77' +
.77+ ,
Token77, 1
)771 2
.772 3!
chatManagerDisconnect773 H
(77H I
$str77I m
)77m n
;77n o
}88 
}99 
}:: 
return;; 
base;; 
.;; 
OnDisconnected;; &
(;;& '

stopCalled;;' 1
);;1 2
;;;2 3
}<< 	
publicBB 
overrideBB 
TaskBB 
OnConnectedBB (
(BB( )
)BB) *
{CC 	
ClientsHH 
.HH 
AllHH 
.HH 
	enterUserHH !
(HH! "
)HH" #
;HH# $
stringJJ 
	connectIdJJ 
=JJ 
ContextJJ &
.JJ& '
ConnectionIdJJ' 3
;JJ3 4
stringLL 
nameLL 
=LL 
ContextLL !
.LL! "
UserLL" &
.LL& '
IdentityLL' /
.LL/ 0
NameLL0 4
;LL4 5
returnNN 
baseNN 
.NN 
OnConnectedNN #
(NN# $
)NN$ %
;NN% &
}OO 	
publicUU 
voidUU 
SendToManagerUU !
(UU! "
ConversationEntityUU" 4
conversationEntityUU5 G
)UUG H
{VV 	
conversationEntityWW 
.WW 

IsSendUserWW )
=WW* +
$numWW, -
;WW- .
if]] 
(]] 
conversationEntity]] "
.]]" #
ChatId]]# )
.]]) *
Equals]]* 0
(]]0 1
$num]]1 2
)]]2 3
)]]3 4
{^^ 
conversationEntity__ "
.__" #
	UserToken__# ,
=__- .
Context__/ 6
.__6 7
ConnectionId__7 C
;__C D
conversationEntity`` "
.``" #
ChatId``# )
=``* +
ServiceChatBL``, 9
.``9 :
	Instancia``: C
.``C D

ChatCreate``D N
(``N O
conversationEntity``O a
)``a b
;``b c
ifee 
(ee 
conversationEntityee &
.ee& '
ChatIdee' -
.ee- .
Equalsee. 4
(ee4 5
-ee5 6
$numee6 7
)ee7 8
)ee8 9
{ff  
_serviceNotificationkk (
.kk( )
Sendkk) -
(kk- .
conversationEntitykk. @
)kk@ A
;kkA B
Clientsmm 
.mm 
Callermm "
.mm" #!
chatManagerDisconnectmm# 8
(mm8 9
$strmm9 i
)mmi j
;mmj k
returnoo 
;oo 
}pp 
elsett 
iftt 
(tt 
conversationEntitytt +
.tt+ ,
ChatIdtt, 2
.tt2 3
Equalstt3 9
(tt9 :
-tt: ;
$numtt; <
)tt< =
)tt= >
{uu  
_serviceNotificationvv (
.vv( )
Sendvv) -
(vv- .
conversationEntityvv. @
)vv@ A
;vvA B
Clientsxx 
.xx 
Callerxx "
.xx" #+
chatManagerNoFoundAgentBySkillsxx# B
(xxB C
$strxxC m
)xxm n
;xxn o
returnzz 
;zz 
}{{ 
}}} 
string
ƒƒ 
originalMessage
ƒƒ "
=
ƒƒ# $ 
conversationEntity
ƒƒ% 7
.
ƒƒ7 8
Message
ƒƒ8 ?
;
ƒƒ? @
ServiceChatBL
‰‰ 
.
‰‰ 
	Instancia
‰‰ #
.
‰‰# $
ChatMessageCreate
‰‰$ 5
(
‰‰5 6 
conversationEntity
‰‰6 H
)
‰‰H I
;
‰‰I J 
conversationEntity
ŽŽ 
.
ŽŽ 
Message
ŽŽ &
=
ŽŽ' (
originalMessage
ŽŽ) 8
;
ŽŽ8 9
Clients
““ 
.
““ 
Client
““ 
(
““  
conversationEntity
““ -
.
““- .

AgentToken
““. 8
)
““8 9
.
““9 :
receivedFromUser
““: J
(
““J K 
conversationEntity
““K ]
)
““] ^
;
““^ _
Clients
˜˜ 
.
˜˜ 
Caller
˜˜ 
.
˜˜ !
receivedFromManager
˜˜ .
(
˜˜. / 
conversationEntity
˜˜/ A
)
˜˜A B
;
˜˜B C 
ConversationEntity
ŸŸ 
objConversation
ŸŸ .
=
ŸŸ/ 0
ServiceChatBL
ŸŸ1 >
.
ŸŸ> ?
	Instancia
ŸŸ? H
.
ŸŸH I)
GetAgentAndManagerIdByToken
ŸŸI d
(
ŸŸd e 
conversationEntity
ŸŸe w
.
ŸŸw x

AgentTokenŸŸx ‚
)ŸŸ‚ ƒ
;ŸŸƒ „
string
   
managerToken
   
=
    !
ServiceChatBL
  " /
.
  / 0
	Instancia
  0 9
.
  9 :"
GetManagerTokenValue
  : N
(
  N O
objConversation
  O ^
)
  ^ _
;
  _ `
if
¡¡ 
(
¡¡ 
!
¡¡ 
String
¡¡ 
.
¡¡ 
IsNullOrEmpty
¡¡ %
(
¡¡% &
managerToken
¡¡& 2
)
¡¡2 3
)
¡¡3 4
{
¢¢ 
Clients
££ 
.
££ 
Client
££ 
(
££ 
managerToken
££ +
)
££+ ,
.
££, -4
&reloadNewUserConnectUserConnectByAgent
££- S
(
££S T
String
££T Z
.
££Z [
Empty
££[ `
)
££` a
;
££a b
}
¤¤ 
if
ªª 
(
ªª 
!
ªª 
String
ªª 
.
ªª 
IsNullOrEmpty
ªª %
(
ªª% & 
conversationEntity
ªª& 8
.
ªª8 9
ManagerToken
ªª9 E
)
ªªE F
)
ªªF G
{
«« 
Clients
¬¬ 
.
¬¬ 
Client
¬¬ 
(
¬¬  
conversationEntity
¬¬ 1
.
¬¬1 2
ManagerToken
¬¬2 >
)
¬¬> ?
.
¬¬? @=
/monitor_ReceivedFromUserAndManagerInViewManager
¬¬@ o
(
¬¬o p!
conversationEntity¬¬p ‚
)¬¬‚ ƒ
;¬¬ƒ „
}
­­ 
else
®® 
{
¯¯  
ConversationEntity
°° "
objConversation2
°°# 3
=
°°4 5
ServiceChatBL
°°6 C
.
°°C D
	Instancia
°°D M
.
°°M N)
GetAgentAndManagerIdByToken
°°N i
(
°°i j 
conversationEntity
°°j |
.
°°| }

AgentToken°°} ‡
)°°‡ ˆ
;°°ˆ ‰
if
±± 
(
±±  
conversationEntity
±± &
!=
±±' )
null
±±* .
)
±±. / 
conversationEntity
±±0 B
.
±±B C
AgentId
±±C J
=
±±K L
objConversation2
±±M ]
.
±±] ^
AgentId
±±^ e
;
±±e f
string
²² 
managerToken2
²² $
=
²²% &
ServiceChatBL
²²' 4
.
²²4 5
	Instancia
²²5 >
.
²²> ?"
GetManagerTokenValue
²²? S
(
²²S T
objConversation2
²²T d
)
²²d e
;
²²e f
if
³³ 
(
³³ 
!
³³ 
String
³³ 
.
³³ 
IsNullOrEmpty
³³ )
(
³³) *
managerToken2
³³* 7
)
³³7 8
)
³³8 9
{
´´ 
Clients
µµ 
.
µµ 
Client
µµ "
(
µµ" #
managerToken2
µµ# 0
)
µµ0 1
.
µµ1 2;
-monitor_ReceivedFromUserAndAgentInViewManager
µµ2 _
(
µµ_ ` 
conversationEntity
µµ` r
)
µµr s
;
µµs t
}
¶¶ 
}
·· 
}
¹¹ 	
public
¿¿ 
void
¿¿ 

SendToUser
¿¿ 
(
¿¿  
ConversationEntity
¿¿ 1 
conversationEntity
¿¿2 D
)
¿¿D E
{
ÀÀ 	 
conversationEntity
ÁÁ 
.
ÁÁ 

IsSendUser
ÁÁ )
=
ÁÁ* +
$num
ÁÁ, -
;
ÁÁ- .
string
ÇÇ 
originalMessage
ÇÇ "
=
ÇÇ# $ 
conversationEntity
ÇÇ% 7
.
ÇÇ7 8
Message
ÇÇ8 ?
;
ÇÇ? @
ServiceChatBL
ÌÌ 
.
ÌÌ 
	Instancia
ÌÌ #
.
ÌÌ# $
ChatMessageCreate
ÌÌ$ 5
(
ÌÌ5 6 
conversationEntity
ÌÌ6 H
)
ÌÌH I
;
ÌÌI J 
conversationEntity
ÑÑ 
.
ÑÑ 
Message
ÑÑ &
=
ÑÑ' (
originalMessage
ÑÑ) 8
;
ÑÑ8 9
Clients
ÖÖ 
.
ÖÖ 
Client
ÖÖ 
(
ÖÖ  
conversationEntity
ÖÖ -
.
ÖÖ- .
	UserToken
ÖÖ. 7
)
ÖÖ7 8
.
ÖÖ8 9!
receivedFromManager
ÖÖ9 L
(
ÖÖL M 
conversationEntity
ÖÖM _
)
ÖÖ_ `
;
ÖÖ` a
Clients
ÛÛ 
.
ÛÛ 
Caller
ÛÛ 
.
ÛÛ 
receivedFromUser
ÛÛ +
(
ÛÛ+ , 
conversationEntity
ÛÛ, >
)
ÛÛ> ?
;
ÛÛ? @
if
áá 
(
áá 
!
áá 
String
áá 
.
áá 
IsNullOrEmpty
áá %
(
áá% & 
conversationEntity
áá& 8
.
áá8 9
ManagerToken
áá9 E
)
ááE F
)
ááF G
{
ââ 
Clients
ãã 
.
ãã 
Client
ãã 
(
ãã  
conversationEntity
ãã 1
.
ãã1 2
ManagerToken
ãã2 >
)
ãã> ?
.
ãã? @=
/monitor_ReceivedFromUserAndManagerInViewManager
ãã@ o
(
ãão p!
conversationEntityããp ‚
)ãã‚ ƒ
;ããƒ „
}
ää 
else
åå 
{
ææ  
ConversationEntity
çç "
objConversation
çç# 2
=
çç3 4
ServiceChatBL
çç5 B
.
ççB C
	Instancia
ççC L
.
ççL M)
GetAgentAndManagerIdByToken
ççM h
(
ççh i 
conversationEntity
ççi {
.
çç{ |

AgentTokençç| †
)çç† ‡
;çç‡ ˆ
if
èè 
(
èè  
conversationEntity
èè &
!=
èè' )
null
èè* .
)
èè. / 
conversationEntity
èè0 B
.
èèB C
AgentId
èèC J
=
èèK L
objConversation
èèM \
.
èè\ ]
AgentId
èè] d
;
èèd e
string
éé 
managerToken
éé #
=
éé$ %
ServiceChatBL
éé& 3
.
éé3 4
	Instancia
éé4 =
.
éé= >"
GetManagerTokenValue
éé> R
(
ééR S
objConversation
ééS b
)
ééb c
;
ééc d
if
êê 
(
êê 
!
êê 
String
êê 
.
êê 
IsNullOrEmpty
êê )
(
êê) *
managerToken
êê* 6
)
êê6 7
)
êê7 8
{
ëë 
Clients
ìì 
.
ìì 
Client
ìì "
(
ìì" #
managerToken
ìì# /
)
ìì/ 0
.
ìì0 1;
-monitor_ReceivedFromUserAndAgentInViewManager
ìì1 ^
(
ìì^ _ 
conversationEntity
ìì_ q
)
ììq r
;
ììr s
}
íí 
}
îî 
}
ðð 	
public
÷÷ 
void
÷÷  
AccountUserConnect
÷÷ &
(
÷÷& '"
AccountManagerEntity
÷÷' ;"
accountManagerEntity
÷÷< P
)
÷÷P Q
{
øø 	"
accountManagerEntity
ùù  
.
ùù  !
Token
ùù! &
=
ùù' (
Context
ùù) 0
.
ùù0 1
ConnectionId
ùù1 =
;
ùù= >
ServiceChatBL
úú 
.
úú 
	Instancia
úú #
.
úú# $#
AccountManagerConnect
úú$ 9
(
úú9 :"
accountManagerEntity
úú: N
)
úúN O
;
úúO P
Clients
ûû 
.
ûû 
Caller
ûû 
.
ûû 
sucessConnect
ûû (
(
ûû( )
Context
ûû) 0
.
ûû0 1
ConnectionId
ûû1 =
)
ûû= >
;
ûû> ?
}
üü 	
public
‚‚ 
void
‚‚ &
AccountManagerDisconnect
‚‚ ,
(
‚‚, -"
AccountManagerEntity
‚‚- A"
accountManagerEntity
‚‚B V
)
‚‚V W
{
ƒƒ 	"
accountManagerEntity
„„  
.
„„  !
Token
„„! &
=
„„' (
Context
„„) 0
.
„„0 1
ConnectionId
„„1 =
;
„„= >
ServiceChatBL
…… 
.
…… 
	Instancia
…… #
.
……# $&
AccountManagerDisconnect
……$ <
(
……< ="
accountManagerEntity
……= Q
)
……Q R
;
……R S
}
‡‡ 	
public
 
void
 &
UserDisconnectForMangaer
 ,
(
, - 
ConversationEntity
- ? 
conversationEntity
@ R
)
R S
{
ŽŽ 	 
conversationEntity
 
.
 

IsSendUser
 )
=
* +
$num
, -
;
- .
Int32
”” 
success
”” 
=
”” 
ServiceChatBL
”” )
.
””) *
	Instancia
””* 3
.
””3 4&
UserDisconnectForManager
””4 L
(
””L M 
conversationEntity
””M _
)
””_ `
;
””` a
if
•• 
(
•• 
success
•• 
==
•• 
$num
•• 
)
•• 
{
–– 
Clients
šš 
.
šš 
Client
šš 
(
šš  
conversationEntity
šš 1
.
šš1 2
	UserToken
šš2 ;
)
šš; <
.
šš< =#
serverOrderDisconnect
šš= R
(
ššR S
$str
ššS t
)
ššt u
;
ššu v 
conversationEntity
ŸŸ "
.
ŸŸ" #
ChatId
ŸŸ# )
=
ŸŸ* +
$num
ŸŸ, -
;
ŸŸ- .
Clients
   
.
   
Caller
   
.
   A
3reloadConnectUserConnectByAgentAfterPossesionFinish
   R
(
  R S 
conversationEntity
  S e
)
  e f
;
  f g
}
¢¢ 
else
££ 
{
¤¤  
conversationEntity
¥¥ "
=
¥¥# $
null
¥¥% )
;
¥¥) *
Clients
¦¦ 
.
¦¦ 
Caller
¦¦ 
.
¦¦ A
3reloadConnectUserConnectByAgentAfterPossesionFinish
¦¦ R
(
¦¦R S 
conversationEntity
¦¦S e
)
¦¦e f
;
¦¦f g
}
§§ 
}
¨¨ 	
public
­­ 
void
­­ $
UserDisconnectForAgent
­­ *
(
­­* + 
ConversationEntity
­­+ = 
conversationEntity
­­> P
)
­­P Q
{
®® 	 
conversationEntity
¯¯ 
.
¯¯ 

IsSendUser
¯¯ )
=
¯¯* +
$num
¯¯, -
;
¯¯- .
Int32
´´ 
success
´´ 
=
´´ 
ServiceChatBL
´´ )
.
´´) *
	Instancia
´´* 3
.
´´3 4&
UserDisconnectForManager
´´4 L
(
´´L M 
conversationEntity
´´M _
)
´´_ `
;
´´` a
if
µµ 
(
µµ 
success
µµ 
==
µµ 
$num
µµ 
)
µµ 
{
¶¶ 
Clients
ºº 
.
ºº 
Client
ºº 
(
ºº  
conversationEntity
ºº 1
.
ºº1 2
	UserToken
ºº2 ;
)
ºº; <
.
ºº< =#
serverOrderDisconnect
ºº= R
(
ººR S
$str
ººS t
)
ººt u
;
ººu v
Clients
¿¿ 
.
¿¿ 
Caller
¿¿ 
.
¿¿ 6
(chatUserDisconnectAfterDisconectForAgent
¿¿ G
(
¿¿G H 
conversationEntity
¿¿H Z
)
¿¿Z [
;
¿¿[ \
}
ÀÀ 
else
ÁÁ 
{
ÂÂ  
conversationEntity
ÃÃ "
=
ÃÃ# $
null
ÃÃ% )
;
ÃÃ) *
Clients
ÄÄ 
.
ÄÄ 
Caller
ÄÄ 
.
ÄÄ 6
(chatUserDisconnectAfterDisconectForAgent
ÄÄ G
(
ÄÄG H 
conversationEntity
ÄÄH Z
)
ÄÄZ [
;
ÄÄ[ \
}
ÅÅ 
}
ÆÆ 	
public
ÍÍ 
void
ÍÍ &
SetMessageReadForManager
ÍÍ ,
(
ÍÍ, - 
ConversationEntity
ÍÍ- ? 
conversationEntity
ÍÍ@ R
)
ÍÍR S
{
ÎÎ 	 
conversationEntity
ÏÏ 
.
ÏÏ 

IsSendUser
ÏÏ )
=
ÏÏ* +
$num
ÏÏ, -
;
ÏÏ- .
ServiceChatBL
ÔÔ 
.
ÔÔ 
	Instancia
ÔÔ #
.
ÔÔ# $&
SetMessageReadForManager
ÔÔ$ <
(
ÔÔ< = 
conversationEntity
ÔÔ= O
)
ÔÔO P
;
ÔÔP Q
}
ßß 	
public
áá 
void
áá (
ReloadLoadListAgentConnect
áá .
(
áá. / 
ConversationEntity
áá/ A
objChat
ááB I
)
ááI J
{
ââ 	
string
ãã 
managerToken
ãã 
=
ãã  !
ServiceChatBL
ãã" /
.
ãã/ 0
	Instancia
ãã0 9
.
ãã9 :"
GetManagerTokenValue
ãã: N
(
ããN O
objChat
ããO V
)
ããV W
;
ããW X
if
ää 
(
ää 
!
ää 
String
ää 
.
ää 
IsNullOrEmpty
ää %
(
ää% &
managerToken
ää& 2
)
ää2 3
)
ää3 4
{
åå 
ObjectResultList
ææ  
<
ææ  !#
AccountManagerConnect
ææ! 6
>
ææ6 7
lstAgentResult
ææ8 F
=
ææG H
ServiceChatBL
ææI V
.
ææV W
	Instancia
ææW `
.
ææ` a#
GetListAgentByManager
ææa v
(
ææv w
objChat
ææw ~
)
ææ~ 
;ææ €
Clients
çç 
.
çç 
Client
çç 
(
çç 
managerToken
çç +
)
çç+ ,
.
çç, -/
!receivedListAgentsOfNewConnection
çç- N
(
ççN O
lstAgentResult
ççO ]
)
çç] ^
;
çç^ _
}
èè 
}
ëë 	
public
íí 
void
íí 
MoveChatToAgent
íí #
(
íí# $ 
ConversationEntity
íí$ 6 
conversationEntity
íí7 I
)
ííI J
{
îî 	
if
ïï 
(
ïï 
!
ïï 
String
ïï 
.
ïï 
IsNullOrEmpty
ïï %
(
ïï% & 
conversationEntity
ïï& 8
.
ïï8 9
ManagerToken
ïï9 E
)
ïïE F
)
ïïF G
{
ðð 
String
òò 
tokenAgentTarget
òò '
=
òò( )
ServiceChatBL
òò* 7
.
òò7 8
	Instancia
òò8 A
.
òòA B
GetManagerToken
òòB Q
(
òòQ R 
conversationEntity
òòR d
)
òòd e
;
òòe f
Int32
ôô 
success
ôô 
=
ôô 
ServiceChatBL
ôô  -
.
ôô- .
	Instancia
ôô. 7
.
ôô7 8 
ConversationMoveTo
ôô8 J
(
ôôJ K 
conversationEntity
ôôK ]
)
ôô] ^
;
ôô^ _
if
õõ 
(
õõ 
success
õõ 
==
õõ 
$num
õõ  
)
õõ  !
{
öö 
ServiceChatBL
øø !
.
øø! "
	Instancia
øø" +
.
øø+ ,
ChatMessageCreate
øø, =
(
øø= > 
conversationEntity
øø> P
)
øøP Q
;
øøQ R
if
úú 
(
úú 
!
úú 
String
úú 
.
úú  
IsNullOrEmpty
úú  -
(
úú- .
tokenAgentTarget
úú. >
)
úú> ?
)
úú? @
Clients
üü 
.
üü 
Client
üü "
(
üü" #
tokenAgentTarget
üü# 3
)
üü3 4
.
üü4 5?
1reloadUserConnectByAgentAfterPossesionInViewAgent
üü5 f
(
üüf g 
conversationEntity
üüg y
)
üüy z
;
üüz {
if
þþ 
(
þþ 
!
þþ 
String
þþ 
.
þþ  
IsNullOrEmpty
þþ  -
(
þþ- . 
conversationEntity
þþ. @
.
þþ@ A
ManagerToken
þþA M
)
þþM N
)
þþN O
Clients
€€ 
.
€€ 
Caller
€€ "
.
€€" #;
-reloadConnectUserConnectByAgentAfterPossesion
€€# P
(
€€P Q 
conversationEntity
€€Q c
)
€€c d
;
€€d e
Clients
ƒƒ 
.
ƒƒ 
Client
ƒƒ "
(
ƒƒ" # 
conversationEntity
ƒƒ# 5
.
ƒƒ5 6
	UserToken
ƒƒ6 ?
)
ƒƒ? @
.
ƒƒ@ A)
messagePosessionChatToAgent
ƒƒA \
(
ƒƒ\ ] 
conversationEntity
ƒƒ] o
.
ƒƒo p
ManagerToken
ƒƒp |
)
ƒƒ| }
;
ƒƒ} ~
}
„„ 
else
…… 
{
†† 
Clients
‡‡ 
.
‡‡ 
Caller
‡‡ "
.
‡‡" #:
,monitor_messageAgentNotPosesionInViewManager
‡‡# O
(
‡‡O P
-
‡‡P Q
$num
‡‡Q R
)
‡‡R S
;
‡‡S T
}
ˆˆ 
}
‰‰ 
else
ŠŠ 
{
‹‹ 
String
 
tokenAgentOrigin
 '
=
( )
ServiceChatBL
* 7
.
7 8
	Instancia
8 A
.
A B
GetManagerToken
B Q
(
Q R 
conversationEntity
R d
)
d e
;
e f
Int32
 
success
 
=
 
ServiceChatBL
  -
.
- .
	Instancia
. 7
.
7 8 
ConversationMoveTo
8 J
(
J K 
conversationEntity
K ]
)
] ^
;
^ _
if
 
(
 
success
 
==
 
$num
  
)
  !
{
‘‘ 
ServiceChatBL
““ !
.
““! "
	Instancia
““" +
.
““+ ,
ChatMessageCreate
““, =
(
““= > 
conversationEntity
““> P
)
““P Q
;
““Q R
Clients
•• 
.
•• 
Caller
•• "
.
••" #A
3reloadNewUserConnectUserConnectByAgentAfterTransfer
••# V
(
••V W 
conversationEntity
••W i
)
••i j
;
••j k
String
˜˜ 
tokenAgentTarget
˜˜ +
=
˜˜, -
ServiceChatBL
˜˜. ;
.
˜˜; <
	Instancia
˜˜< E
.
˜˜E F
GetManagerToken
˜˜F U
(
˜˜U V 
conversationEntity
˜˜V h
)
˜˜h i
;
˜˜i j
if
™™ 
(
™™ 
!
™™ 
String
™™ 
.
™™  
IsNullOrEmpty
™™  -
(
™™- .
tokenAgentTarget
™™. >
)
™™> ?
)
™™? @
Clients
›› 
.
››  
Client
››  &
(
››& '
tokenAgentTarget
››' 7
)
››7 8
.
››8 94
&reloadNewUserConnectUserConnectByAgent
››9 _
(
››_ `
(
››` a 
conversationEntity
››a s
.
››s t
UserName
››t |
==
››} 
null››€ „
?››… †
String››‡ 
.›› Ž
Empty››Ž “
:››” •"
conversationEntity››– ¨
.››¨ ©
UserName››© ±
)››± ²
)››² ³
;››³ ´
if
 
(
 
!
 
String
 
.
  
IsNullOrEmpty
  -
(
- .
tokenAgentOrigin
. >
)
> ?
)
? @
Clients
ŸŸ 
.
ŸŸ  
Client
ŸŸ  &
(
ŸŸ& '
tokenAgentOrigin
ŸŸ' 7
)
ŸŸ7 8
.
ŸŸ8 9A
3reloadNewUserConnectUserConnectByAgentAfterTransfer
ŸŸ9 l
(
ŸŸl m 
conversationEntity
ŸŸm 
.ŸŸ €
ChatIdŸŸ€ †
)ŸŸ† ‡
;ŸŸ‡ ˆ
Clients
¢¢ 
.
¢¢ 
Client
¢¢ "
(
¢¢" # 
conversationEntity
¢¢# 5
.
¢¢5 6
	UserToken
¢¢6 ?
)
¢¢? @
.
¢¢@ A+
messageTransferSuccessToAgent
¢¢A ^
(
¢¢^ _
)
¢¢_ `
;
¢¢` a
}
££ 
else
¤¤ 
{
¥¥ 
if
¦¦ 
(
¦¦ 
success
¦¦ 
==
¦¦  "
-
¦¦# $
$num
¦¦$ %
)
¦¦% &
{
§§ 
Clients
¨¨ 
.
¨¨  
Caller
¨¨  &
.
¨¨& '9
+monitor_messageAgentNotConnectInViewManager
¨¨' R
(
¨¨R S
-
¨¨S T
$num
¨¨T U
)
¨¨U V
;
¨¨V W
}
©© 
else
ªª 
{
«« 
Clients
¬¬ 
.
¬¬  
Caller
¬¬  &
.
¬¬& '9
+monitor_messageAgentNotConnectInViewManager
¬¬' R
(
¬¬R S
$num
¬¬S T
)
¬¬T U
;
¬¬U V
}
­­ 
}
®® 
}
¯¯ 
}
°° 	
}
±± 
}²² …
4D:\repositoriosGit\Chat\Chat\xChatAPI\Global.asax.cs
	namespace 	
xChatAPI
 
{		 
public

 

class

 
WebApiApplication

 "
:

# $
System

% +
.

+ ,
Web

, /
.

/ 0
HttpApplication

0 ?
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
GlobalConfiguration 
.  
	Configure  )
() *
WebApiConfig* 6
.6 7
Register7 ?
)? @
;@ A
} 	
} 
} ë
@D:\repositoriosGit\Chat\Chat\xChatAPI\Properties\AssemblyInfo.cs
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
]##) *×	
0D:\repositoriosGit\Chat\Chat\xChatAPI\Startup.cs
[ 
assembly 	
:	 

OwinStartup 
( 
typeof 
( 
xChatAPI &
.& '
Startup' .
). /
)/ 0
]0 1
	namespace

 	
xChatAPI


 
{ 
public 

class 
Startup 
{ 
public 
void 
Configuration !
(! "
IAppBuilder" -
app. 1
)1 2
{ 	
app 
. 
Map 
( 
$str 
, 
map  #
=>$ &
{ 
map 
. 
UseCors 
( 
CorsOptions '
.' (
AllowAll( 0
)0 1
;1 2
var 
hubConfiguration $
=% &
new' *
HubConfiguration+ ;
{< =
}> ?
;? @
map 
. 

RunSignalR 
( 
hubConfiguration /
)/ 0
;0 1
} 
) 
; 
} 	
} 
}   