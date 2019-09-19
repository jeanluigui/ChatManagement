�
CD:\repositoriosGit\Chat\Chat\xChatBusiness\IServiceChatManagerBL.cs
	namespace 	
xChatBusiness
 
{ 
public 

	interface !
IServiceChatManagerBL *
{ 
ObjectResult		 
<		 
bool		 
>		 $
AccountManagerDisconnect		 3
(		3 4
ObjectRequest		4 A
<		A B
int		B E
>		E F
objectRequest		G T
)		T U
;		U V
ObjectResultList

 
<

 !
AccountManagerConnect

 .
>

. /!
GetAccountManagerById

0 E
(

E F
ObjectRequest

F S
<

S T
string

T Z
>

Z [
objectRequest

\ i
)

i j
;

j k
ObjectResultList 
< !
AccountManagerConnect .
>. /5
)GetListAccountManagerConnectByModuleAppId0 Y
(Y Z
ObjectRequestZ g
<g h
stringh n
>n o
objectRequestp }
)} ~
;~ 
ObjectResultList 
< &
ConversationResponseEntity 3
>3 4'
GetListConversationByChatId5 P
(P Q
ObjectRequestQ ^
<^ _
int_ b
>b c
objectRequestd q
)q r
;r s
ObjectResultList 
< &
ConversationResponseEntity 3
>3 4'
GetListConversationByReport5 P
(P Q
ObjectRequestQ ^
<^ _
string_ e
>e f
objectRequestg t
)t u
;u v
ObjectResultList 
< 
UserConnect $
>$ %0
$GetListUserConnectByAccountManagerId& J
(J K
ObjectRequestK X
<X Y
intY \
>\ ]
objectRequest^ k
)k l
;l m
ObjectResultList 
< 
UserConnect $
>$ %)
GetListUserByAccountManagerId& C
(C D
ObjectRequestD Q
<Q R
intR U
>U V
objectRequestW d
)d e
;e f
ObjectResultList 
< 

ReportChat #
># $
	GetReport% .
(. /
ObjectRequest/ <
<< =
ReportFilter= I
>I J
objectRequestK X
)X Y
;Y Z
ObjectResultList 
< &
ConversationResponseEntity 3
>3 4'
GetListConversationByFilter5 P
(P Q
ObjectRequestQ ^
<^ _&
ConversationResponseEntity_ y
>y z
objectRequest	{ �
)
� �
;
� �
ObjectResult 
< 
UserRoleType !
>! "
UsersGetRoleType# 3
(3 4
ObjectRequest4 A
<A B
stringB H
>H I
objectRequestJ W
)W X
;X Y
ObjectResultList 
< !
AccountManagerConnect .
>. /!
GetListAgentByManager0 E
(E F
ObjectRequestF S
<S T
stringT Z
>Z [
objectRequest\ i
)i j
;j k
ObjectResultList 
< &
ConversationResponseEntity 3
>3 4/
#GetListConversationByChatAndAgentId5 X
(X Y
ObjectRequestY f
<f g
stringg m
>m n
objectRequesto |
)| }
;} ~
ObjectResultList 
< &
ConversationResponseEntity 3
>3 41
%GetListConversationByChatAndManagerId5 Z
(Z [
ObjectRequest[ h
<h i
stringi o
>o p
objectRequestq ~
)~ 
;	 �
} 
} �
;D:\repositoriosGit\Chat\Chat\xChatBusiness\IServiceFaqBL.cs
	namespace 	
xChatBusiness
 
{ 
public 

	interface 
IServiceFaqBL "
{ 
void 
Insert 
( 
	FaqEntity 
	faqEntity '
)' (
;( )
void 
Update 
( 
	FaqEntity 
	faqEntity '
)' (
;( )
void		 
Delete		 
(		 
	FaqEntity		 
	faqEntity		 '
)		' (
;		( )
ObjectResultList

 
<

 
	FaqEntity

 "
>

" #
GetListByLanguajeId

$ 7
(

7 8
int

8 ;

languageId

< F
)

F G
;

G H
	FaqEntity 
GetById 
( 
	FaqEntity #
	faqEntity$ -
)- .
;. /
} 
} �
DD:\repositoriosGit\Chat\Chat\xChatBusiness\IServiceMasterEntityBL.cs
	namespace 	
xChatBusiness
 
{ 
public 

	interface "
IServiceMasterEntityBL +
{ 
ObjectResultList 
< 
EntityMaster %
>% &
GetList' .
(. /
EntityMasterEnum/ ?
entityMasterEnum@ P
)P Q
;Q R
ObjectResultList 
< 
EntityMaster %
>% &
SearchMasterGetList' :
(: ;
ParamSearchMaster; L
senderObjectM Y
)Y Z
;Z [
}		 
}

 �
DD:\repositoriosGit\Chat\Chat\xChatBusiness\IServiceNotificationBL.cs
	namespace 	
xChatBusiness
 
{ 
public 

	interface "
IServiceNotificationBL +
{ 
void 
Send 
( 
ConversationEntity $
conversationEntity% 7
)7 8
;8 9
} 
}		 �
BD:\repositoriosGit\Chat\Chat\xChatBusiness\IServiceSkillAgentBL.cs
	namespace 	
xChatBusiness
 
{ 
public 

	interface  
IServiceSkillAgentBL )
{ 
void $
ChangeStateSkillLanguage %
(% &
ObjectRequest& 3
<3 4
SkillAgentLanguage4 F
>F G
objectRequestH U
)U V
;V W
void		 "
ChangeStateSkillModule		 #
(		# $
ObjectRequest		$ 1
<		1 2
SkillAgentModule		2 B
>		B C
objectRequest		D Q
)		Q R
;		R S
void

 
CreateSkillLanguage

  
(

  !
ObjectRequest

! .
<

. /
SkillAgentLanguage

/ A
>

A B
objectRequest

C P
)

P Q
;

Q R
void 
CreateSkillModule 
( 
ObjectRequest ,
<, -
SkillAgentModule- =
>= >
objectRequest? L
)L M
;M N
ObjectResultList 
< 

SkillAgent #
># $
GetListSkillByAgent% 8
(8 9
ObjectRequest9 F
<F G
SkillAgentFilterG W
>W X
objectRequestY f
)f g
;g h
void 
UpdateSkillLanguage  
(  !
ObjectRequest! .
<. /
SkillAgentLanguage/ A
>A B
objectRequestC P
)P Q
;Q R
void 
UpdateSkillModule 
( 
ObjectRequest ,
<, -
SkillAgentModule- =
>= >
objectRequest? L
)L M
;M N
ObjectResult 
< 
Boolean 
> &
ValidateSkillByAgentModule 8
(8 9
ObjectRequest9 F
<F G
SkillAgentModuleG W
>W X
objectRequestY f
)f g
;g h
ObjectResult 
< 
Boolean 
> (
ValidateSkillByAgentLanguage :
(: ;
ObjectRequest; H
<H I
SkillAgentLanguageI [
>[ \
objectRequest] j
)j k
;k l
} 
} �
HD:\repositoriosGit\Chat\Chat\xChatBusiness\IServiceUserAccountGroupBL.cs
	namespace 	
xChatBusiness
 
{		 
public

 

	interface

 &
IServiceUserAccountGroupBL

 /
{ 
void "
CreateUserAccountGroup #
(# $
ObjectRequest$ 1
<1 2
UserAccountGroups2 C
>C D
objectRequestE R
)R S
;S T
void "
UpdateUserAccountGroup #
(# $
ObjectRequest$ 1
<1 2
UserAccountGroups2 C
>C D
objectRequestE R
)R S
;S T
void "
DeleteUserAccountGroup #
(# $
ObjectRequest$ 1
<1 2
UserAccountGroups2 C
>C D
objectRequestE R
)R S
;S T
ObjectResultList 
< 
UserAccountGroups *
>* +#
GetListUserAccountGroup, C
(C D
ObjectRequestD Q
<Q R
UserAccountGroupsR c
>c d
objectRequeste r
)r s
;s t
ObjectResult 
< 
Boolean 
> $
ValidateUserAccountGroup 6
(6 7
ObjectRequest7 D
<D E
UserAccountGroupsE V
>V W
objectRequestX e
)e f
;f g
} 
} �

<D:\repositoriosGit\Chat\Chat\xChatBusiness\IServiceUserBL.cs
	namespace 	
xChatBusiness
 
{ 
public 

	interface 
IServiceUserBL #
{ 
void 
CreateUsersRoleType  
(  !
ObjectRequest! .
<. /
UserRoleType/ ;
>; <
objectRequest= J
)J K
;K L
void		 
UpdateUsersRoleType		  
(		  !
ObjectRequest		! .
<		. /
UserRoleType		/ ;
>		; <
objectRequest		= J
)		J K
;		K L
void

 
DeleteUsersRoleType

  
(

  !
ObjectRequest

! .
<

. /
UserRoleType

/ ;
>

; <
objectRequest

= J
)

J K
;

K L
ObjectResultList 
< 
UserRoleType %
>% & 
GetListUsersRoleType' ;
(; <
ObjectRequest< I
<I J
UserRoleTypeJ V
>V W
objectRequestX e
)e f
;f g
ObjectResult 
< 
Boolean 
> !
ValidateUsersRoleType 3
(3 4
ObjectRequest4 A
<A B
UserRoleTypeB N
>N O
objectRequestP ]
)] ^
;^ _
} 
} �
ED:\repositoriosGit\Chat\Chat\xChatBusiness\Properties\AssemblyInfo.cs
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
$str 
) 
] 
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
]$$) *�
;D:\repositoriosGit\Chat\Chat\xChatBusiness\ServiceChatBL.cs
	namespace 	
