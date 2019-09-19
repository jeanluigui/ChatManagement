�
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
&CamelCasePropertyNamesContractResolver	^ �
(
� �
)
� �
;
� �
} 	
} 
} �
KD:\repositoriosGit\Chat\Chat\xChatAPI\Controllers\ConversationController.cs
	namespace 	
xChatAPI
 
. 
Controllers 
{ 
}�� �
RD:\repositoriosGit\Chat\Chat\xChatAPI\Controllers\ManagerMasterEntityController.cs
	namespace 	
xChatAPI
 
. 
Controllers 
{ 
}66 �
ID:\repositoriosGit\Chat\Chat\xChatAPI\Controllers\SkillAgentController.cs
	namespace 	
xChatAPI
 
. 
Controllers 
{ 
}�� �
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
} ��
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
�� 
originalMessage
�� "
=
��# $ 
conversationEntity
��% 7
.
��7 8
Message
��8 ?
;
��? @
ServiceChatBL
�� 
.
�� 
	Instancia
�� #
.
��# $
ChatMessageCreate
��$ 5
(
��5 6 
conversationEntity
��6 H
)
��H I
;
��I J 
conversationEntity
�� 
.
�� 
Message
�� &
=
��' (
originalMessage
��) 8
;
��8 9
Clients
�� 
.
�� 
Client
�� 
(
��  
conversationEntity
�� -
.
��- .

AgentToken
��. 8
)
��8 9
.
��9 :
receivedFromUser
��: J
(
��J K 
conversationEntity
��K ]
)
��] ^
;
��^ _
Clients
�� 
.
�� 
Caller
�� 
.
�� !
receivedFromManager
�� .
(
��. / 
conversationEntity
��/ A
)
��A B
;
��B C 
ConversationEntity
�� 
objConversation
�� .
=
��/ 0
ServiceChatBL
��1 >
.
��> ?
	Instancia
��? H
.
��H I)
GetAgentAndManagerIdByToken
��I d
(
��d e 
conversationEntity
��e w
.
��w x

AgentToken��x �
)��� �
;��� �
string
�� 
managerToken
�� 
=
��  !
ServiceChatBL
��" /
.
��/ 0
	Instancia