xChatBusiness
 
{ 
public 

class 
ServiceChatBL 
{ 
private 
static 
ILoggerHandler %
log& )
=* +
LoggerFactory, 9
.9 :
Get: =
(= >
EnumLayerIdentifier> Q
.Q R
BusinessLayerR _
)_ `
;` a
private 
static 
readonly 
ServiceChatBL  -
_service. 6
=7 8
new9 <
ServiceChatBL= J
(J K
)K L
;L M
public 
static 
ServiceChatBL #
	Instancia$ -
{ 	
get 
{ 
return 
_service !
;! "
}# $
} 	
public## 
int## 

ChatCreate## 
(## 
ConversationEntity## 0
conversationEntity##1 C
)##C D
{$$ 	
int%% 
chatId%% 
=%% 
$num%% 
;%% 
Int32&& #
accountManagerConnectId&& )
=&&* +
$num&&, -
;&&- .
try(( 
{)) 
if33 
(33 
conversationEntity33 &
.33& '!
ChatBySkillLanguageId33' <
.33< =
Equals33= C
(33C D
$num33D E
)33E F
||33G I
conversationEntity33J \
.33\ ]
ChatBySkillModuleId33] p
.33p q
Equals33q w
(33w x
$num33x y
)33y z
)33z {#
accountManagerConnectId44 +
=44, -
ServiceChatDAO44. <
.44< =&
GetAccountManagerConnectId44= W
(44W X
conversationEntity44X j
)44j k
;44k l
else55 #
accountManagerConnectId66 +
=66, -
ServiceChatDAO66. <
.66< =0
$GetAccountManagerConnectBySkillLevel66= a
(66a b
conversationEntity66b t
)66t u
;66u v
if<< 
(<< #
accountManagerConnectId<< +
==<<, .
$num<</ 0
)<<0 1
chatId== 
=== 
-== 
$num== 
;==  
else>> 
if>> 
(>> #
accountManagerConnectId>> 0
==>>1 3
->>4 5
$num>>5 6
)>>6 7
chatId?? 
=?? 
-?? 
$num?? 
;??  
else@@ 
chatIdAA 
=AA 
ServiceChatDAOAA +
.AA+ ,

ChatCreateAA, 6
(AA6 7
conversationEntityAA7 I
,AAI J#
accountManagerConnectIdAAK b
)AAb c
;AAc d
}BB 
catchCC 
(CC 
	ExceptionCC 
exCC 
)CC 
{DD 
logEE 
.EE 
SaveEE 
(EE 
EnumLogLevelEE %
.EE% &
FatalEE& +
,EE+ ,
exEE- /
)EE/ 0
;EE0 1
}FF 
returnHH 
chatIdHH 
;HH 
}II 	
publicPP 
ObjectResultListPP 
<PP  
	ChatTokenPP  )
>PP) *
ChatDisconnectedPP+ ;
(PP; <
stringPP< B
connectionIdPPC O
)PPO P
{QQ 	
ObjectResultListRR 
<RR 
	ChatTokenRR &
>RR& '
tokenDestinoRR( 4
=RR5 6
newRR7 :
ObjectResultListRR; K
<RRK L
	ChatTokenRRL U
>RRU V
(RRV W
)RRW X
;RRX Y
tryTT 
{UU 
tokenDestinoVV 
=VV 
ServiceChatDAOVV -
.VV- .
ChatDisconnectedVV. >
(VV> ?
connectionIdVV? K
)VVK L
;VVL M
}WW 
catchXX 
(XX 
	ExceptionXX 
exXX 
)XX  
{YY 
logZZ 
.ZZ 
SaveZZ 
(ZZ 
EnumLogLevelZZ %
.ZZ% &
FatalZZ& +
,ZZ+ ,
exZZ- /
)ZZ/ 0
;ZZ0 1
}[[ 
return]] 
tokenDestino]] 
;]]  
}^^ 	
publicee 
intee 
ChatMessageCreateee $
(ee$ %
ConversationEntityee% 7
conversationEntityee8 J
)eeJ K
{ff 	
intgg 
resultgg 
=gg 
$numgg 
;gg 
tryii 
{jj 
conversationEntityoo "
.oo" #
Messageoo# *
=oo+ ,
encrypoo- 3
.oo3 4

Encryptionoo4 >
.oo> ?
Encryptoo? F
(ooF G
HtmlSanitizerooG T
.ooT U
SanitizeHtmlooU a
(ooa b
conversationEntityoob t
.oot u
Messageoou |
)oo| }
)oo} ~
;oo~ 
resulttt 
=tt 
ServiceChatDAOtt '
.tt' (
ChatMessageCreatett( 9
(tt9 :
conversationEntitytt: L
)ttL M
;ttM N
}uu 
catchvv 
(vv 
	Exceptionvv 
exvv 
)vv 
{ww 
logxx 
.xx 
Savexx 
(xx 
EnumLogLevelxx %
.xx% &
Fatalxx& +
,xx+ ,
exxx- /
)xx/ 0
;xx0 1
}yy 
return{{ 
result{{ 
;{{ 
}|| 	
public
�� 
void
�� #
AccountManagerConnect
�� )
(
��) *"
AccountManagerEntity
��* >"
accountManagerEntity
��? S
)
��S T
{
�� 	
try
�� 
{
�� 
ServiceChatDAO
�� 
.
�� #
AccountManagerConnect
�� 4
(
��4 5"
accountManagerEntity
��5 I
)
��I J
;
��J K
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
string
�� 
GetManagerToken
�� %
(
��% & 
ConversationEntity
��& 8 
conversationEntity
��9 K
)
��K L
{
�� 	
string
�� 
managerToken
�� 
=
��  !
string
��" (
.
��( )
Empty
��) .
;
��. /
try
�� 
{
�� 
managerToken
�� 
=
�� 
ServiceChatDAO
�� -
.
��- .
GetManagerToken
��. =
(
��= > 
conversationEntity
��> P
)
��P Q
;
��Q R
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
managerToken
�� 
;
��  
}
�� 	
public
�� 
string
�� "
GetManagerTokenValue
�� *
(
��* + 
ConversationEntity
��+ = 
conversationEntity
��> P
)
��P Q
{
�� 	
string
�� 
managerToken
�� 
=
��  !
string
��" (
.
��( )
Empty
��) .
;
��. /
try
�� 
{
�� 
managerToken
�� 
=
�� 
ServiceChatDAO
�� -
.
��- ."
GetManagerTokenValue
��. B
(
��B C 
conversationEntity
��C U
)
��U V
;
��V W
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
managerToken
�� 
;
��  
}
�� 	
public
��  
ConversationEntity
�� !)
GetAgentAndManagerIdByToken
��" =
(
��= >
String
��> D
token
��E J
)
��J K
{
�� 	 
ConversationEntity
��  
ConversationEntity
�� 1
=
��2 3
new
��4 7 
ConversationEntity
��8 J
(
��J K
)
��K L
;
��L M
try
�� 
{
��  
ConversationEntity
�� "
=
��# $
ServiceChatDAO
��% 3
.
��3 4)
GetAgentAndManagerIdByToken
��4 O
(
��O P
token
��P U
)
��U V
;
��V W
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
��  
ConversationEntity
�� %
;
��% &
}
�� 	
public
�� 
void
�� &
AccountManagerDisconnect
�� ,
(
��, -"
AccountManagerEntity
��- A"
accountManagerEntity
��B V
)
��V W
{
�� 	
try
�� 
{
�� 
ServiceChatDAO
�� 
.
�� &
AccountManagerDisconnect
�� 7
(
��7 8"
accountManagerEntity
��8 L
)
��L M
;
��M N
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
Int32
�� &
UserDisconnectForManager
�� -
(
��- . 
ConversationEntity
��. @ 
conversationEntity
��A S
)
��S T
{
�� 	
Int32
�� 
success
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
success
�� 
=
�� 
ServiceChatDAO
�� (
.
��( )&
UserDisconnectForManager
��) A
(
��A B 
conversationEntity
��B T
)
��T U
;
��U V
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
success
�� 
=
�� 
$num
�� 
;
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
success
�� 
;
�� 
}
�� 	
public
�� 
void
�� &
SetMessageReadForManager
�� ,
(
��, - 
ConversationEntity
��- ? 
conversationEntity
��@ R
)
��R S
{
�� 	
try
�� 
{
�� 
ServiceChatDAO
�� 
.
�� &
SetMessageReadForManager
�� 7
(
��7 8 
conversationEntity
��8 J
)
��J K
;
��K L
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
void
�� %
ProcessSetEncrypMessage
�� +
(
��+ ,
)
��, -
{
�� 	
List
�� 
<
��  
ConversationEntity
�� #
>
��# $
listMess
��% -
=
��. /
ServiceChatDAO
��0 >
.
��> ?
GetAllMessages
��? M
(
��M N
)
��N O
;
��O P
listMess
�� 
.
�� 
ForEach
�� 
(
�� 
x
�� 
=>
�� !
x
��" #
.
��# $
Message
��$ +
=
��, -
encryp
��. 4
.
��4 5

Encryption
��5 ?
.
��? @
Encrypt
��@ G
(
��G H
HtmlSanitizer
��H U
.
��U V
SanitizeHtml
��V b
(
��b c
x
��c d
.
��d e
Message
��e l
)
��l m
)
��m n
)
��n o
;
��o p
ServiceChatDAO
�� 
.
�� 
SetEncrypMessages
�� ,
(
��, -
listMess
��- 5
)
��5 6
;
��6 7
listMess
�� 
=
�� 
ServiceChatDAO
�� %
.
��% &
GetAllMessages
��& 4
(
��4 5
)
��5 6
;
��6 7
listMess
�� 
.
�� 
ForEach
�� 
(
�� 
x
�� 
=>
�� !
x
��" #
.
��# $
Message
��$ +
=
��, -
encryp
��. 4
.
��4 5

Encryption
��5 ?
.
��? @
Decrypt
��@ G
(
��G H
x
��H I
.
��I J
Message
��J Q
)
��Q R
)
��R S
;
��S T
}
�� 	
public
�� 
ObjectResultList
�� 
<
��  #
AccountManagerConnect
��  5
>
��5 6#
GetListAgentByManager
��7 L
(
��L M 
ConversationEntity
��M _
objectRequest
��` m
)
��m n
{
�� 	
ObjectResultList
�� 
<
�� #
AccountManagerConnect
�� 2
>
��2 3
result
��4 :
=
��; <
new
��= @
ObjectResultList
��A Q
<
��Q R#
AccountManagerConnect
��R g
>
��g h
(
��h i
)
��i j
;
��j k
try
�� 
{
�� 
if
�� 
(
�� 
objectRequest
�� !
.
��! "
	ManagerId
��" +
<=
��, .
$num
��/ 0
)
��0 1
{
�� 
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( K
)
��K L
;
��L M
}
�� 
result
�� 
=
�� 
ServiceChatDAO
�� '
.
��' (#
GetListAgentByManager
��( =
(
��= >
objectRequest
��> K
)
��K L
;
��L M
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
ex
��! #
.
��# $
Message
��$ +
;
��+ ,
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
Int32
��  
ConversationMoveTo
�� '
(
��' ( 
ConversationEntity
��( :
objChat
��; B
)
��B C
{
�� 	
int
�� 
success
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
if
�� 
(
�� 
objChat
�� 
.
�� 
AgentId
�� #
<
��$ %
$num
��& '
)
��' (
{
�� 
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( N
)
��N O
;
��O P
}
�� 
if
�� 
(
�� 
objChat
�� 
.
�� 
ChatId
�� "
<
��# $
$num
��% &
)
��& '
{
�� 
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( M
)
��M N
;
��N O
}
�� 
success
�� 
=
�� 
ServiceChatDAO
�� (
.
��( ) 
ConversationMoveTo
��) ;
(
��; <
objChat
��< C
)
��C D
;
��D E
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
success
�� 
=
�� 
$num
�� 
;
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
success
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
BD:\repositoriosGit\Chat\Chat\xChatBusiness\ServiceChatManagerBL.cs
	namespace 	
xChatBusiness
 
{ 
public 

class  
ServiceChatManagerBL %
:& '!
IServiceChatManagerBL( =
{ 
private 
static 
ILoggerHandler %
log& )
=* +
LoggerFactory, 9
.9 :
Get: =
(= >
EnumLayerIdentifier> Q
.Q R
BusinessLayerR _
)_ `
;` a
private "
IServiceChatManagerDAO &#
_IServiceChatManagerDAO' >
;> ?
public  
ServiceChatManagerBL #
(# $"
IServiceChatManagerDAO$ :!
serviceChatManagerDAO; P
)P Q
{ 	#
_IServiceChatManagerDAO #
=$ %!
serviceChatManagerDAO& ;
;; <
} 	
public$$ 
ObjectResultList$$ 
<$$  
UserConnect$$  +
>$$+ ,0
$GetListUserConnectByAccountManagerId$$- Q
($$Q R
ObjectRequest$$R _
<$$_ `
int$$` c
>$$c d
objectRequest$$e r
)$$r s
{%% 	
ObjectResultList&& 
<&& 
UserConnect&& (
>&&( )
result&&* 0
=&&1 2
new&&3 6
ObjectResultList&&7 G
<&&G H
UserConnect&&H S
>&&S T
(&&T U
)&&U V
;&&V W
try(( 
{)) 
result** 
=** #
_IServiceChatManagerDAO** 0
.**0 10
$GetListUserConnectByAccountManagerId**1 U
(**U V
objectRequest**V c
)**c d
;**d e
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),, 
{-- 
result.. 
... 
Id.. 
=.. 
$num.. 
;.. 
result// 
.// 
Message// 
=//  
ex//! #
.//# $
Message//$ +
;//+ ,
log11 
.11 
Save11 
(11 
EnumLogLevel11 %
.11% &
Fatal11& +
,11+ ,
ex11- /
)11/ 0
;110 1
}22 
return44 
result44 
;44 
}55 	
public<< 
ObjectResultList<< 
<<<  
UserConnect<<  +
><<+ ,)
GetListUserByAccountManagerId<<- J
(<<J K
ObjectRequest<<K X
<<<X Y
int<<Y \
><<\ ]
objectRequest<<^ k
)<<k l
{== 	
ObjectResultList>> 
<>> 
UserConnect>> (
>>>( )
result>>* 0
=>>1 2
new>>3 6
ObjectResultList>>7 G
<>>G H
UserConnect>>H S
>>>S T
(>>T U
)>>U V
;>>V W
try@@ 
{AA 
resultBB 
=BB #
_IServiceChatManagerDAOBB 0
.BB0 1)
GetListUserByAccountManagerIdBB1 N
(BBN O
objectRequestBBO \
)BB\ ]
;BB] ^
}CC 
catchDD 
(DD 
	ExceptionDD 
exDD 
)DD  
{EE 
resultFF 
.FF 
IdFF 
=FF 
$numFF 
;FF 
resultGG 
.GG 
MessageGG 
=GG  
exGG! #
.GG# $
MessageGG$ +
;GG+ ,
logII 
.II 
SaveII 
(II 
EnumLogLevelII %
.II% &
FatalII& +
,II+ ,
exII- /
)II/ 0
;II0 1
}JJ 
returnLL 
resultLL 
;LL 
}MM 	
publicTT 
ObjectResultListTT 
<TT  &
ConversationResponseEntityTT  :
>TT: ;'
GetListConversationByChatIdTT< W
(TTW X
ObjectRequestTTX e
<TTe f
intTTf i
>TTi j
objectRequestTTk x
)TTx y
{UU 	
ObjectResultListVV 
<VV &
ConversationResponseEntityVV 7
>VV7 8
resultVV9 ?
=VV@ A
newVVB E
ObjectResultListVVF V
<VVV W&
ConversationResponseEntityVVW q
>VVq r
(VVr s
)VVs t
;VVt u
tryXX 
{YY 
ifZZ 
(ZZ 
objectRequestZZ !
.ZZ! "
SenderObjectZZ" .
<ZZ/ 0
$numZZ1 2
)ZZ2 3
{[[ 
throw\\ 
new\\ 
	Exception\\ '
(\\' (
$str\\( M
)\\M N
;\\N O
}]] 
result__ 
=__ #
_IServiceChatManagerDAO__ 0
.__0 1'
GetListConversationByChatId__1 L
(__L M
objectRequest__M Z
)__Z [
;__[ \
resultaa 
.aa 
Elementsaa 
.aa  
ForEachaa  '
(aa' (
xaa( )
=>aa* ,
xaa- .
.aa. /
Messageaa/ 6
=aa7 8
encrypaa9 ?
.aa? @

Encryptionaa@ J
.aaJ K
DecryptaaK R
(aaR S
xaaS T
.aaT U
MessageaaU \
)aa\ ]
)aa] ^
;aa^ _
}bb 
catchcc 
(cc 
	Exceptioncc 
excc 
)cc  
{dd 
resultee 
.ee 
Idee 
=ee 
$numee 
;ee 
resultff 
.ff 
Messageff 
=ff  
exff! #
.ff# $
Messageff$ +
;ff+ ,
loghh 
.hh 
Savehh 
(hh 
EnumLogLevelhh %
.hh% &
Fatalhh& +
,hh+ ,
exhh- /
)hh/ 0
;hh0 1
}ii 
returnkk 
resultkk 
;kk 
}ll 	
publictt 
ObjectResultListtt 
<tt  !
AccountManagerConnecttt  5
>tt5 65
)GetListAccountManagerConnectByModuleAppIdtt7 `
(tt` a
ObjectRequesttta n
<ttn o
stringtto u
>ttu v
objectRequest	ttw �
)
tt� �
{uu 	
ObjectResultListvv 
<vv !
AccountManagerConnectvv 2
>vv2 3
resultvv4 :
=vv; <
newvv= @
ObjectResultListvvA Q
<vvQ R!
AccountManagerConnectvvR g
>vvg h
(vvh i
)vvi j
;vvj k
tryxx 
{yy 
ifzz 
(zz 
stringzz 
.zz 
IsNullOrEmptyzz (
(zz( )
objectRequestzz) 6
.zz6 7
SenderObjectzz7 C
)zzC D
)zzD E
{{{ 
throw|| 
new|| 
	Exception|| '
(||' (
$str||( K
)||K L
;||L M
}}} 
result 
= #
_IServiceChatManagerDAO 0
.0 15
)GetListAccountManagerConnectByModuleAppId1 Z
(Z [
objectRequest[ h
)h i
;i j
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
ex
��! #
.
��# $
Message
��$ +
;
��+ ,
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ObjectResultList
�� 
<
��  #
AccountManagerConnect
��  5
>
��5 6#
GetAccountManagerById
��7 L
(
��L M
ObjectRequest
��M Z
<
��Z [
string
��[ a
>
��a b
objectRequest
��c p
)
��p q
{
�� 	
ObjectResultList
�� 
<
�� #
AccountManagerConnect
�� 2
>
��2 3
result
��4 :
=
��; <
new
��= @
ObjectResultList
��A Q
<
��Q R#
AccountManagerConnect
��R g
>
��g h
(
��h i
)
��i j
;
��j k
try
�� 
{
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
objectRequest
��) 6
.
��6 7
SenderObject
��7 C
)
��C D
)
��D E
{
�� 
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( K
)
��K L
;
��L M
}
�� 
result
�� 
=
�� %
_IServiceChatManagerDAO
�� 0
.
��0 1#
GetAccountManagerById
��1 F
(
��F G
objectRequest
��G T
)
��T U
;
��U V
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
ex
��! #
.
��# $
Message
��$ +
;
��+ ,
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ObjectResultList
�� 
<
��  (
ConversationResponseEntity
��  :
>
��: ;)
GetListConversationByReport
��< W
(
��W X
ObjectRequest
��X e
<
��e f
string
��f l
>
��l m
objectRequest
��n {
)
��{ |
{
�� 	
ObjectResultList
�� 
<
�� (
ConversationResponseEntity
�� 7
>
��7 8
result
��9 ?
=
��@ A
new
��B E
ObjectResultList
��F V
<
��V W(
ConversationResponseEntity
��W q
>
��q r
(
��r s
)
��s t
;
��t u
try
�� 
{
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
objectRequest
��) 6
.
��6 7
SenderObject
��7 C
)
��C D
)
��D E
{
�� 
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( K
)
��K L
;
��L M
}
�� 
result
�� 
=
�� %
_IServiceChatManagerDAO
�� 0
.
��0 1)
GetListConversationByReport
��1 L
(
��L M
objectRequest
��M Z
.
��Z [
SenderObject
��[ g
)
��g h
;
��h i
result
�� 
.
�� 
Elements
�� 
.
��  
ForEach
��  '
(
��' (
x
��( )
=>
��* ,
x
��- .
.
��. /
Message
��/ 6
=
��7 8
encryp
��9 ?
.
��? @

Encryption
��@ J
.
��J K
Decrypt
��K R
(
��R S
x
��S T
.
��T U
Message
��U \
)
��\ ]
)
��] ^
;
��^ _
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
ex
��! #
.
��# $
Message
��$ +
;
��+ ,
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ObjectResult
�� 
<
�� 
bool
��  
>
��  !&
AccountManagerDisconnect
��" :
(
��: ;
ObjectRequest
��; H
<
��H I
int
��I L
>
��L M
objectRequest
��N [
)
��[ \
{
�� 	
ObjectResult
�� 
<
�� 
bool
�� 
>
�� 
result
�� %
=
��& '
new
��( +
ObjectResult
��, 8
<
��8 9
bool
��9 =
>
��= >
(
��> ?
)
��? @
;
��@ A
try
�� 
{
�� 
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
<
��/ 0
$num
��1 2
)
��2 3
{
�� 
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( K
)
��K L
;
��L M
}
�� 
result
�� 
.
�� 
Data
�� 
=
�� %
_IServiceChatManagerDAO
�� 5
.
��5 6&
AccountManagerDisconnect
��6 N
(
��N O
objectRequest
��O \
)
��\ ]
;
��] ^
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
ex
��! #
.
��# $
Message
��$ +
;
��+ ,
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ObjectResultList
�� 
<
��  

ReportChat
��  *
>
��* +
	GetReport
��, 5
(
��5 6
ObjectRequest
��6 C
<
��C D
ReportFilter
��D P
>
��P Q
objectRequest
��R _
)
��_ `
{
�� 	
ObjectResultList
�� 
<
�� 

ReportChat
�� '
>
��' (
result
��) /
=
��0 1
new
��2 5
ObjectResultList
��6 F
<
��F G

ReportChat
��G Q
>
��Q R
(
��R S
)
��S T
;
��T U
try
�� 
{
�� 
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /
MarketId
��/ 7
<
��8 9
$num
��: ;
)
��; <
{
�� 
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( M
)
��M N
;
��N O
}
�� 
result
�� 
=
�� %
_IServiceChatManagerDAO
�� 0
.
��0 1
	GetReport
��1 :
(
��: ;
objectRequest
��; H
.
��H I
SenderObject
��I U
)
��U V
;
��V W
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
ex
��! #
.
��# $
Message
��$ +
;
��+ ,
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ObjectResultList
�� 
<
��  (
ConversationResponseEntity
��  :
>
��: ;)
GetListConversationByFilter
��< W
(
��W X
ObjectRequest
��X e
<
��e f)
ConversationResponseEntity��f �
>��� �
objectRequest��� �
)��� �
{
�� 	
ObjectResultList
�� 
<
�� (
ConversationResponseEntity
�� 7
>
��7 8
result
��9 ?
=
��@ A
new
��B E
ObjectResultList
��F V
<
��V W(
ConversationResponseEntity
��W q
>
��q r
(
��r s
)
��s t
;
��t u
try
�� 
{
�� 
if
�� 
(
�� 
objectRequest
�� !
==
��" $
null
��& *
)
��* +
{
�� 
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( K
)
��K L
;
��L M
}
�� $
tBaseProducFiltersList
�� &
ListMarkets
��' 2
=
��3 4
new
��5 8$
tBaseProducFiltersList
��9 O
(
��O P
)
��P Q
;
��Q R$
tBaseProducFiltersList
�� &

ListAgents
��' 1
=
��2 3
new
��4 7$
tBaseProducFiltersList
��8 N
(
��N O
)
��O P
;
��P Q
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /
ListIdsMarkets
��/ =
!=
��> @
null
��A E
)
��E F
{
�� 
foreach
�� 
(
�� 
Int32
�� "
item
��# '
in
��( *
objectRequest
��+ 8
.
��8 9
SenderObject
��9 E
.
��E F
ListIdsMarkets
��F T
)
��T U
{
�� 
ListMarkets
�� #
.
��# $
Add
��$ '
(
��' (
new
��( +
srProductFilters
��, <
{
�� 
Id
�� 
=
��  
item
��! %
,
��% &
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
else
�� 
{
�� 
ListMarkets
�� 
=
��  !
null
��" &
;
��& '
}
�� 
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /
ListIdsAgents
��/ <
!=
��= ?
null
��@ D
)
��D E
{
�� 
foreach
�� 
(
�� 
Int32
�� "
item
��# '
in
��( *
objectRequest
��+ 8
.
��8 9
SenderObject
��9 E
.
��E F
ListIdsAgents
��F S
)
��S T
{
�� 

ListAgents
�� "
.
��" #
Add
��# &
(
��& '
new
��' *
srProductFilters
��+ ;
{
�� 
Id
�� 
=
��  
item
��! %
,
��% &
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
else
�� 
{
�� 

ListAgents
�� 
=
��  
null
��! %
;
��% &
}
�� 
objectRequest
�� 
.
�� 
SenderObject
�� *
.
��* +
ListMarkets
��+ 6
=
��7 8
ListMarkets
��9 D
;
��D E
objectRequest
�� 
.
�� 
SenderObject
�� *
.
��* +

ListAgents
��+ 5
=
��6 7

ListAgents
��8 B
;
��B C
result
�� 
=
�� %
_IServiceChatManagerDAO
�� 0
.
��0 1)
GetListConversationByFilter
��1 L
(
��L M
objectRequest
��M Z
)
��Z [
;
��[ \
result
�� 
.
�� 
Elements
�� 
.
��  
ForEach
��  '
(
��' (
x
��( )
=>
��* ,
x
��- .
.
��. /
Message
��/ 6
=
��7 8
encryp
��9 ?
.
��? @

Encryption
��@ J
.
��J K
Decrypt
��K R
(
��R S
x
��S T
.
��T U
Message
��U \
)
��\ ]
)
��] ^
;
��^ _
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
ex
��! #
.
��# $
Message
��$ +
;
��+ ,
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ObjectResult
�� 
<
�� 
UserRoleType
�� (
>
��( )
UsersGetRoleType
��* :
(
��: ;
ObjectRequest
��; H
<
��H I
string
��I O
>
��O P
objectRequest
��Q ^
)
��^ _
{
�� 	
ObjectResult
�� 
<
�� 
UserRoleType
�� %
>
��% &
result
��' -
=
��. /
new
��0 3
ObjectResult
��4 @
<
��@ A
UserRoleType
��A M
>
��M N
(
��N O
)
��O P
;
��P Q
try
�� 
{
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
objectRequest
��) 6
.
��6 7
SenderObject
��7 C
)
��C D
)
��D E
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( N
)
��N O
;
��O P
result
�� 
=
�� %
_IServiceChatManagerDAO
�� 0
.
��0 1
UsersGetRoleType
��1 A
(
��A B
objectRequest
��B O
)
��O P
;
��P Q
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
$str
��! '
;
��' (
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ObjectResultList
�� 
<
��  #
AccountManagerConnect
��  5
>
��5 6#
GetListAgentByManager
��7 L
(
��L M
ObjectRequest
��M Z
<
��Z [
string
��[ a
>
��a b
objectRequest
��c p
)
��p q
{
�� 	
ObjectResultList
�� 
<
�� #
AccountManagerConnect
�� 2
>
��2 3
result
��4 :
=
��; <
new
��= @
ObjectResultList
��A Q
<
��Q R#
AccountManagerConnect
��R g
>
��g h
(
��h i
)
��i j
;
��j k
try
�� 
{
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
objectRequest
��) 6
.
��6 7
SenderObject
��7 C
)
��C D
)
��D E
{
�� 
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( K
)
��K L
;
��L M
}
�� 
result
�� 
=
�� %
_IServiceChatManagerDAO
�� 0
.
��0 1#
GetListAgentByManager
��1 F
(
��F G
objectRequest
��G T
)
��T U
;
��U V
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
ex
��! #
.
��# $
Message
��$ +
;
��+ ,
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ObjectResultList
�� 
<
��  (
ConversationResponseEntity
��  :
>
��: ;1
#GetListConversationByChatAndAgentId
��< _
(
��_ `
ObjectRequest
��` m
<
��m n
string
��n t
>
��t u
objectRequest��v �
)��� �
{
�� 	
ObjectResultList
�� 
<
�� (
ConversationResponseEntity
�� 7
>
��7 8
result
��9 ?
=
��@ A
new
��B E
ObjectResultList
��F V
<
��V W(
ConversationResponseEntity
��W q
>
��q r
(
��r s
)
��s t
;
��t u
try
�� 
{
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
objectRequest
��) 6
.
��6 7
SenderObject
��7 C
)
��C D
)
��D E
{
�� 
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( K
)
��K L
;
��L M
}
�� 
result
�� 
=
�� %
_IServiceChatManagerDAO
�� 0
.
��0 11
#GetListConversationByChatAndAgentId
��1 T
(
��T U
objectRequest
��U b
)
��b c
;
��c d
if
�� 
(
�� 
result
�� 
.
�� 
Id
�� 
==
��  
$num
��! "
&&
��# %
result
��& ,
.
��, -
Elements
��- 5
!=
��6 8
null
��9 =
)
��= >
{
��? @
result
�� 
.
�� 
Elements
�� #
.
��# $
ForEach
��$ +
(
��+ ,
x
��, -
=>
��. 0
x
��1 2
.
��2 3
Message
��3 :
=
��; <
encryp
��= C
.
��C D

Encryption
��D N
.
��N O
Decrypt
��O V
(
��V W
x
��W X
.
��X Y
Message
��Y `
)
��` a
)
��a b
;
��b c
}
�� 
else
�� 
{
�� 
result
�� 
.
�� 
Elements
�� #
=
��$ %
new
��& )
List
��* .
<
��. /(
ConversationResponseEntity
��/ I
>
��I J
(
��J K
)
��K L
;
��L M
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
ex
��! #
.
��# $
Message
��$ +
;
��+ ,
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ObjectResultList
�� 
<
��  (
ConversationResponseEntity
��  :
>
��: ;3
%GetListConversationByChatAndManagerId
��< a
(
��a b
ObjectRequest
��b o
<
��o p
string
��p v
>
��v w
objectRequest��x �
)��� �
{
�� 	
ObjectResultList
�� 
<
�� (
ConversationResponseEntity
�� 7
>
��7 8
result
��9 ?
=
��@ A
new
��B E
ObjectResultList
��F V
<
��V W(
ConversationResponseEntity
��W q
>
��q r
(
��r s
)
��s t
;
��t u
try
�� 
{
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
objectRequest
��) 6
.
��6 7
SenderObject
��7 C
)
��C D
)
��D E
{
�� 
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( K
)
��K L
;
��L M
}
�� 
result
�� 
=
�� %
_IServiceChatManagerDAO
�� 0
.
��0 13
%GetListConversationByChatAndManagerId
��1 V
(
��V W
objectRequest
��W d
)
��d e
;
��e f
if
�� 
(
�� 
result
�� 
.
�� 
Id
�� 
==
��  
$num
��! "
&&
��# %
result
��& ,
.
��, -
Elements
��- 5
!=
��6 8
null
��9 =
)
��= >
{
�� 
result
�� 
.
�� 
Elements
�� #
.
��# $
ForEach
��$ +
(
��+ ,
x
��, -
=>
��. 0
x
��1 2
.
��2 3
Message
��3 :
=
��; <
encryp
��= C
.
��C D

Encryption
��D N
.
��N O
Decrypt
��O V
(
��V W
x
��W X
.
��X Y
Message
��Y `
)
��` a
)
��a b
;
��b c
}
�� 
else
�� 
{
�� 
result
�� 
.
�� 
Elements
�� #
=
��$ %
new
��& )
List
��* .
<
��. /(
ConversationResponseEntity
��/ I
>
��I J
(
��J K
)
��K L
;
��L M
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
ex
��! #
.
��# $
Message
��$ +
;
��+ ,
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
}
�� 
}�� �
:D:\repositoriosGit\Chat\Chat\xChatBusiness\ServiceFaqBL.cs
	namespace 	
xChatBusiness
 
{ 
public 

class 
ServiceFaqBL 
: 
IServiceFaqBL  -
{ 
private		 
IServiceFaqDAO		 
_serviceFaqDAO		 -
;		- .
public 
ServiceFaqBL 
( 
IServiceFaqDAO *
serviceFaqDAO+ 8
)8 9
{ 	
_serviceFaqDAO 
= 
serviceFaqDAO *
;* +
} 	
public 
void 
Delete 
( 
	FaqEntity $
	faqEntity% .
). /
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
	FaqEntity 
GetById  
(  !
	FaqEntity! *
	faqEntity+ 4
)4 5
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
ObjectResultList 
<  
	FaqEntity  )
>) *
GetListByLanguajeId+ >
(> ?
int? B

languageIdC M
)M N
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
void 
Insert 
( 
	FaqEntity $
	faqEntity% .
). /
{   	
throw!! 
new!! #
NotImplementedException!! -
(!!- .
)!!. /
;!!/ 0
}"" 	
public$$ 
void$$ 
Update$$ 
($$ 
	FaqEntity$$ $
	faqEntity$$% .
)$$. /
{%% 	
throw&& 
new&& #
NotImplementedException&& -
(&&- .
)&&. /
;&&/ 0
}'' 	
}(( 
})) �$
CD:\repositoriosGit\Chat\Chat\xChatBusiness\ServiceMasterEntityBL.cs
	namespace 	
xChatBusiness
 
{		 
public 

class !
ServiceMasterEntityBL &
:' ("
IServiceMasterEntityBL) ?
{ 
private #
IServiceMasterEntityDAO '#
_serviceMasterEntityDAO( ?
;? @
private 
static 
ILoggerHandler %
log& )
=* +
LoggerFactory, 9
.9 :
Get: =
(= >
EnumLayerIdentifier> Q
.Q R
BusinessLayerR _
)_ `
;` a
public !
ServiceMasterEntityBL $
($ %#
IServiceMasterEntityDAO% <"
serviceMasterEntityDAO= S
)S T
{ 	#
_serviceMasterEntityDAO #
=$ %"
serviceMasterEntityDAO& <
;< =
} 	
public   
ObjectResultList   
<    
EntityMaster    ,
>  , -
GetList  . 5
(  5 6
EntityMasterEnum  6 F
entityMasterEnum  G W
)  W X
{!! 	
ObjectResultList"" 
<"" 
EntityMaster"" )
>"") *
result""+ 1
=""2 3
new""4 7
ObjectResultList""8 H
<""H I
EntityMaster""I U
>""U V
(""V W
)""W X
;""X Y
try$$ 
{%% 
result&& 
=&& #
_serviceMasterEntityDAO&& 0
.&&0 1
GetList&&1 8
(&&8 9
entityMasterEnum&&9 I
)&&I J
;&&J K
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)(( 
{)) 
result** 
.** 
Id** 
=** 
$num** 
;** 
result++ 
.++ 
Message++ 
=++  
ex++! #
.++# $
Message++$ +
;+++ ,
log-- 
.-- 
Save-- 
(-- 
EnumLogLevel-- %
.--% &
Fatal--& +
,--+ ,
ex--- /
)--/ 0
;--0 1
}.. 
return00 
result00 
;00 
}11 	
public88 
ObjectResultList88 
<88  
EntityMaster88  ,
>88, -
SearchMasterGetList88. A
(88A B
ParamSearchMaster88B S
senderObject88T `
)88` a
{99 	
ObjectResultList:: 
<:: 
EntityMaster:: )
>::) *
result::+ 1
=::2 3
new::4 7
ObjectResultList::8 H
<::H I
EntityMaster::I U
>::U V
(::V W
)::W X
;::X Y
try<< 
{== 
if>> 
(>> 
string>> 
.>> 
IsNullOrEmpty>> (
(>>( )
senderObject>>) 5
.>>5 6
MasterEntity>>6 B
)>>B C
)>>C D
throw?? 
new?? 
	Exception?? '
(??' (
$str??( [
)??[ \
;??\ ]
ifAA 
(AA 
stringAA 
.AA 
IsNullOrEmptyAA (
(AA( )
senderObjectAA) 5
.AA5 6
MasterActionAA6 B
)AAB C
)AAC D
throwBB 
newBB 
	ExceptionBB '
(BB' (
$strBB( [
)BB[ \
;BB\ ]
resultDD 
=DD #
_serviceMasterEntityDAODD 0
.DD0 1
SearchMasterGetListDD1 D
(DDD E
senderObjectDDE Q
.DDQ R
MasterEntityDDR ^
,DD^ _
senderObjectDD` l
.DDl m
MasterActionDDm y
,DDy z
senderObject	DD{ �
.
DD� �!
MasterParametersSet
DD� �
,
DD� �
senderObject
DD� �
.
DD� �!
MasterParametersAdd
DD� �
)
DD� �
;
DD� �
}EE 
catchFF 
(FF 
	ExceptionFF 
exFF 
)FF  
{GG 
resultHH 
.HH 
IdHH 
=HH 
$numHH 
;HH 
resultII 
.II 
MessageII 
=II  
exII! #
.II# $
MessageII$ +
;II+ ,
logKK 
.KK 
SaveKK 
(KK 
EnumLogLevelKK %
.KK% &
FatalKK& +
,KK+ ,
exKK- /
)KK/ 0
;KK0 1
}LL 
returnNN 
resultNN 
;NN 
}OO 	
}PP 
}RR �
CD:\repositoriosGit\Chat\Chat\xChatBusiness\ServiceNotificationBL.cs
	namespace

 	
xChatBusiness


 
{ 
public 

class !
ServiceNotificationBL &
:' ("
IServiceNotificationBL) ?
{ #
IServiceNotificationDAO #
_serviceNotificationDAO  7
=8 9
new: ="
ServiceNotificationDAO> T
(T U
)U V
;V W
private 
static 
ILoggerHandler %
log& )
=* +
LoggerFactory, 9
.9 :
Get: =
(= >
EnumLayerIdentifier> Q
.Q R
BusinessLayerR _
)_ `
;` a
public !
ServiceNotificationBL $
($ %
)% &
{ 	
} 	
public   
void   
Send   
(   
ConversationEntity   +
conversationEntity  , >
)  > ?
{!! 	
log"" 
."" 
Save"" 
("" 
EnumLogLevel"" !
.""! "
Fatal""" '
,""' (
$str"") W
)""W X
;""X Y
try$$ 
{%% 
log)) 
.)) 
Save)) 
()) 
EnumLogLevel)) %
.))% &
Info))& *
,))* +
$str)), R
)))R S
;))S T
(++ 
string++ 
emailTo++ 
,++  
string++! '
emailSubject++( 4
,++4 5
string++6 <
	emailBody++= F
)++F G
=++H I#
_serviceNotificationDAO++J a
.++a b

GetEmailTo++b l
(++l m
conversationEntity++m 
)	++ �
;
++� �
log-- 
.-- 
Save-- 
(-- 
EnumLogLevel-- %
.--% &
Info--& *
,--* +
$str--, G
)--G H
;--H I
if// 
(// 
string// 
.// 
IsNullOrEmpty// (
(//( )
emailTo//) 0
)//0 1
||//2 4
string//5 ;
.//; <
IsNullOrEmpty//< I
(//I J
emailSubject//J V
)//V W
||//X Z
string//[ a
.//a b
IsNullOrEmpty//b o
(//o p
	emailBody//p y
)//y z
)//z {
{00 
throw11 
new11 
	Exception11 '
(11' (
$str11( d
)11d e
;11e f
}22 
log44 
.44 
Save44 
(44 
EnumLogLevel44 %
.44% &
Info44& *
,44* +
$str44, A
)44A B
;44B C
new:: 
Task:: 
(:: 
(:: 
):: 
=>:: 
{::  
EmailProvider::! .
.::. /
SendEmailAsync::/ =
(::= >
emailTo::> E
,::E F
	emailBody::G P
,::P Q
emailSubject::R ^
)::^ _
;::_ `
}::a b
)::b c
.::c d
Start::d i
(::i j
)::j k
;::k l
log== 
.== 
Save== 
(== 
EnumLogLevel== %
.==% &
Info==& *
,==* +
$str==, B
)==B C
;==C D
}?? 
catch@@ 
(@@ 
	Exception@@ 
ex@@ 
)@@  
{AA 
logBB 
.BB 
SaveBB 
(BB 
EnumLogLevelBB %
.BB% &
FatalBB& +
,BB+ ,
exBB- /
)BB/ 0
;BB0 1
}CC 
}DD 	
}EE 
}GG ��
AD:\repositoriosGit\Chat\Chat\xChatBusiness\ServiceSkillAgentBL.cs
	namespace 	
xChatBusiness
 
{		 
public 

class 
ServiceSkillAgentBL $
:% & 
IServiceSkillAgentBL' ;
{ 
private 
static 
ILoggerHandler %
log& )
=* +
LoggerFactory, 9
.9 :
Get: =
(= >
EnumLayerIdentifier> Q
.Q R
BusinessLayerR _
)_ `
;` a
private !
IServiceSkillAgentDAO %!
_serviceSkillAgentDAO& ;
;; <
public 
ServiceSkillAgentBL "
(" #!
IServiceSkillAgentDAO# 8 
serviceSkillAgentDAO9 M
)M N
{ 	!
_serviceSkillAgentDAO !
=" # 
serviceSkillAgentDAO$ 8
;8 9
} 	
public   
ObjectResultList   
<    

SkillAgent    *
>  * +
GetListSkillByAgent  , ?
(  ? @
ObjectRequest  @ M
<  M N
SkillAgentFilter  N ^
>  ^ _
objectRequest  ` m
)  m n
{!! 	
ObjectResultList"" 
<"" 

SkillAgent"" '
>""' (

resultList"") 3
=""4 5
new""6 9
ObjectResultList"": J
<""J K

SkillAgent""K U
>""U V
(""V W
)""W X
;""X Y
try$$ 
{%% 

resultList&& 
=&& !
_serviceSkillAgentDAO&& 2
.&&2 3
GetListSkillByAgent&&3 F
(&&F G
objectRequest&&G T
)&&T U
;&&U V
}'' 
catch(( 
((( 
TimeoutException(( #
tout(($ (
)((( )
{)) 

resultList** 
.** 
Id** 
=** 
$num**  !
;**! "

resultList++ 
.++ 
Message++ "
=++# $
tout++% )
.++) *
Message++* 1
;++1 2
log-- 
.-- 
Save-- 
(-- 
EnumLogLevel-- %
.--% &
Fatal--& +
,--+ ,
tout--- 1
.--1 2
Message--2 9
)--9 :
;--: ;
}.. 
catch// 
(// 
	Exception// 
ex// 
)//  
{00 

resultList11 
.11 
Id11 
=11 
$num11  !
;11! "

resultList22 
.22 
Message22 "
=22# $
ex22% '
.22' (
Message22( /
;22/ 0
log44 
.44 
Save44 
(44 
EnumLogLevel44 %
.44% &
Fatal44& +
,44+ ,
ex44- /
)44/ 0
;440 1
}55 
return77 

resultList77 
;77 
}88 	
public>> 
void>> $
ChangeStateSkillLanguage>> ,
(>>, -
ObjectRequest>>- :
<>>: ;
SkillAgentLanguage>>; M
>>>M N
objectRequest>>O \
)>>\ ]
{?? 	
try@@ 
{AA 
ifBB 
(BB 
objectRequestBB !
.BB! "
SenderObjectBB" .
.BB. /
AgentIdBB/ 6
<BB7 8
$numBB9 :
)BB: ;
throwCC 
newCC 
	ExceptionCC '
(CC' (
$strCC( O
)CCO P
;CCP Q!
_serviceSkillAgentDAOEE %
.EE% &$
ChangeStateSkillLanguageEE& >
(EE> ?
objectRequestEE? L
)EEL M
;EEM N
}FF 
catchGG 
(GG 
	ExceptionGG 
exGG 
)GG 
{HH 
logII 
.II 
SaveII 
(II 
EnumLogLevelII %
.II% &
FatalII& +
,II+ ,
exII- /
)II/ 0
;II0 1
throwKK 
newKK 
	ExceptionKK #
(KK# $
exKK$ &
.KK& '
MessageKK' .
)KK. /
;KK/ 0
}LL 
}MM 	
publicSS 
voidSS "
ChangeStateSkillModuleSS *
(SS* +
ObjectRequestSS+ 8
<SS8 9
SkillAgentModuleSS9 I
>SSI J
objectRequestSSK X
)SSX Y
{TT 	
tryUU 
{VV 
ifWW 
(WW 
objectRequestWW !
.WW! "
SenderObjectWW" .
.WW. /
AgentIdWW/ 6
<WW7 8
$numWW9 :
)WW: ;
throwXX 
newXX 
	ExceptionXX '
(XX' (
$strXX( O
)XXO P
;XXP Q!
_serviceSkillAgentDAOZZ %
.ZZ% &"
ChangeStateSkillModuleZZ& <
(ZZ< =
objectRequestZZ= J
)ZZJ K
;ZZK L
}[[ 
catch\\ 
(\\ 
	Exception\\ 
ex\\ 
)\\ 
{]] 
log^^ 
.^^ 
Save^^ 
(^^ 
EnumLogLevel^^ %
.^^% &
Fatal^^& +
,^^+ ,
ex^^- /
)^^/ 0
;^^0 1
throw`` 
new`` 
	Exception`` #
(``# $
ex``$ &
.``& '
Message``' .
)``. /
;``/ 0
}aa 
}bb 	
publichh 
voidhh 
CreateSkillLanguagehh '
(hh' (
ObjectRequesthh( 5
<hh5 6
SkillAgentLanguagehh6 H
>hhH I
objectRequesthhJ W
)hhW X
{ii 	
tryjj 
{kk 
ifll 
(ll 
objectRequestll !
.ll! "
SenderObjectll" .
.ll. /
AgentIdll/ 6
<ll7 8
$numll9 :
)ll: ;
throwmm 
newmm 
	Exceptionmm '
(mm' (
$strmm( O
)mmO P
;mmP Q
ifoo 
(oo 
objectRequestoo !
.oo! "
SenderObjectoo" .
.oo. /

LanguageIdoo/ 9
<oo: ;
$numoo< =
)oo= >
throwpp 
newpp 
	Exceptionpp '
(pp' (
$strpp( R
)ppR S
;ppS T!
_serviceSkillAgentDAOxx %
.xx% &
CreateSkillLanguagexx& 9
(xx9 :
objectRequestxx: G
)xxG H
;xxH I
}yy 
catchzz 
(zz 
	Exceptionzz 
exzz 
)zz 
{{{ 
log|| 
.|| 
Save|| 
(|| 
EnumLogLevel|| %
.||% &
Fatal||& +
,||+ ,
ex||- /
)||/ 0
;||0 1
throw~~ 
new~~ 
	Exception~~ #
(~~# $
ex~~$ &
.~~& '
Message~~' .
)~~. /
;~~/ 0
} 
}
�� 	
public
�� 
void
�� 
CreateSkillModule
�� %
(
��% &
ObjectRequest
��& 3
<
��3 4
SkillAgentModule
��4 D
>
��D E
objectRequest
��F S
)
��S T
{
�� 	
try
�� 
{
�� 
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /
AgentId
��/ 6
<
��7 8
$num
��9 :
)
��: ;
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( O
)
��O P
;
��P Q
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /
ModuleId
��/ 7
<
��8 9
$num
��: ;
)
��; <
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( R
)
��R S
;
��S T#
_serviceSkillAgentDAO
�� %
.
��% &
CreateSkillModule
��& 7
(
��7 8
objectRequest
��8 E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
�� 
{
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
throw
�� 
new
�� 
	Exception
�� #
(
��# $
ex
��$ &
.
��& '
Message
��' .
)
��. /
;
��/ 0
}
�� 
}
�� 	
public
�� 
void
�� !
UpdateSkillLanguage
�� '
(
��' (
ObjectRequest
��( 5
<
��5 6 
SkillAgentLanguage
��6 H
>
��H I
objectRequest
��J W
)
��W X
{
�� 	
try
�� 
{
�� 
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /
AgentId
��/ 6
<
��7 8
$num
��9 :
)
��: ;
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( O
)
��O P
;
��P Q
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /

LanguageId
��/ 9
<
��: ;
$num
��< =
)
��= >
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( R
)
��R S
;
��S T#
_serviceSkillAgentDAO
�� %
.
��% &!
UpdateSkillLanguage
��& 9
(
��9 :
objectRequest
��: G
)
��G H
;
��H I
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
�� 
{
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
throw
�� 
new
�� 
	Exception
�� #
(
��# $
ex
��$ &
.
��& '
Message
��' .
)
��. /
;
��/ 0
}
�� 
}
�� 	
public
�� 
void
�� 
UpdateSkillModule
�� %
(
��% &
ObjectRequest
��& 3
<
��3 4
SkillAgentModule
��4 D
>
��D E
objectRequest
��F S
)
��S T
{
�� 	
try
�� 
{
�� 
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /
AgentId
��/ 6
<
��7 8
$num
��9 :
)
��: ;
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( O
)
��O P
;
��P Q
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /
ModuleId
��/ 7
<
��8 9
$num
��: ;
)
��; <
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( R
)
��R S
;
��S T#
_serviceSkillAgentDAO
�� %
.
��% &
UpdateSkillModule
��& 7
(
��7 8
objectRequest
��8 E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
throw
�� 
new
�� 
	Exception
�� #
(
��# $
ex
��$ &
.
��& '
Message
��' .
)
��. /
;
��/ 0
}
�� 
}
�� 	
public
�� 
ObjectResult
�� 
<
�� 
Boolean
�� #
>
��# $(
ValidateSkillByAgentModule
��% ?
(
��? @
ObjectRequest
��@ M
<
��M N
SkillAgentModule
��N ^
>
��^ _
objectRequest
��` m
)
��m n
{
�� 	
ObjectResult
�� 
<
�� 
Boolean
��  
>
��  !
result
��" (
=
��) *
new
��+ .
ObjectResult
��/ ;
<
��; <
Boolean
��< C
>
��C D
(
��D E
)
��E F
;
��F G
try
�� 
{
�� 
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /
AgentId
��/ 6
<
��7 8
$num
��9 :
)
��: ;
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( O
)
��O P
;
��P Q
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /
ModuleId
��/ 7
<
��8 9
$num
��: ;
)
��; <
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( R
)
��R S
;
��S T
result
�� 
=
�� #
_serviceSkillAgentDAO
�� .
.
��. /(
ValidateSkillByAgentModule
��/ I
(
��I J
objectRequest
��J W
)
��W X
;
��X Y
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
$str
��! '
;
��' (
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
throw
�� 
new
�� 
	Exception
�� #
(
��# $
ex
��$ &
.
��& '
Message
��' .
)
��. /
;
��/ 0
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ObjectResult
�� 
<
�� 
Boolean
�� #
>
��# $*
ValidateSkillByAgentLanguage
��% A
(
��A B
ObjectRequest
��B O
<
��O P 
SkillAgentLanguage
��P b
>
��b c
objectRequest
��d q
)
��q r
{
�� 	
ObjectResult
�� 
<
�� 
Boolean
��  
>
��  !
result
��" (
=
��) *
new
��+ .
ObjectResult
��/ ;
<
��; <
Boolean
��< C
>
��C D
(
��D E
)
��E F
;
��F G
try
�� 
{
�� 
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /
AgentId
��/ 6
<
��7 8
$num
��9 :
)
��: ;
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( O
)
��O P
;
��P Q
if
�� 
(
�� 
objectRequest
�� !
.
��! "
SenderObject
��" .
.
��. /

LanguageId
��/ 9
<
��: ;
$num
��< =
)
��= >
throw
�� 
new
�� 
	Exception
�� '
(
��' (
$str
��( R
)
��R S
;
��S T
result
�� 
=
�� #
_serviceSkillAgentDAO
�� .
.
��. /*
ValidateSkillByAgentLanguage
��/ K
(
��K L
objectRequest
��L Y
)
��Y Z
;
��Z [
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
�� 
Id
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
result
�� 
.
�� 
Message
�� 
=
��  
$str
��! '
;
��' (
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
throw
�� 
new
�� 
	Exception
�� #
(
��# $
ex
��$ &
.
��& '
Message
��' .
)
��. /
;
��/ 0
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
}
�� 
}�� �:
GD:\repositoriosGit\Chat\Chat\xChatBusiness\ServiceUserAccountGroupBL.cs
	namespace 	
xChatBusiness
 
{		 
public

 

class

 %
ServiceUserAccountGroupBL

 *
:

+ ,&
IServiceUserAccountGroupBL

- G
{ 
private 
static 
ILoggerHandler %
log& )
=* +
LoggerFactory, 9
.9 :
Get: =
(= >
EnumLayerIdentifier> Q
.Q R
BusinessLayerR _
)_ `
;` a
private '
IServiceUserAccountGroupDAO +'
_serviceUserAccountGroupDAO, G
;G H
public %
ServiceUserAccountGroupBL (
(( )'
IServiceUserAccountGroupDAO) D&
serviceUserAccountGroupDAOE _
)_ `
{ 	
try 
{ '
_serviceUserAccountGroupDAO +
=, -&
serviceUserAccountGroupDAO. H
;H I
} 
catch 
( 
	Exception 
ex 
)  
{ 
log 
. 
Save 
( 
EnumLogLevel %
.% &
Fatal& +
,+ ,
ex- /
)/ 0
;0 1
} 
} 	
public 
void "
CreateUserAccountGroup *
(* +
ObjectRequest+ 8
<8 9
UserAccountGroups9 J
>J K
objectRequestL Y
)Y Z
{ 	
try   
{!! '
_serviceUserAccountGroupDAO"" +
.""+ ,"
CreateUserAccountGroup"", B
(""B C
objectRequest""C P
)""P Q
;""Q R
}## 
catch$$ 
($$ 
	Exception$$ 
ex$$ 
)$$  
{%% 
log&& 
.&& 
Save&& 
(&& 
EnumLogLevel&& %
.&&% &
Fatal&&& +
,&&+ ,
ex&&- /
)&&/ 0
;&&0 1
}'' 
}(( 	
public** 
void** "
UpdateUserAccountGroup** *
(*** +
ObjectRequest**+ 8
<**8 9
UserAccountGroups**9 J
>**J K
objectRequest**L Y
)**Y Z
{++ 	
try,, 
{-- '
_serviceUserAccountGroupDAO.. +
...+ ,"
UpdateUserAccountGroup.., B
(..B C
objectRequest..C P
)..P Q
;..Q R
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
log22 
.22 
Save22 
(22 
EnumLogLevel22 %
.22% &
Fatal22& +
,22+ ,
ex22- /
)22/ 0
;220 1
}33 
}44 	
public66 
void66 "
DeleteUserAccountGroup66 *
(66* +
ObjectRequest66+ 8
<668 9
UserAccountGroups669 J
>66J K
objectRequest66L Y
)66Y Z
{77 	
try88 
{99 
if:: 
(:: 
objectRequest:: !
.::! "
SenderObject::" .
.::. /!
AccountManagerGroupId::/ D
<::E F
$num::G H
)::H I
throw;; 
new;; 
	Exception;; '
(;;' (
$str;;( ]
);;] ^
;;;^ _'
_serviceUserAccountGroupDAO== +
.==+ ,"
DeleteUserAccountGroup==, B
(==B C
objectRequest==C P
)==P Q
;==Q R
}>> 
catch?? 
(?? 
	Exception?? 
ex?? 
)??  
{@@ 
logAA 
.AA 
SaveAA 
(AA 
EnumLogLevelAA %
.AA% &
FatalAA& +
,AA+ ,
exAA- /
)AA/ 0
;AA0 1
}BB 
}CC 	
publicEE 
ObjectResultListEE 
<EE  
UserAccountGroupsEE  1
>EE1 2#
GetListUserAccountGroupEE3 J
(EEJ K
ObjectRequestEEK X
<EEX Y
UserAccountGroupsEEY j
>EEj k
objectRequestEEl y
)EEy z
{FF 	
ObjectResultListGG 
<GG 
UserAccountGroupsGG .
>GG. /

resultListGG0 :
=GG; <
newGG= @
ObjectResultListGGA Q
<GGQ R
UserAccountGroupsGGR c
>GGc d
(GGd e
)GGe f
;GGf g
tryHH 
{II 

resultListJJ 
=JJ '
_serviceUserAccountGroupDAOJJ 8
.JJ8 9#
GetListUserAccountGroupJJ9 P
(JJP Q
objectRequestJJQ ^
)JJ^ _
;JJ_ `
}KK 
catchLL 
(LL 
	ExceptionLL 
exLL 
)LL  
{MM 

resultListNN 
.NN 
IdNN 
=NN 
-NN  !
$numNN! "
;NN" #

resultListOO 
.OO 
MessageOO "
=OO# $
exOO% '
.OO' (
MessageOO( /
;OO/ 0
logQQ 
.QQ 
SaveQQ 
(QQ 
EnumLogLevelQQ %
.QQ% &
FatalQQ& +
,QQ+ ,
exQQ- /
)QQ/ 0
;QQ0 1
}RR 
returnSS 

resultListSS 
;SS 
}TT 	
publicVV 
ObjectResultVV 
<VV 
boolVV  
>VV  !$
ValidateUserAccountGroupVV" :
(VV: ;
ObjectRequestVV; H
<VVH I
UserAccountGroupsVVI Z
>VVZ [
objectRequestVV\ i
)VVi j
{WW 	
ObjectResultXX 
<XX 
BooleanXX  
>XX  !
resultXX" (
=XX) *
newXX+ .
ObjectResultXX/ ;
<XX; <
BooleanXX< C
>XXC D
(XXD E
)XXE F
;XXF G
tryYY 
{ZZ 
if[[ 
([[ 
objectRequest[[ !
.[[! "
SenderObject[[" .
.[[. /
AccountManagerId[[/ ?
<[[@ A
$num[[B C
)[[C D
throw\\ 
new\\ 
	Exception\\ '
(\\' (
$str\\( X
)\\X Y
;\\Y Z
if^^ 
(^^ 
objectRequest^^ !
.^^! "
SenderObject^^" .
.^^. /!
AccountManagerChildId^^/ D
<^^E F
$num^^G H
)^^H I
throw__ 
new__ 
	Exception__ '
(__' (
$str__( ]
)__] ^
;__^ _
resultaa 
=aa '
_serviceUserAccountGroupDAOaa 4
.aa4 5$
ValidateUserAccountGroupaa5 M
(aaM N
objectRequestaaN [
)aa[ \
;aa\ ]
}bb 
catchcc 
(cc 
	Exceptioncc 
excc 
)cc  
{dd 
resultee 
.ee 
Idee 
=ee 
-ee 
$numee 
;ee 
resultff 
.ff 
Messageff 
=ff  
$strff! '
;ff' (
loggg 
.gg 
Savegg 
(gg 
EnumLogLevelgg %
.gg% &
Fatalgg& +
,gg+ ,
exgg- /
)gg/ 0
;gg0 1
}hh 
returnii 
resultii 
;ii 
}jj 	
}kk 
}ll �8
;D:\repositoriosGit\Chat\Chat\xChatBusiness\ServiceUserBL.cs
	namespace 	
xChatBusiness
 
{ 
public		 

class		 
ServiceUserBL		 
:		  
IServiceUserBL		! /
{

 
private 
static 
ILoggerHandler %
log& )
=* +
LoggerFactory, 9
.9 :
Get: =
(= >
EnumLayerIdentifier> Q
.Q R
BusinessLayerR _
)_ `
;` a
private 
IServiceUserDAO 
_serviceUserDAO  /
;/ 0
public 
ServiceUserBL 
( 
IServiceUserDAO ,
serviceUserDAO- ;
); <
{ 	
try 
{ 
_serviceUserDAO 
=  !
serviceUserDAO" 0
;0 1
} 
catch 
( 
	Exception 
ex 
)  
{ 
log 
. 
Save 
( 
EnumLogLevel %
.% &
Fatal& +
,+ ,
ex- /
)/ 0
;0 1
} 
} 	
public   
ObjectResultList   
<    
UserRoleType    ,
>  , - 
GetListUsersRoleType  . B
(  B C
ObjectRequest  C P
<  P Q
UserRoleType  Q ]
>  ] ^
objectRequest  _ l
)  l m
{!! 	
ObjectResultList"" 
<"" 
UserRoleType"" )
>"") *

resultList""+ 5
=""6 7
new""8 ;
ObjectResultList""< L
<""L M
UserRoleType""M Y
>""Y Z
(""Z [
)""[ \
;""\ ]
try## 
{$$ 

resultList%% 
=%% 
_serviceUserDAO%% ,
.%%, - 
GetListUsersRoleType%%- A
(%%A B
objectRequest%%B O
)%%O P
;%%P Q
}&& 
catch'' 
('' 
	Exception'' 
ex'' 
)''  
{(( 

resultList)) 
.)) 
Id)) 
=)) 
-))  !
$num))! "
;))" #

resultList** 
.** 
Message** "
=**# $
ex**% '
.**' (
Message**( /
;**/ 0
log,, 
.,, 
Save,, 
(,, 
EnumLogLevel,, %
.,,% &
Fatal,,& +
,,,+ ,
ex,,- /
),,/ 0
;,,0 1
}-- 
return.. 

resultList.. 
;.. 
}// 	
public11 
void11 
CreateUsersRoleType11 '
(11' (
ObjectRequest11( 5
<115 6
UserRoleType116 B
>11B C
objectRequest11D Q
)11Q R
{22 	
try33 
{44 
_serviceUserDAO55 
.55  
CreateUsersRoleType55  3
(553 4
objectRequest554 A
)55A B
;55B C
}66 
catch77 
(77 
	Exception77 
ex77 
)77  
{88 
log99 
.99 
Save99 
(99 
EnumLogLevel99 %
.99% &
Fatal99& +
,99+ ,
ex99- /
)99/ 0
;990 1
}:: 
};; 	
public== 
void== 
UpdateUsersRoleType== '
(==' (
ObjectRequest==( 5
<==5 6
UserRoleType==6 B
>==B C
objectRequest==D Q
)==Q R
{>> 	
try?? 
{@@ 
_serviceUserDAOAA 
.AA  
UpdateUsersRoleTypeAA  3
(AA3 4
objectRequestAA4 A
)AAA B
;AAB C
}BB 
catchCC 
(CC 
	ExceptionCC 
exCC 
)CC  
{DD 
logEE 
.EE 
SaveEE 
(EE 
EnumLogLevelEE %
.EE% &
FatalEE& +
,EE+ ,
exEE- /
)EE/ 0
;EE0 1
}FF 
}HH 	
publicJJ 
voidJJ 
DeleteUsersRoleTypeJJ '
(JJ' (
ObjectRequestJJ( 5
<JJ5 6
UserRoleTypeJJ6 B
>JJB C
objectRequestJJD Q
)JJQ R
{KK 	
tryLL 
{MM 
ifNN 
(NN 
objectRequestNN !
.NN! "
SenderObjectNN" .
.NN. /
UserRolTypeIdNN/ <
<NN= >
$numNN? @
)NN@ A
throwOO 
newOO 
	ExceptionOO '
(OO' (
$strOO( U
)OOU V
;OOV W
_serviceUserDAOQQ 
.QQ  
DeleteUsersRoleTypeQQ  3
(QQ3 4
objectRequestQQ4 A
)QQA B
;QQB C
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS  
{TT 
logUU 
.UU 
SaveUU 
(UU 
EnumLogLevelUU %
.UU% &
FatalUU& +
,UU+ ,
exUU- /
)UU/ 0
;UU0 1
}VV 
}XX 	
public[[ 
ObjectResult[[ 
<[[ 
Boolean[[ #
>[[# $!
ValidateUsersRoleType[[% :
([[: ;
ObjectRequest[[; H
<[[H I
UserRoleType[[I U
>[[U V
objectRequest[[W d
)[[d e
{\\ 	
ObjectResult]] 
<]] 
Boolean]]  
>]]  !
result]]" (
=]]) *
new]]+ .
ObjectResult]]/ ;
<]]; <
Boolean]]< C
>]]C D
(]]D E
)]]E F
;]]F G
try^^ 
{__ 
if`` 
(`` 
objectRequest`` !
.``! "
SenderObject``" .
.``. /
UserId``/ 5
<``6 7
$num``8 9
)``9 :
throwaa 
newaa 
	Exceptionaa '
(aa' (
$straa( N
)aaN O
;aaO P
ifcc 
(cc 
objectRequestcc !
.cc! "
SenderObjectcc" .
.cc. /

RoleTypeIdcc/ 9
<cc: ;
$numcc< =
)cc= >
throwdd 
newdd 
	Exceptiondd '
(dd' (
$strdd( L
)ddL M
;ddM N
resultff 
=ff 
_serviceUserDAOff '
.ff' (!
ValidateUsersRoleTypeff( =
(ff= >
objectRequestff> K
)ffK L
;ffL M
}gg 
catchhh 
(hh 
	Exceptionhh 
exhh 
)hh  
{ii 
resultjj 
.jj 
Idjj 
=jj 
-jj 
$numjj 
;jj 
resultkk 
.kk 
Messagekk 
=kk  
$strkk! '
;kk' (
logll 
.ll 
Savell 
(ll 
EnumLogLevelll %
.ll% &
Fatalll& +
,ll+ ,
exll- /
)ll/ 0
;ll0 1
}mm 
returnnn 
resultnn 
;nn 
}oo 	
}qq 
}rr 