��0 9
.
��9 :"
GetManagerTokenValue
��: N
(
��N O
objConversation
��O ^
)
��^ _
;
��_ `
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
managerToken
��& 2
)
��2 3
)
��3 4
{
�� 
Clients
�� 
.
�� 
Client
�� 
(
�� 
managerToken
�� +
)
��+ ,
.
��, -4
&reloadNewUserConnectUserConnectByAgent
��- S
(
��S T
String
��T Z
.
��Z [
Empty
��[ `
)
��` a
;
��a b
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% & 
conversationEntity
��& 8
.
��8 9
ManagerToken
��9 E
)
��E F
)
��F G
{
�� 
Clients
�� 
.
�� 
Client
�� 
(
��  
conversationEntity
�� 1
.
��1 2
ManagerToken
��2 >
)
��> ?
.
��? @=
/monitor_ReceivedFromUserAndManagerInViewManager
��@ o
(
��o p!
conversationEntity��p �
)��� �
;��� �
}
�� 
else
�� 
{
��  
ConversationEntity
�� "
objConversation2
��# 3
=
��4 5
ServiceChatBL
��6 C
.
��C D
	Instancia
��D M
.
��M N)
GetAgentAndManagerIdByToken
��N i
(
��i j 
conversationEntity
��j |
.
��| }

AgentToken��} �
)��� �
;��� �
if
�� 
(
��  
conversationEntity
�� &
!=
��' )
null
��* .
)
��. / 
conversationEntity
��0 B
.
��B C
AgentId
��C J
=
��K L
objConversation2
��M ]
.
��] ^
AgentId
��^ e
;
��e f
string
�� 
managerToken2
�� $
=
��% &
ServiceChatBL
��' 4
.
��4 5
	Instancia
��5 >
.
��> ?"
GetManagerTokenValue
��? S
(
��S T
objConversation2
��T d
)
��d e
;
��e f
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
managerToken2
��* 7
)
��7 8
)
��8 9
{
�� 
Clients
�� 
.
�� 
Client
�� "
(
��" #
managerToken2
��# 0
)
��0 1
.
��1 2;
-monitor_ReceivedFromUserAndAgentInViewManager
��2 _
(
��_ ` 
conversationEntity
��` r
)
��r s
;
��s t
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 

SendToUser
�� 
(
��  
ConversationEntity
�� 1 
conversationEntity
��2 D
)
��D E
{
�� 	 
conversationEntity
�� 
.
�� 

IsSendUser
�� )
=
��* +
$num
��, -
;
��- .
string
�� 
originalMessage
�� "
=
��# $ 
conversationEntity
��% 7
.
��7 8
Message
��8 ?
;
��? @
ServiceChatBL
�� 
.
�� 
	Instancia
�� #
.
��# $
ChatMessageCreate
��$ 5
(
��5 6 
conversationEntity
��6 H
)
��H I
;
��I J 
conversationEntity
�� 
.
�� 
Message
�� &
=
��' (
originalMessage
��) 8
;
��8 9
Clients
�� 
.
�� 
Client
�� 
(
��  
conversationEntity
�� -
.
��- .
	UserToken
��. 7
)
��7 8
.
��8 9!
receivedFromManager
��9 L
(
��L M 
conversationEntity
��M _
)
��_ `
;
��` a
Clients
�� 
.
�� 
Caller
�� 
.
�� 
receivedFromUser
�� +
(
��+ , 
conversationEntity
��, >
)
��> ?
;
��? @
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% & 
conversationEntity
��& 8
.
��8 9
ManagerToken
��9 E
)
��E F
)
��F G
{
�� 
Clients
�� 
.
�� 
Client
�� 
(
��  
conversationEntity
�� 1
.
��1 2
ManagerToken
��2 >
)
��> ?
.
��? @=
/monitor_ReceivedFromUserAndManagerInViewManager
��@ o
(
��o p!
conversationEntity��p �
)��� �
;��� �
}
�� 
else
�� 
{
��  
ConversationEntity
�� "
objConversation
��# 2
=
��3 4
ServiceChatBL
��5 B
.
��B C
	Instancia
��C L
.
��L M)
GetAgentAndManagerIdByToken
��M h
(
��h i 
conversationEntity
��i {
.
��{ |

AgentToken��| �
)��� �
;��� �
if
�� 
(
��  
conversationEntity
�� &
!=
��' )
null
��* .
)
��. / 
conversationEntity
��0 B
.
��B C
AgentId
��C J
=
��K L
objConversation
��M \
.
��\ ]
AgentId
��] d
;
��d e
string
�� 
managerToken
�� #
=
��$ %
ServiceChatBL
��& 3
.
��3 4
	Instancia
��4 =
.
��= >"
GetManagerTokenValue
��> R
(
��R S
objConversation
��S b
)
��b c
;
��c d
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
managerToken
��* 6
)
��6 7
)
��7 8
{
�� 
Clients
�� 
.
�� 
Client
�� "
(
��" #
managerToken
��# /
)
��/ 0
.
��0 1;
-monitor_ReceivedFromUserAndAgentInViewManager
��1 ^
(
��^ _ 
conversationEntity
��_ q
)
��q r
;
��r s
}
�� 
}
�� 
}
�� 	
public
�� 
void
��  
AccountUserConnect
�� &
(
��& '"
AccountManagerEntity
��' ;"
accountManagerEntity
��< P
)
��P Q
{
�� 	"
accountManagerEntity
��  
.
��  !
Token
��! &
=
��' (
Context
��) 0
.
��0 1
ConnectionId
��1 =
;
��= >
ServiceChatBL
�� 
.
�� 
	Instancia
�� #
.
��# $#
AccountManagerConnect
��$ 9
(
��9 :"
accountManagerEntity
��: N
)
��N O
;
��O P
Clients
�� 
.
�� 
Caller
�� 
.
�� 
sucessConnect
�� (
(
��( )
Context
��) 0
.
��0 1
ConnectionId
��1 =
)
��= >
;
��> ?
}
�� 	
public
�� 
void
�� &
AccountManagerDisconnect
�� ,
(
��, -"
AccountManagerEntity
��- A"
accountManagerEntity
��B V
)
��V W
{
�� 	"
accountManagerEntity
��  
.
��  !
Token
��! &
=
��' (
Context
��) 0
.
��0 1
ConnectionId
��1 =
;
��= >
ServiceChatBL
�� 
.
�� 
	Instancia
�� #
.
��# $&
AccountManagerDisconnect
��$ <
(
��< ="
accountManagerEntity
��= Q
)
��Q R
;
��R S
}
�� 	
public
�� 
void
�� &
UserDisconnectForMangaer
�� ,
(
��, - 
ConversationEntity
��- ? 
conversationEntity
��@ R
)
��R S
{
�� 	 
conversationEntity
�� 
.
�� 

IsSendUser
�� )
=
��* +
$num
��, -
;
��- .
Int32
�� 
success
�� 
=
�� 
ServiceChatBL
�� )
.
��) *
	Instancia
��* 3
.
��3 4&
UserDisconnectForManager
��4 L
(
��L M 
conversationEntity
��M _
)
��_ `
;
��` a
if
�� 
(
�� 
success
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
Clients
�� 
.
�� 
Client
�� 
(
��  
conversationEntity
�� 1
.
��1 2
	UserToken
��2 ;
)
��; <
.
��< =#
serverOrderDisconnect
��= R
(
��R S
$str
��S t
)
��t u
;
��u v 
conversationEntity
�� "
.
��" #
ChatId
��# )
=
��* +
$num
��, -
;
��- .
Clients
�� 
.
�� 
Caller
�� 
.
�� A
3reloadConnectUserConnectByAgentAfterPossesionFinish
�� R
(
��R S 
conversationEntity
��S e
)
��e f
;
��f g
}
�� 
else
�� 
{
��  
conversationEntity
�� "
=
��# $
null
��% )
;
��) *
Clients
�� 
.
�� 
Caller
�� 
.
�� A
3reloadConnectUserConnectByAgentAfterPossesionFinish
�� R
(
��R S 
conversationEntity
��S e
)
��e f
;
��f g
}
�� 
}
�� 	
public
�� 
void
�� $
UserDisconnectForAgent
�� *
(
��* + 
ConversationEntity
��+ = 
conversationEntity
��> P
)
��P Q
{
�� 	 
conversationEntity
�� 
.
�� 

IsSendUser
�� )
=
��* +
$num
��, -
;
��- .
Int32
�� 
success
�� 
=
�� 
ServiceChatBL
�� )
.
��) *
	Instancia
��* 3
.
��3 4&
UserDisconnectForManager
��4 L
(
��L M 
conversationEntity
��M _
)
��_ `
;
��` a
if
�� 
(
�� 
success
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
Clients
�� 
.
�� 
Client
�� 
(
��  
conversationEntity
�� 1
.
��1 2
	UserToken
��2 ;
)
��; <
.
��< =#
serverOrderDisconnect
��= R
(
��R S
$str
��S t
)
��t u
;
��u v
Clients
�� 
.
�� 
Caller
�� 
.
�� 6
(chatUserDisconnectAfterDisconectForAgent
�� G
(
��G H 
conversationEntity
��H Z
)
��Z [
;
��[ \
}
�� 
else
�� 
{
��  
conversationEntity
�� "
=
��# $
null
��% )
;
��) *
Clients
�� 
.
�� 
Caller
�� 
.
�� 6
(chatUserDisconnectAfterDisconectForAgent
�� G
(
��G H 
conversationEntity
��H Z
)
��Z [
;
��[ \
}
�� 
}
�� 	
public
�� 
void
�� &
SetMessageReadForManager
�� ,
(
��, - 
ConversationEntity
��- ? 
conversationEntity
��@ R
)
��R S
{
�� 	 
conversationEntity
�� 
.
�� 

IsSendUser
�� )
=
��* +
$num
��, -
;
��- .
ServiceChatBL
�� 
.
�� 
	Instancia
�� #
.
��# $&
SetMessageReadForManager
��$ <
(
��< = 
conversationEntity
��= O
)
��O P
;
��P Q
}
�� 	
public
�� 
void
�� (
ReloadLoadListAgentConnect
�� .
(
��. / 
ConversationEntity
��/ A
objChat
��B I
)
��I J
{
�� 	
string
�� 
managerToken
�� 
=
��  !
ServiceChatBL
��" /
.
��/ 0
	Instancia
��0 9
.
��9 :"
GetManagerTokenValue
��: N
(
��N O
objChat
��O V
)
��V W
;
��W X
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
managerToken
��& 2
)
��2 3
)
��3 4
{
�� 
ObjectResultList
��  
<
��  !#
AccountManagerConnect
��! 6
>
��6 7
lstAgentResult
��8 F
=
��G H
ServiceChatBL
��I V
.
��V W
	Instancia
��W `
.
��` a#
GetListAgentByManager
��a v
(
��v w
objChat
��w ~
)
��~ 
;�� �
Clients
�� 
.
�� 
Client
�� 
(
�� 
managerToken
�� +
)
��+ ,
.
��, -/
!receivedListAgentsOfNewConnection
��- N
(
��N O
lstAgentResult
��O ]
)
��] ^
;
��^ _
}
�� 
}
�� 	
public
�� 
void
�� 
MoveChatToAgent
�� #
(
��# $ 
ConversationEntity
��$ 6 
conversationEntity
��7 I
)
��I J
{
�� 	
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% & 
conversationEntity
��& 8
.
��8 9
ManagerToken
��9 E
)
��E F
)
��F G
{
�� 
String
�� 
tokenAgentTarget
�� '
=
��( )
ServiceChatBL
��* 7
.
��7 8
	Instancia
��8 A
.
��A B
GetManagerToken
��B Q
(
��Q R 
conversationEntity
��R d
)
��d e
;
��e f
Int32
�� 
success
�� 
=
�� 
ServiceChatBL
��  -
.
��- .
	Instancia
��. 7
.
��7 8 
ConversationMoveTo
��8 J
(
��J K 
conversationEntity
��K ]
)
��] ^
;
��^ _
if
�� 
(
�� 
success
�� 
==
�� 
$num
��  
)
��  !
{
�� 
ServiceChatBL
�� !
.
��! "
	Instancia
��" +
.
��+ ,
ChatMessageCreate
��, =
(
��= > 
conversationEntity
��> P
)
��P Q
;
��Q R
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrEmpty
��  -
(
��- .
tokenAgentTarget
��. >
)
��> ?
)
��? @
Clients
�� 
.
�� 
Client
�� "
(
��" #
tokenAgentTarget
��# 3
)
��3 4
.
��4 5?
1reloadUserConnectByAgentAfterPossesionInViewAgent
��5 f
(
��f g 
conversationEntity
��g y
)
��y z
;
��z {
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrEmpty
��  -
(
��- . 
conversationEntity
��. @
.
��@ A
ManagerToken
��A M
)
��M N
)
��N O
Clients
�� 
.
�� 
Caller
�� "
.
��" #;
-reloadConnectUserConnectByAgentAfterPossesion
��# P
(
��P Q 
conversationEntity
��Q c
)
��c d
;
��d e
Clients
�� 
.
�� 
Client
�� "
(
��" # 
conversationEntity
��# 5
.
��5 6
	UserToken
��6 ?
)
��? @
.
��@ A)
messagePosessionChatToAgent
��A \
(
��\ ] 
conversationEntity
��] o
.
��o p
ManagerToken
��p |
)
��| }
;
��} ~
}
�� 
else
�� 
{
�� 
Clients
�� 
.
�� 
Caller
�� "
.
��" #:
,monitor_messageAgentNotPosesionInViewManager
��# O
(
��O P
-
��P Q
$num
��Q R
)
��R S
;
��S T
}
�� 
}
�� 
else
�� 
{
�� 
String
�� 
tokenAgentOrigin
�� '
=
��( )
ServiceChatBL
��* 7
.
��7 8
	Instancia
��8 A
.
��A B
GetManagerToken
��B Q
(
��Q R 
conversationEntity
��R d
)
��d e
;
��e f
Int32
�� 
success
�� 
=
�� 
ServiceChatBL
��  -
.
��- .
	Instancia
��. 7
.
��7 8 
ConversationMoveTo
��8 J
(
��J K 
conversationEntity
��K ]
)
��] ^
;
��^ _
if
�� 
(
�� 
success
�� 
==
�� 
$num
��  
)
��  !
{
�� 
ServiceChatBL
�� !
.
��! "
	Instancia
��" +
.
��+ ,
ChatMessageCreate
��, =
(
��= > 
conversationEntity
��> P
)
��P Q
;
��Q R
Clients
�� 
.
�� 
Caller
�� "
.
��" #A
3reloadNewUserConnectUserConnectByAgentAfterTransfer
��# V
(
��V W 
conversationEntity
��W i
)
��i j
;
��j k
String
�� 
tokenAgentTarget
�� +
=
��, -
ServiceChatBL
��. ;
.
��; <
	Instancia
��< E
.
��E F
GetManagerToken
��F U
(
��U V 
conversationEntity
��V h
)
��h i
;
��i j
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrEmpty
��  -
(
��- .
tokenAgentTarget
��. >
)
��> ?
)
��? @
Clients
�� 
.
��  
Client
��  &
(
��& '
tokenAgentTarget
��' 7
)
��7 8
.
��8 94
&reloadNewUserConnectUserConnectByAgent
��9 _
(
��_ `
(
��` a 
conversationEntity
��a s
.
��s t
UserName
��t |
==
��} 
null��� �
?��� �
String��� �
.��� �
Empty��� �
:��� �"
conversationEntity��� �
.��� �
UserName��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrEmpty
��  -
(
��- .
tokenAgentOrigin
��. >
)
��> ?
)
��? @
Clients
�� 
.
��  
Client
��  &
(
��& '
tokenAgentOrigin
��' 7
)
��7 8
.
��8 9A
3reloadNewUserConnectUserConnectByAgentAfterTransfer
��9 l
(
��l m 
conversationEntity
��m 
.�� �
ChatId��� �
)��� �
;��� �
Clients
�� 
.
�� 
Client
�� "
(
��" # 
conversationEntity
��# 5
.
��5 6
	UserToken
��6 ?
)
��? @
.
��@ A+
messageTransferSuccessToAgent
��A ^
(
��^ _
)
��_ `
;
��` a
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
success
�� 
==
��  "
-
��# $
$num
��$ %
)
��% &
{
�� 
Clients
�� 
.
��  
Caller
��  &
.
��& '9
+monitor_messageAgentNotConnectInViewManager
��' R
(
��R S
-
��S T
$num
��T U
)
��U V
;
��V W
}
�� 
else
�� 
{
�� 
Clients
�� 
.
��  
Caller
��  &
.
��& '9
+monitor_messageAgentNotConnectInViewManager
��' R
(
��R S
$num
��S T
)
��T U
;
��U V
}
�� 
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
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
} �
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
]##) *�	
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