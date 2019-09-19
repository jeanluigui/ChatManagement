ﬂ
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
objectRequest	{ à
)
à â
;
â ä
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
;	 Ä
} 
} ø
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
} Æ
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
 é
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
}		 Ø
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
} ∫
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
} ı

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
} 
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
]$$) *„á
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
ÇÇ 
void
ÇÇ #
AccountManagerConnect
ÇÇ )
(
ÇÇ) *"
AccountManagerEntity
ÇÇ* >"
accountManagerEntity
ÇÇ? S
)
ÇÇS T
{
ÉÉ 	
try
ÑÑ 
{
ÖÖ 
ServiceChatDAO
ÜÜ 
.
ÜÜ #
AccountManagerConnect
ÜÜ 4
(
ÜÜ4 5"
accountManagerEntity
ÜÜ5 I
)
ÜÜI J
;
ÜÜJ K
}
áá 
catch
àà 
(
àà 
	Exception
àà 
ex
àà 
)
àà  
{
ââ 
log
ää 
.
ää 
Save
ää 
(
ää 
EnumLogLevel
ää %
.
ää% &
Fatal
ää& +
,
ää+ ,
ex
ää- /
)
ää/ 0
;
ää0 1
}
ãã 
}
åå 	
public
ìì 
string
ìì 
GetManagerToken
ìì %
(
ìì% & 
ConversationEntity
ìì& 8 
conversationEntity
ìì9 K
)
ììK L
{
îî 	
string
ïï 
managerToken
ïï 
=
ïï  !
string
ïï" (
.
ïï( )
Empty
ïï) .
;
ïï. /
try
óó 
{
òò 
managerToken
ôô 
=
ôô 
ServiceChatDAO
ôô -
.
ôô- .
GetManagerToken
ôô. =
(
ôô= > 
conversationEntity
ôô> P
)
ôôP Q
;
ôôQ R
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
úú 
log
ùù 
.
ùù 
Save
ùù 
(
ùù 
EnumLogLevel
ùù %
.
ùù% &
Fatal
ùù& +
,
ùù+ ,
ex
ùù- /
)
ùù/ 0
;
ùù0 1
}
ûû 
return
†† 
managerToken
†† 
;
††  
}
°° 	
public
¢¢ 
string
¢¢ "
GetManagerTokenValue
¢¢ *
(
¢¢* + 
ConversationEntity
¢¢+ = 
conversationEntity
¢¢> P
)
¢¢P Q
{
££ 	
string
§§ 
managerToken
§§ 
=
§§  !
string
§§" (
.
§§( )
Empty
§§) .
;
§§. /
try
¶¶ 
{
ßß 
managerToken
®® 
=
®® 
ServiceChatDAO
®® -
.
®®- ."
GetManagerTokenValue
®®. B
(
®®B C 
conversationEntity
®®C U
)
®®U V
;
®®V W
}
©© 
catch
™™ 
(
™™ 
	Exception
™™ 
ex
™™ 
)
™™  
{
´´ 
log
¨¨ 
.
¨¨ 
Save
¨¨ 
(
¨¨ 
EnumLogLevel
¨¨ %
.
¨¨% &
Fatal
¨¨& +
,
¨¨+ ,
ex
¨¨- /
)
¨¨/ 0
;
¨¨0 1
}
≠≠ 
return
ØØ 
managerToken
ØØ 
;
ØØ  
}
∞∞ 	
public
±±  
ConversationEntity
±± !)
GetAgentAndManagerIdByToken
±±" =
(
±±= >
String
±±> D
token
±±E J
)
±±J K
{
≤≤ 	 
ConversationEntity
≥≥  
ConversationEntity
≥≥ 1
=
≥≥2 3
new
≥≥4 7 
ConversationEntity
≥≥8 J
(
≥≥J K
)
≥≥K L
;
≥≥L M
try
µµ 
{
∂∂  
ConversationEntity
∑∑ "
=
∑∑# $
ServiceChatDAO
∑∑% 3
.
∑∑3 4)
GetAgentAndManagerIdByToken
∑∑4 O
(
∑∑O P
token
∑∑P U
)
∑∑U V
;
∑∑V W
}
∏∏ 
catch
ππ 
(
ππ 
	Exception
ππ 
ex
ππ 
)
ππ  
{
∫∫ 
log
ªª 
.
ªª 
Save
ªª 
(
ªª 
EnumLogLevel
ªª %
.
ªª% &
Fatal
ªª& +
,
ªª+ ,
ex
ªª- /
)
ªª/ 0
;
ªª0 1
}
ºº 
return
ææ  
ConversationEntity
ææ %
;
ææ% &
}
øø 	
public
≈≈ 
void
≈≈ &
AccountManagerDisconnect
≈≈ ,
(
≈≈, -"
AccountManagerEntity
≈≈- A"
accountManagerEntity
≈≈B V
)
≈≈V W
{
∆∆ 	
try
«« 
{
»» 
ServiceChatDAO
…… 
.
…… &
AccountManagerDisconnect
…… 7
(
……7 8"
accountManagerEntity
……8 L
)
……L M
;
……M N
}
   
catch
ÀÀ 
(
ÀÀ 
	Exception
ÀÀ 
ex
ÀÀ 
)
ÀÀ  
{
ÃÃ 
log
ÕÕ 
.
ÕÕ 
Save
ÕÕ 
(
ÕÕ 
EnumLogLevel
ÕÕ %
.
ÕÕ% &
Fatal
ÕÕ& +
,
ÕÕ+ ,
ex
ÕÕ- /
)
ÕÕ/ 0
;
ÕÕ0 1
}
ŒŒ 
}
œœ 	
public
’’ 
Int32
’’ &
UserDisconnectForManager
’’ -
(
’’- . 
ConversationEntity
’’. @ 
conversationEntity
’’A S
)
’’S T
{
÷÷ 	
Int32
◊◊ 
success
◊◊ 
=
◊◊ 
$num
◊◊ 
;
◊◊ 
try
ÿÿ 
{
ŸŸ 
success
⁄⁄ 
=
⁄⁄ 
ServiceChatDAO
⁄⁄ (
.
⁄⁄( )&
UserDisconnectForManager
⁄⁄) A
(
⁄⁄A B 
conversationEntity
⁄⁄B T
)
⁄⁄T U
;
⁄⁄U V
}
€€ 
catch
‹‹ 
(
‹‹ 
	Exception
‹‹ 
ex
‹‹ 
)
‹‹  
{
›› 
success
ﬁﬁ 
=
ﬁﬁ 
$num
ﬁﬁ 
;
ﬁﬁ 
log
ﬂﬂ 
.
ﬂﬂ 
Save
ﬂﬂ 
(
ﬂﬂ 
EnumLogLevel
ﬂﬂ %
.
ﬂﬂ% &
Fatal
ﬂﬂ& +
,
ﬂﬂ+ ,
ex
ﬂﬂ- /
)
ﬂﬂ/ 0
;
ﬂﬂ0 1
}
‡‡ 
return
·· 
success
·· 
;
·· 
}
‚‚ 	
public
ËË 
void
ËË &
SetMessageReadForManager
ËË ,
(
ËË, - 
ConversationEntity
ËË- ? 
conversationEntity
ËË@ R
)
ËËR S
{
ÈÈ 	
try
ÍÍ 
{
ÎÎ 
ServiceChatDAO
ÏÏ 
.
ÏÏ &
SetMessageReadForManager
ÏÏ 7
(
ÏÏ7 8 
conversationEntity
ÏÏ8 J
)
ÏÏJ K
;
ÏÏK L
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ 
	Exception
ÓÓ 
ex
ÓÓ 
)
ÓÓ  
{
ÔÔ 
log
 
.
 
Save
 
(
 
EnumLogLevel
 %
.
% &
Fatal
& +
,
+ ,
ex
- /
)
/ 0
;
0 1
}
ÒÒ 
}
ÚÚ 	
public
˘˘ 
void
˘˘ %
ProcessSetEncrypMessage
˘˘ +
(
˘˘+ ,
)
˘˘, -
{
˙˙ 	
List
˛˛ 
<
˛˛  
ConversationEntity
˛˛ #
>
˛˛# $
listMess
˛˛% -
=
˛˛. /
ServiceChatDAO
˛˛0 >
.
˛˛> ?
GetAllMessages
˛˛? M
(
˛˛M N
)
˛˛N O
;
˛˛O P
listMess
ÄÄ 
.
ÄÄ 
ForEach
ÄÄ 
(
ÄÄ 
x
ÄÄ 
=>
ÄÄ !
x
ÄÄ" #
.
ÄÄ# $
Message
ÄÄ$ +
=
ÄÄ, -
encryp
ÄÄ. 4
.
ÄÄ4 5

Encryption
ÄÄ5 ?
.
ÄÄ? @
Encrypt
ÄÄ@ G
(
ÄÄG H
HtmlSanitizer
ÄÄH U
.
ÄÄU V
SanitizeHtml
ÄÄV b
(
ÄÄb c
x
ÄÄc d
.
ÄÄd e
Message
ÄÄe l
)
ÄÄl m
)
ÄÄm n
)
ÄÄn o
;
ÄÄo p
ServiceChatDAO
ÇÇ 
.
ÇÇ 
SetEncrypMessages
ÇÇ ,
(
ÇÇ, -
listMess
ÇÇ- 5
)
ÇÇ5 6
;
ÇÇ6 7
listMess
áá 
=
áá 
ServiceChatDAO
áá %
.
áá% &
GetAllMessages
áá& 4
(
áá4 5
)
áá5 6
;
áá6 7
listMess
ââ 
.
ââ 
ForEach
ââ 
(
ââ 
x
ââ 
=>
ââ !
x
ââ" #
.
ââ# $
Message
ââ$ +
=
ââ, -
encryp
ââ. 4
.
ââ4 5

Encryption
ââ5 ?
.
ââ? @
Decrypt
ââ@ G
(
ââG H
x
ââH I
.
ââI J
Message
ââJ Q
)
ââQ R
)
ââR S
;
ââS T
}
ää 	
public
éé 
ObjectResultList
éé 
<
éé  #
AccountManagerConnect
éé  5
>
éé5 6#
GetListAgentByManager
éé7 L
(
ééL M 
ConversationEntity
ééM _
objectRequest
éé` m
)
éém n
{
èè 	
ObjectResultList
êê 
<
êê #
AccountManagerConnect
êê 2
>
êê2 3
result
êê4 :
=
êê; <
new
êê= @
ObjectResultList
êêA Q
<
êêQ R#
AccountManagerConnect
êêR g
>
êêg h
(
êêh i
)
êêi j
;
êêj k
try
íí 
{
ìì 
if
îî 
(
îî 
objectRequest
îî !
.
îî! "
	ManagerId
îî" +
<=
îî, .
$num
îî/ 0
)
îî0 1
{
ïï 
throw
ññ 
new
ññ 
	Exception
ññ '
(
ññ' (
$str
ññ( K
)
ññK L
;
ññL M
}
óó 
result
ôô 
=
ôô 
ServiceChatDAO
ôô '
.
ôô' (#
GetListAgentByManager
ôô( =
(
ôô= >
objectRequest
ôô> K
)
ôôK L
;
ôôL M
}
öö 
catch
õõ 
(
õõ 
	Exception
õõ 
ex
õõ 
)
õõ  
{
úú 
result
ùù 
.
ùù 
Id
ùù 
=
ùù 
$num
ùù 
;
ùù 
result
ûû 
.
ûû 
Message
ûû 
=
ûû  
ex
ûû! #
.
ûû# $
Message
ûû$ +
;
ûû+ ,
log
†† 
.
†† 
Save
†† 
(
†† 
EnumLogLevel
†† %
.
††% &
Fatal
††& +
,
††+ ,
ex
††- /
)
††/ 0
;
††0 1
}
°° 
return
££ 
result
££ 
;
££ 
}
§§ 	
public
´´ 
Int32
´´  
ConversationMoveTo
´´ '
(
´´' ( 
ConversationEntity
´´( :
objChat
´´; B
)
´´B C
{
¨¨ 	
int
≠≠ 
success
≠≠ 
=
≠≠ 
$num
≠≠ 
;
≠≠ 
try
ÆÆ 
{
ØØ 
if
∞∞ 
(
∞∞ 
objChat
∞∞ 
.
∞∞ 
AgentId
∞∞ #
<
∞∞$ %
$num
∞∞& '
)
∞∞' (
{
±± 
throw
≤≤ 
new
≤≤ 
	Exception
≤≤ '
(
≤≤' (
$str
≤≤( N
)
≤≤N O
;
≤≤O P
}
≥≥ 
if
¥¥ 
(
¥¥ 
objChat
¥¥ 
.
¥¥ 
ChatId
¥¥ "
<
¥¥# $
$num
¥¥% &
)
¥¥& '
{
µµ 
throw
∂∂ 
new
∂∂ 
	Exception
∂∂ '
(
∂∂' (
$str
∂∂( M
)
∂∂M N
;
∂∂N O
}
∑∑ 
success
ππ 
=
ππ 
ServiceChatDAO
ππ (
.
ππ( ) 
ConversationMoveTo
ππ) ;
(
ππ; <
objChat
ππ< C
)
ππC D
;
ππD E
}
∫∫ 
catch
ªª 
(
ªª 
	Exception
ªª 
ex
ªª 
)
ªª  
{
ºº 
success
ΩΩ 
=
ΩΩ 
$num
ΩΩ 
;
ΩΩ 
log
ææ 
.
ææ 
Save
ææ 
(
ææ 
EnumLogLevel
ææ %
.
ææ% &
Fatal
ææ& +
,
ææ+ ,
ex
ææ- /
)
ææ/ 0
;
ææ0 1
}
øø 
return
¡¡ 
success
¡¡ 
;
¡¡ 
}
¬¬ 	
}
ƒƒ 
}≈≈ ŒÙ
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
objectRequest	ttw Ñ
)
ttÑ Ö
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
ÄÄ 
catch
ÅÅ 
(
ÅÅ 
	Exception
ÅÅ 
ex
ÅÅ 
)
ÅÅ  
{
ÇÇ 
result
ÉÉ 
.
ÉÉ 
Id
ÉÉ 
=
ÉÉ 
$num
ÉÉ 
;
ÉÉ 
result
ÑÑ 
.
ÑÑ 
Message
ÑÑ 
=
ÑÑ  
ex
ÑÑ! #
.
ÑÑ# $
Message
ÑÑ$ +
;
ÑÑ+ ,
log
ÜÜ 
.
ÜÜ 
Save
ÜÜ 
(
ÜÜ 
EnumLogLevel
ÜÜ %
.
ÜÜ% &
Fatal
ÜÜ& +
,
ÜÜ+ ,
ex
ÜÜ- /
)
ÜÜ/ 0
;
ÜÜ0 1
}
áá 
return
ââ 
result
ââ 
;
ââ 
}
ää 	
public
ëë 
ObjectResultList
ëë 
<
ëë  #
AccountManagerConnect
ëë  5
>
ëë5 6#
GetAccountManagerById
ëë7 L
(
ëëL M
ObjectRequest
ëëM Z
<
ëëZ [
string
ëë[ a
>
ëëa b
objectRequest
ëëc p
)
ëëp q
{
íí 	
ObjectResultList
ìì 
<
ìì #
AccountManagerConnect
ìì 2
>
ìì2 3
result
ìì4 :
=
ìì; <
new
ìì= @
ObjectResultList
ììA Q
<
ììQ R#
AccountManagerConnect
ììR g
>
ììg h
(
ììh i
)
ììi j
;
ììj k
try
ïï 
{
ññ 
if
óó 
(
óó 
string
óó 
.
óó 
IsNullOrEmpty
óó (
(
óó( )
objectRequest
óó) 6
.
óó6 7
SenderObject
óó7 C
)
óóC D
)
óóD E
{
òò 
throw
ôô 
new
ôô 
	Exception
ôô '
(
ôô' (
$str
ôô( K
)
ôôK L
;
ôôL M
}
öö 
result
úú 
=
úú %
_IServiceChatManagerDAO
úú 0
.
úú0 1#
GetAccountManagerById
úú1 F
(
úúF G
objectRequest
úúG T
)
úúT U
;
úúU V
}
ùù 
catch
ûû 
(
ûû 
	Exception
ûû 
ex
ûû 
)
ûû  
{
üü 
result
†† 
.
†† 
Id
†† 
=
†† 
$num
†† 
;
†† 
result
°° 
.
°° 
Message
°° 
=
°°  
ex
°°! #
.
°°# $
Message
°°$ +
;
°°+ ,
log
££ 
.
££ 
Save
££ 
(
££ 
EnumLogLevel
££ %
.
££% &
Fatal
££& +
,
££+ ,
ex
££- /
)
££/ 0
;
££0 1
}
§§ 
return
¶¶ 
result
¶¶ 
;
¶¶ 
}
ßß 	
public
ÆÆ 
ObjectResultList
ÆÆ 
<
ÆÆ  (
ConversationResponseEntity
ÆÆ  :
>
ÆÆ: ;)
GetListConversationByReport
ÆÆ< W
(
ÆÆW X
ObjectRequest
ÆÆX e
<
ÆÆe f
string
ÆÆf l
>
ÆÆl m
objectRequest
ÆÆn {
)
ÆÆ{ |
{
ØØ 	
ObjectResultList
∞∞ 
<
∞∞ (
ConversationResponseEntity
∞∞ 7
>
∞∞7 8
result
∞∞9 ?
=
∞∞@ A
new
∞∞B E
ObjectResultList
∞∞F V
<
∞∞V W(
ConversationResponseEntity
∞∞W q
>
∞∞q r
(
∞∞r s
)
∞∞s t
;
∞∞t u
try
≤≤ 
{
≥≥ 
if
¥¥ 
(
¥¥ 
string
¥¥ 
.
¥¥ 
IsNullOrEmpty
¥¥ (
(
¥¥( )
objectRequest
¥¥) 6
.
¥¥6 7
SenderObject
¥¥7 C
)
¥¥C D
)
¥¥D E
{
µµ 
throw
∂∂ 
new
∂∂ 
	Exception
∂∂ '
(
∂∂' (
$str
∂∂( K
)
∂∂K L
;
∂∂L M
}
∑∑ 
result
ππ 
=
ππ %
_IServiceChatManagerDAO
ππ 0
.
ππ0 1)
GetListConversationByReport
ππ1 L
(
ππL M
objectRequest
ππM Z
.
ππZ [
SenderObject
ππ[ g
)
ππg h
;
ππh i
result
ªª 
.
ªª 
Elements
ªª 
.
ªª  
ForEach
ªª  '
(
ªª' (
x
ªª( )
=>
ªª* ,
x
ªª- .
.
ªª. /
Message
ªª/ 6
=
ªª7 8
encryp
ªª9 ?
.
ªª? @

Encryption
ªª@ J
.
ªªJ K
Decrypt
ªªK R
(
ªªR S
x
ªªS T
.
ªªT U
Message
ªªU \
)
ªª\ ]
)
ªª] ^
;
ªª^ _
}
ºº 
catch
ΩΩ 
(
ΩΩ 
	Exception
ΩΩ 
ex
ΩΩ 
)
ΩΩ  
{
ææ 
result
øø 
.
øø 
Id
øø 
=
øø 
$num
øø 
;
øø 
result
¿¿ 
.
¿¿ 
Message
¿¿ 
=
¿¿  
ex
¿¿! #
.
¿¿# $
Message
¿¿$ +
;
¿¿+ ,
log
¬¬ 
.
¬¬ 
Save
¬¬ 
(
¬¬ 
EnumLogLevel
¬¬ %
.
¬¬% &
Fatal
¬¬& +
,
¬¬+ ,
ex
¬¬- /
)
¬¬/ 0
;
¬¬0 1
}
√√ 
return
≈≈ 
result
≈≈ 
;
≈≈ 
}
∆∆ 	
public
ÕÕ 
ObjectResult
ÕÕ 
<
ÕÕ 
bool
ÕÕ  
>
ÕÕ  !&
AccountManagerDisconnect
ÕÕ" :
(
ÕÕ: ;
ObjectRequest
ÕÕ; H
<
ÕÕH I
int
ÕÕI L
>
ÕÕL M
objectRequest
ÕÕN [
)
ÕÕ[ \
{
ŒŒ 	
ObjectResult
œœ 
<
œœ 
bool
œœ 
>
œœ 
result
œœ %
=
œœ& '
new
œœ( +
ObjectResult
œœ, 8
<
œœ8 9
bool
œœ9 =
>
œœ= >
(
œœ> ?
)
œœ? @
;
œœ@ A
try
—— 
{
““ 
if
”” 
(
”” 
objectRequest
”” !
.
””! "
SenderObject
””" .
<
””/ 0
$num
””1 2
)
””2 3
{
‘‘ 
throw
’’ 
new
’’ 
	Exception
’’ '
(
’’' (
$str
’’( K
)
’’K L
;
’’L M
}
÷÷ 
result
ÿÿ 
.
ÿÿ 
Data
ÿÿ 
=
ÿÿ %
_IServiceChatManagerDAO
ÿÿ 5
.
ÿÿ5 6&
AccountManagerDisconnect
ÿÿ6 N
(
ÿÿN O
objectRequest
ÿÿO \
)
ÿÿ\ ]
;
ÿÿ] ^
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ 
	Exception
⁄⁄ 
ex
⁄⁄ 
)
⁄⁄  
{
€€ 
result
‹‹ 
.
‹‹ 
Id
‹‹ 
=
‹‹ 
$num
‹‹ 
;
‹‹ 
result
›› 
.
›› 
Message
›› 
=
››  
ex
››! #
.
››# $
Message
››$ +
;
››+ ,
log
ﬂﬂ 
.
ﬂﬂ 
Save
ﬂﬂ 
(
ﬂﬂ 
EnumLogLevel
ﬂﬂ %
.
ﬂﬂ% &
Fatal
ﬂﬂ& +
,
ﬂﬂ+ ,
ex
ﬂﬂ- /
)
ﬂﬂ/ 0
;
ﬂﬂ0 1
}
‡‡ 
return
‚‚ 
result
‚‚ 
;
‚‚ 
}
„„ 	
public
ÍÍ 
ObjectResultList
ÍÍ 
<
ÍÍ  

ReportChat
ÍÍ  *
>
ÍÍ* +
	GetReport
ÍÍ, 5
(
ÍÍ5 6
ObjectRequest
ÍÍ6 C
<
ÍÍC D
ReportFilter
ÍÍD P
>
ÍÍP Q
objectRequest
ÍÍR _
)
ÍÍ_ `
{
ÎÎ 	
ObjectResultList
ÏÏ 
<
ÏÏ 

ReportChat
ÏÏ '
>
ÏÏ' (
result
ÏÏ) /
=
ÏÏ0 1
new
ÏÏ2 5
ObjectResultList
ÏÏ6 F
<
ÏÏF G

ReportChat
ÏÏG Q
>
ÏÏQ R
(
ÏÏR S
)
ÏÏS T
;
ÏÏT U
try
ÓÓ 
{
ÔÔ 
if
 
(
 
objectRequest
 !
.
! "
SenderObject
" .
.
. /
MarketId
/ 7
<
8 9
$num
: ;
)
; <
{
ÒÒ 
throw
ÚÚ 
new
ÚÚ 
	Exception
ÚÚ '
(
ÚÚ' (
$str
ÚÚ( M
)
ÚÚM N
;
ÚÚN O
}
ÛÛ 
result
ıı 
=
ıı %
_IServiceChatManagerDAO
ıı 0
.
ıı0 1
	GetReport
ıı1 :
(
ıı: ;
objectRequest
ıı; H
.
ııH I
SenderObject
ııI U
)
ııU V
;
ııV W
}
ˆˆ 
catch
˜˜ 
(
˜˜ 
	Exception
˜˜ 
ex
˜˜ 
)
˜˜  
{
¯¯ 
result
˘˘ 
.
˘˘ 
Id
˘˘ 
=
˘˘ 
$num
˘˘ 
;
˘˘ 
result
˙˙ 
.
˙˙ 
Message
˙˙ 
=
˙˙  
ex
˙˙! #
.
˙˙# $
Message
˙˙$ +
;
˙˙+ ,
log
¸¸ 
.
¸¸ 
Save
¸¸ 
(
¸¸ 
EnumLogLevel
¸¸ %
.
¸¸% &
Fatal
¸¸& +
,
¸¸+ ,
ex
¸¸- /
)
¸¸/ 0
;
¸¸0 1
}
˝˝ 
return
ˇˇ 
result
ˇˇ 
;
ˇˇ 
}
ÄÄ 	
public
áá 
ObjectResultList
áá 
<
áá  (
ConversationResponseEntity
áá  :
>
áá: ;)
GetListConversationByFilter
áá< W
(
ááW X
ObjectRequest
ááX e
<
ááe f)
ConversationResponseEntityááf Ä
>ááÄ Å
objectRequestááÇ è
)ááè ê
{
àà 	
ObjectResultList
ââ 
<
ââ (
ConversationResponseEntity
ââ 7
>
ââ7 8
result
ââ9 ?
=
ââ@ A
new
ââB E
ObjectResultList
ââF V
<
ââV W(
ConversationResponseEntity
ââW q
>
ââq r
(
ââr s
)
ââs t
;
âât u
try
ãã 
{
åå 
if
çç 
(
çç 
objectRequest
çç !
==
çç" $
null
çç& *
)
çç* +
{
éé 
throw
èè 
new
èè 
	Exception
èè '
(
èè' (
$str
èè( K
)
èèK L
;
èèL M
}
êê $
tBaseProducFiltersList
íí &
ListMarkets
íí' 2
=
íí3 4
new
íí5 8$
tBaseProducFiltersList
íí9 O
(
ííO P
)
ííP Q
;
ííQ R$
tBaseProducFiltersList
ìì &

ListAgents
ìì' 1
=
ìì2 3
new
ìì4 7$
tBaseProducFiltersList
ìì8 N
(
ììN O
)
ììO P
;
ììP Q
if
ïï 
(
ïï 
objectRequest
ïï !
.
ïï! "
SenderObject
ïï" .
.
ïï. /
ListIdsMarkets
ïï/ =
!=
ïï> @
null
ïïA E
)
ïïE F
{
ññ 
foreach
óó 
(
óó 
Int32
óó "
item
óó# '
in
óó( *
objectRequest
óó+ 8
.
óó8 9
SenderObject
óó9 E
.
óóE F
ListIdsMarkets
óóF T
)
óóT U
{
òò 
ListMarkets
ôô #
.
ôô# $
Add
ôô$ '
(
ôô' (
new
ôô( +
srProductFilters
ôô, <
{
öö 
Id
õõ 
=
õõ  
item
õõ! %
,
õõ% &
}
úú 
)
úú 
;
úú 
}
ùù 
}
ûû 
else
üü 
{
†† 
ListMarkets
°° 
=
°°  !
null
°°" &
;
°°& '
}
¢¢ 
if
§§ 
(
§§ 
objectRequest
§§ !
.
§§! "
SenderObject
§§" .
.
§§. /
ListIdsAgents
§§/ <
!=
§§= ?
null
§§@ D
)
§§D E
{
•• 
foreach
¶¶ 
(
¶¶ 
Int32
¶¶ "
item
¶¶# '
in
¶¶( *
objectRequest
¶¶+ 8
.
¶¶8 9
SenderObject
¶¶9 E
.
¶¶E F
ListIdsAgents
¶¶F S
)
¶¶S T
{
ßß 

ListAgents
®® "
.
®®" #
Add
®®# &
(
®®& '
new
®®' *
srProductFilters
®®+ ;
{
©© 
Id
™™ 
=
™™  
item
™™! %
,
™™% &
}
´´ 
)
´´ 
;
´´ 
}
¨¨ 
}
≠≠ 
else
ÆÆ 
{
ØØ 

ListAgents
∞∞ 
=
∞∞  
null
∞∞! %
;
∞∞% &
}
±± 
objectRequest
≤≤ 
.
≤≤ 
SenderObject
≤≤ *
.
≤≤* +
ListMarkets
≤≤+ 6
=
≤≤7 8
ListMarkets
≤≤9 D
;
≤≤D E
objectRequest
≥≥ 
.
≥≥ 
SenderObject
≥≥ *
.
≥≥* +

ListAgents
≥≥+ 5
=
≥≥6 7

ListAgents
≥≥8 B
;
≥≥B C
result
µµ 
=
µµ %
_IServiceChatManagerDAO
µµ 0
.
µµ0 1)
GetListConversationByFilter
µµ1 L
(
µµL M
objectRequest
µµM Z
)
µµZ [
;
µµ[ \
result
∑∑ 
.
∑∑ 
Elements
∑∑ 
.
∑∑  
ForEach
∑∑  '
(
∑∑' (
x
∑∑( )
=>
∑∑* ,
x
∑∑- .
.
∑∑. /
Message
∑∑/ 6
=
∑∑7 8
encryp
∑∑9 ?
.
∑∑? @

Encryption
∑∑@ J
.
∑∑J K
Decrypt
∑∑K R
(
∑∑R S
x
∑∑S T
.
∑∑T U
Message
∑∑U \
)
∑∑\ ]
)
∑∑] ^
;
∑∑^ _
}
∏∏ 
catch
ππ 
(
ππ 
	Exception
ππ 
ex
ππ 
)
ππ  
{
∫∫ 
result
ªª 
.
ªª 
Id
ªª 
=
ªª 
$num
ªª 
;
ªª 
result
ºº 
.
ºº 
Message
ºº 
=
ºº  
ex
ºº! #
.
ºº# $
Message
ºº$ +
;
ºº+ ,
log
ææ 
.
ææ 
Save
ææ 
(
ææ 
EnumLogLevel
ææ %
.
ææ% &
Fatal
ææ& +
,
ææ+ ,
ex
ææ- /
)
ææ/ 0
;
ææ0 1
}
øø 
return
¡¡ 
result
¡¡ 
;
¡¡ 
}
¬¬ 	
public
ƒƒ 
ObjectResult
ƒƒ 
<
ƒƒ 
UserRoleType
ƒƒ (
>
ƒƒ( )
UsersGetRoleType
ƒƒ* :
(
ƒƒ: ;
ObjectRequest
ƒƒ; H
<
ƒƒH I
string
ƒƒI O
>
ƒƒO P
objectRequest
ƒƒQ ^
)
ƒƒ^ _
{
≈≈ 	
ObjectResult
∆∆ 
<
∆∆ 
UserRoleType
∆∆ %
>
∆∆% &
result
∆∆' -
=
∆∆. /
new
∆∆0 3
ObjectResult
∆∆4 @
<
∆∆@ A
UserRoleType
∆∆A M
>
∆∆M N
(
∆∆N O
)
∆∆O P
;
∆∆P Q
try
«« 
{
»» 
if
…… 
(
…… 
string
…… 
.
…… 
IsNullOrEmpty
…… (
(
……( )
objectRequest
……) 6
.
……6 7
SenderObject
……7 C
)
……C D
)
……D E
throw
   
new
   
	Exception
   '
(
  ' (
$str
  ( N
)
  N O
;
  O P
result
ÃÃ 
=
ÃÃ %
_IServiceChatManagerDAO
ÃÃ 0
.
ÃÃ0 1
UsersGetRoleType
ÃÃ1 A
(
ÃÃA B
objectRequest
ÃÃB O
)
ÃÃO P
;
ÃÃP Q
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ 
	Exception
ŒŒ 
ex
ŒŒ 
)
ŒŒ  
{
œœ 
result
–– 
.
–– 
Id
–– 
=
–– 
-
–– 
$num
–– 
;
–– 
result
—— 
.
—— 
Message
—— 
=
——  
$str
——! '
;
——' (
log
““ 
.
““ 
Save
““ 
(
““ 
EnumLogLevel
““ %
.
““% &
Fatal
““& +
,
““+ ,
ex
““- /
)
““/ 0
;
““0 1
}
”” 
return
‘‘ 
result
‘‘ 
;
‘‘ 
}
’’ 	
public
◊◊ 
ObjectResultList
◊◊ 
<
◊◊  #
AccountManagerConnect
◊◊  5
>
◊◊5 6#
GetListAgentByManager
◊◊7 L
(
◊◊L M
ObjectRequest
◊◊M Z
<
◊◊Z [
string
◊◊[ a
>
◊◊a b
objectRequest
◊◊c p
)
◊◊p q
{
ÿÿ 	
ObjectResultList
ŸŸ 
<
ŸŸ #
AccountManagerConnect
ŸŸ 2
>
ŸŸ2 3
result
ŸŸ4 :
=
ŸŸ; <
new
ŸŸ= @
ObjectResultList
ŸŸA Q
<
ŸŸQ R#
AccountManagerConnect
ŸŸR g
>
ŸŸg h
(
ŸŸh i
)
ŸŸi j
;
ŸŸj k
try
€€ 
{
‹‹ 
if
›› 
(
›› 
string
›› 
.
›› 
IsNullOrEmpty
›› (
(
››( )
objectRequest
››) 6
.
››6 7
SenderObject
››7 C
)
››C D
)
››D E
{
ﬁﬁ 
throw
ﬂﬂ 
new
ﬂﬂ 
	Exception
ﬂﬂ '
(
ﬂﬂ' (
$str
ﬂﬂ( K
)
ﬂﬂK L
;
ﬂﬂL M
}
‡‡ 
result
‚‚ 
=
‚‚ %
_IServiceChatManagerDAO
‚‚ 0
.
‚‚0 1#
GetListAgentByManager
‚‚1 F
(
‚‚F G
objectRequest
‚‚G T
)
‚‚T U
;
‚‚U V
}
„„ 
catch
‰‰ 
(
‰‰ 
	Exception
‰‰ 
ex
‰‰ 
)
‰‰  
{
ÂÂ 
result
ÊÊ 
.
ÊÊ 
Id
ÊÊ 
=
ÊÊ 
$num
ÊÊ 
;
ÊÊ 
result
ÁÁ 
.
ÁÁ 
Message
ÁÁ 
=
ÁÁ  
ex
ÁÁ! #
.
ÁÁ# $
Message
ÁÁ$ +
;
ÁÁ+ ,
log
ÈÈ 
.
ÈÈ 
Save
ÈÈ 
(
ÈÈ 
EnumLogLevel
ÈÈ %
.
ÈÈ% &
Fatal
ÈÈ& +
,
ÈÈ+ ,
ex
ÈÈ- /
)
ÈÈ/ 0
;
ÈÈ0 1
}
ÍÍ 
return
ÏÏ 
result
ÏÏ 
;
ÏÏ 
}
ÌÌ 	
public
ÙÙ 
ObjectResultList
ÙÙ 
<
ÙÙ  (
ConversationResponseEntity
ÙÙ  :
>
ÙÙ: ;1
#GetListConversationByChatAndAgentId
ÙÙ< _
(
ÙÙ_ `
ObjectRequest
ÙÙ` m
<
ÙÙm n
string
ÙÙn t
>
ÙÙt u
objectRequestÙÙv É
)ÙÙÉ Ñ
{
ıı 	
ObjectResultList
ˆˆ 
<
ˆˆ (
ConversationResponseEntity
ˆˆ 7
>
ˆˆ7 8
result
ˆˆ9 ?
=
ˆˆ@ A
new
ˆˆB E
ObjectResultList
ˆˆF V
<
ˆˆV W(
ConversationResponseEntity
ˆˆW q
>
ˆˆq r
(
ˆˆr s
)
ˆˆs t
;
ˆˆt u
try
¯¯ 
{
˘˘ 
if
˙˙ 
(
˙˙ 
string
˙˙ 
.
˙˙ 
IsNullOrEmpty
˙˙ (
(
˙˙( )
objectRequest
˙˙) 6
.
˙˙6 7
SenderObject
˙˙7 C
)
˙˙C D
)
˙˙D E
{
˚˚ 
throw
¸¸ 
new
¸¸ 
	Exception
¸¸ '
(
¸¸' (
$str
¸¸( K
)
¸¸K L
;
¸¸L M
}
˝˝ 
result
ˇˇ 
=
ˇˇ %
_IServiceChatManagerDAO
ˇˇ 0
.
ˇˇ0 11
#GetListConversationByChatAndAgentId
ˇˇ1 T
(
ˇˇT U
objectRequest
ˇˇU b
)
ˇˇb c
;
ˇˇc d
if
ÄÄ 
(
ÄÄ 
result
ÄÄ 
.
ÄÄ 
Id
ÄÄ 
==
ÄÄ  
$num
ÄÄ! "
&&
ÄÄ# %
result
ÄÄ& ,
.
ÄÄ, -
Elements
ÄÄ- 5
!=
ÄÄ6 8
null
ÄÄ9 =
)
ÄÄ= >
{
ÄÄ? @
result
ÅÅ 
.
ÅÅ 
Elements
ÅÅ #
.
ÅÅ# $
ForEach
ÅÅ$ +
(
ÅÅ+ ,
x
ÅÅ, -
=>
ÅÅ. 0
x
ÅÅ1 2
.
ÅÅ2 3
Message
ÅÅ3 :
=
ÅÅ; <
encryp
ÅÅ= C
.
ÅÅC D

Encryption
ÅÅD N
.
ÅÅN O
Decrypt
ÅÅO V
(
ÅÅV W
x
ÅÅW X
.
ÅÅX Y
Message
ÅÅY `
)
ÅÅ` a
)
ÅÅa b
;
ÅÅb c
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
result
ÖÖ 
.
ÖÖ 
Elements
ÖÖ #
=
ÖÖ$ %
new
ÖÖ& )
List
ÖÖ* .
<
ÖÖ. /(
ConversationResponseEntity
ÖÖ/ I
>
ÖÖI J
(
ÖÖJ K
)
ÖÖK L
;
ÖÖL M
}
ÜÜ 
}
àà 
catch
ââ 
(
ââ 
	Exception
ââ 
ex
ââ 
)
ââ  
{
ää 
result
ãã 
.
ãã 
Id
ãã 
=
ãã 
$num
ãã 
;
ãã 
result
åå 
.
åå 
Message
åå 
=
åå  
ex
åå! #
.
åå# $
Message
åå$ +
;
åå+ ,
log
éé 
.
éé 
Save
éé 
(
éé 
EnumLogLevel
éé %
.
éé% &
Fatal
éé& +
,
éé+ ,
ex
éé- /
)
éé/ 0
;
éé0 1
}
èè 
return
ëë 
result
ëë 
;
ëë 
}
íí 	
public
òò 
ObjectResultList
òò 
<
òò  (
ConversationResponseEntity
òò  :
>
òò: ;3
%GetListConversationByChatAndManagerId
òò< a
(
òòa b
ObjectRequest
òòb o
<
òòo p
string
òòp v
>
òòv w
objectRequestòòx Ö
)òòÖ Ü
{
ôô 	
ObjectResultList
öö 
<
öö (
ConversationResponseEntity
öö 7
>
öö7 8
result
öö9 ?
=
öö@ A
new
ööB E
ObjectResultList
ööF V
<
ööV W(
ConversationResponseEntity
ööW q
>
ööq r
(
öör s
)
öös t
;
ööt u
try
úú 
{
ùù 
if
ûû 
(
ûû 
string
ûû 
.
ûû 
IsNullOrEmpty
ûû (
(
ûû( )
objectRequest
ûû) 6
.
ûû6 7
SenderObject
ûû7 C
)
ûûC D
)
ûûD E
{
üü 
throw
†† 
new
†† 
	Exception
†† '
(
††' (
$str
††( K
)
††K L
;
††L M
}
°° 
result
££ 
=
££ %
_IServiceChatManagerDAO
££ 0
.
££0 13
%GetListConversationByChatAndManagerId
££1 V
(
££V W
objectRequest
££W d
)
££d e
;
££e f
if
§§ 
(
§§ 
result
§§ 
.
§§ 
Id
§§ 
==
§§  
$num
§§! "
&&
§§# %
result
§§& ,
.
§§, -
Elements
§§- 5
!=
§§6 8
null
§§9 =
)
§§= >
{
•• 
result
¶¶ 
.
¶¶ 
Elements
¶¶ #
.
¶¶# $
ForEach
¶¶$ +
(
¶¶+ ,
x
¶¶, -
=>
¶¶. 0
x
¶¶1 2
.
¶¶2 3
Message
¶¶3 :
=
¶¶; <
encryp
¶¶= C
.
¶¶C D

Encryption
¶¶D N
.
¶¶N O
Decrypt
¶¶O V
(
¶¶V W
x
¶¶W X
.
¶¶X Y
Message
¶¶Y `
)
¶¶` a
)
¶¶a b
;
¶¶b c
}
ßß 
else
®® 
{
©© 
result
™™ 
.
™™ 
Elements
™™ #
=
™™$ %
new
™™& )
List
™™* .
<
™™. /(
ConversationResponseEntity
™™/ I
>
™™I J
(
™™J K
)
™™K L
;
™™L M
}
´´ 
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
	Exception
ÆÆ 
ex
ÆÆ 
)
ÆÆ  
{
ØØ 
result
∞∞ 
.
∞∞ 
Id
∞∞ 
=
∞∞ 
$num
∞∞ 
;
∞∞ 
result
±± 
.
±± 
Message
±± 
=
±±  
ex
±±! #
.
±±# $
Message
±±$ +
;
±±+ ,
log
≥≥ 
.
≥≥ 
Save
≥≥ 
(
≥≥ 
EnumLogLevel
≥≥ %
.
≥≥% &
Fatal
≥≥& +
,
≥≥+ ,
ex
≥≥- /
)
≥≥/ 0
;
≥≥0 1
}
¥¥ 
return
∂∂ 
result
∂∂ 
;
∂∂ 
}
∑∑ 	
}
∏∏ 
}ππ ≤
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
})) ¨$
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
senderObject	DD{ á
.
DDá à!
MasterParametersSet
DDà õ
,
DDõ ú
senderObject
DDù ©
.
DD© ™!
MasterParametersAdd
DD™ Ω
)
DDΩ æ
;
DDæ ø
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
}RR á
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
)	++ Ä
;
++Ä Å
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
}GG êÉ
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
ÄÄ 	
public
ÜÜ 
void
ÜÜ 
CreateSkillModule
ÜÜ %
(
ÜÜ% &
ObjectRequest
ÜÜ& 3
<
ÜÜ3 4
SkillAgentModule
ÜÜ4 D
>
ÜÜD E
objectRequest
ÜÜF S
)
ÜÜS T
{
áá 	
try
àà 
{
ââ 
if
ää 
(
ää 
objectRequest
ää !
.
ää! "
SenderObject
ää" .
.
ää. /
AgentId
ää/ 6
<
ää7 8
$num
ää9 :
)
ää: ;
throw
ãã 
new
ãã 
	Exception
ãã '
(
ãã' (
$str
ãã( O
)
ããO P
;
ããP Q
if
çç 
(
çç 
objectRequest
çç !
.
çç! "
SenderObject
çç" .
.
çç. /
ModuleId
çç/ 7
<
çç8 9
$num
çç: ;
)
çç; <
throw
éé 
new
éé 
	Exception
éé '
(
éé' (
$str
éé( R
)
ééR S
;
ééS T#
_serviceSkillAgentDAO
ññ %
.
ññ% &
CreateSkillModule
ññ& 7
(
ññ7 8
objectRequest
ññ8 E
)
ññE F
;
ññF G
}
óó 
catch
òò 
(
òò 
	Exception
òò 
ex
òò 
)
òò 
{
ôô 
log
öö 
.
öö 
Save
öö 
(
öö 
EnumLogLevel
öö %
.
öö% &
Fatal
öö& +
,
öö+ ,
ex
öö- /
)
öö/ 0
;
öö0 1
throw
úú 
new
úú 
	Exception
úú #
(
úú# $
ex
úú$ &
.
úú& '
Message
úú' .
)
úú. /
;
úú/ 0
}
ùù 
}
ûû 	
public
§§ 
void
§§ !
UpdateSkillLanguage
§§ '
(
§§' (
ObjectRequest
§§( 5
<
§§5 6 
SkillAgentLanguage
§§6 H
>
§§H I
objectRequest
§§J W
)
§§W X
{
•• 	
try
¶¶ 
{
ßß 
if
®® 
(
®® 
objectRequest
®® !
.
®®! "
SenderObject
®®" .
.
®®. /
AgentId
®®/ 6
<
®®7 8
$num
®®9 :
)
®®: ;
throw
©© 
new
©© 
	Exception
©© '
(
©©' (
$str
©©( O
)
©©O P
;
©©P Q
if
´´ 
(
´´ 
objectRequest
´´ !
.
´´! "
SenderObject
´´" .
.
´´. /

LanguageId
´´/ 9
<
´´: ;
$num
´´< =
)
´´= >
throw
¨¨ 
new
¨¨ 
	Exception
¨¨ '
(
¨¨' (
$str
¨¨( R
)
¨¨R S
;
¨¨S T#
_serviceSkillAgentDAO
¥¥ %
.
¥¥% &!
UpdateSkillLanguage
¥¥& 9
(
¥¥9 :
objectRequest
¥¥: G
)
¥¥G H
;
¥¥H I
}
µµ 
catch
∂∂ 
(
∂∂ 
	Exception
∂∂ 
ex
∂∂ 
)
∂∂ 
{
∑∑ 
log
∏∏ 
.
∏∏ 
Save
∏∏ 
(
∏∏ 
EnumLogLevel
∏∏ %
.
∏∏% &
Fatal
∏∏& +
,
∏∏+ ,
ex
∏∏- /
)
∏∏/ 0
;
∏∏0 1
throw
∫∫ 
new
∫∫ 
	Exception
∫∫ #
(
∫∫# $
ex
∫∫$ &
.
∫∫& '
Message
∫∫' .
)
∫∫. /
;
∫∫/ 0
}
ªª 
}
ºº 	
public
¬¬ 
void
¬¬ 
UpdateSkillModule
¬¬ %
(
¬¬% &
ObjectRequest
¬¬& 3
<
¬¬3 4
SkillAgentModule
¬¬4 D
>
¬¬D E
objectRequest
¬¬F S
)
¬¬S T
{
√√ 	
try
ƒƒ 
{
≈≈ 
if
∆∆ 
(
∆∆ 
objectRequest
∆∆ !
.
∆∆! "
SenderObject
∆∆" .
.
∆∆. /
AgentId
∆∆/ 6
<
∆∆7 8
$num
∆∆9 :
)
∆∆: ;
throw
«« 
new
«« 
	Exception
«« '
(
««' (
$str
««( O
)
««O P
;
««P Q
if
…… 
(
…… 
objectRequest
…… !
.
……! "
SenderObject
……" .
.
……. /
ModuleId
……/ 7
<
……8 9
$num
……: ;
)
……; <
throw
   
new
   
	Exception
   '
(
  ' (
$str
  ( R
)
  R S
;
  S T#
_serviceSkillAgentDAO
”” %
.
””% &
UpdateSkillModule
””& 7
(
””7 8
objectRequest
””8 E
)
””E F
;
””F G
}
‘‘ 
catch
’’ 
(
’’ 
	Exception
’’ 
ex
’’ 
)
’’  
{
÷÷ 
log
◊◊ 
.
◊◊ 
Save
◊◊ 
(
◊◊ 
EnumLogLevel
◊◊ %
.
◊◊% &
Fatal
◊◊& +
,
◊◊+ ,
ex
◊◊- /
)
◊◊/ 0
;
◊◊0 1
throw
ŸŸ 
new
ŸŸ 
	Exception
ŸŸ #
(
ŸŸ# $
ex
ŸŸ$ &
.
ŸŸ& '
Message
ŸŸ' .
)
ŸŸ. /
;
ŸŸ/ 0
}
⁄⁄ 
}
€€ 	
public
›› 
ObjectResult
›› 
<
›› 
Boolean
›› #
>
››# $(
ValidateSkillByAgentModule
››% ?
(
››? @
ObjectRequest
››@ M
<
››M N
SkillAgentModule
››N ^
>
››^ _
objectRequest
››` m
)
››m n
{
ﬁﬁ 	
ObjectResult
ﬂﬂ 
<
ﬂﬂ 
Boolean
ﬂﬂ  
>
ﬂﬂ  !
result
ﬂﬂ" (
=
ﬂﬂ) *
new
ﬂﬂ+ .
ObjectResult
ﬂﬂ/ ;
<
ﬂﬂ; <
Boolean
ﬂﬂ< C
>
ﬂﬂC D
(
ﬂﬂD E
)
ﬂﬂE F
;
ﬂﬂF G
try
‡‡ 
{
·· 
if
‚‚ 
(
‚‚ 
objectRequest
‚‚ !
.
‚‚! "
SenderObject
‚‚" .
.
‚‚. /
AgentId
‚‚/ 6
<
‚‚7 8
$num
‚‚9 :
)
‚‚: ;
throw
„„ 
new
„„ 
	Exception
„„ '
(
„„' (
$str
„„( O
)
„„O P
;
„„P Q
if
ÂÂ 
(
ÂÂ 
objectRequest
ÂÂ !
.
ÂÂ! "
SenderObject
ÂÂ" .
.
ÂÂ. /
ModuleId
ÂÂ/ 7
<
ÂÂ8 9
$num
ÂÂ: ;
)
ÂÂ; <
throw
ÊÊ 
new
ÊÊ 
	Exception
ÊÊ '
(
ÊÊ' (
$str
ÊÊ( R
)
ÊÊR S
;
ÊÊS T
result
ËË 
=
ËË #
_serviceSkillAgentDAO
ËË .
.
ËË. /(
ValidateSkillByAgentModule
ËË/ I
(
ËËI J
objectRequest
ËËJ W
)
ËËW X
;
ËËX Y
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ 
	Exception
ÍÍ 
ex
ÍÍ 
)
ÍÍ  
{
ÎÎ 
result
ÏÏ 
.
ÏÏ 
Id
ÏÏ 
=
ÏÏ 
-
ÏÏ 
$num
ÏÏ 
;
ÏÏ 
result
ÌÌ 
.
ÌÌ 
Message
ÌÌ 
=
ÌÌ  
$str
ÌÌ! '
;
ÌÌ' (
log
ÓÓ 
.
ÓÓ 
Save
ÓÓ 
(
ÓÓ 
EnumLogLevel
ÓÓ %
.
ÓÓ% &
Fatal
ÓÓ& +
,
ÓÓ+ ,
ex
ÓÓ- /
)
ÓÓ/ 0
;
ÓÓ0 1
throw
 
new
 
	Exception
 #
(
# $
ex
$ &
.
& '
Message
' .
)
. /
;
/ 0
}
ÒÒ 
return
ÚÚ 
result
ÚÚ 
;
ÚÚ 
}
ÛÛ 	
public
ıı 
ObjectResult
ıı 
<
ıı 
Boolean
ıı #
>
ıı# $*
ValidateSkillByAgentLanguage
ıı% A
(
ııA B
ObjectRequest
ııB O
<
ııO P 
SkillAgentLanguage
ııP b
>
ııb c
objectRequest
ııd q
)
ııq r
{
ˆˆ 	
ObjectResult
˜˜ 
<
˜˜ 
Boolean
˜˜  
>
˜˜  !
result
˜˜" (
=
˜˜) *
new
˜˜+ .
ObjectResult
˜˜/ ;
<
˜˜; <
Boolean
˜˜< C
>
˜˜C D
(
˜˜D E
)
˜˜E F
;
˜˜F G
try
¯¯ 
{
˘˘ 
if
˙˙ 
(
˙˙ 
objectRequest
˙˙ !
.
˙˙! "
SenderObject
˙˙" .
.
˙˙. /
AgentId
˙˙/ 6
<
˙˙7 8
$num
˙˙9 :
)
˙˙: ;
throw
˚˚ 
new
˚˚ 
	Exception
˚˚ '
(
˚˚' (
$str
˚˚( O
)
˚˚O P
;
˚˚P Q
if
˝˝ 
(
˝˝ 
objectRequest
˝˝ !
.
˝˝! "
SenderObject
˝˝" .
.
˝˝. /

LanguageId
˝˝/ 9
<
˝˝: ;
$num
˝˝< =
)
˝˝= >
throw
˛˛ 
new
˛˛ 
	Exception
˛˛ '
(
˛˛' (
$str
˛˛( R
)
˛˛R S
;
˛˛S T
result
ÄÄ 
=
ÄÄ #
_serviceSkillAgentDAO
ÄÄ .
.
ÄÄ. /*
ValidateSkillByAgentLanguage
ÄÄ/ K
(
ÄÄK L
objectRequest
ÄÄL Y
)
ÄÄY Z
;
ÄÄZ [
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
	Exception
ÇÇ 
ex
ÇÇ 
)
ÇÇ  
{
ÉÉ 
result
ÑÑ 
.
ÑÑ 
Id
ÑÑ 
=
ÑÑ 
-
ÑÑ 
$num
ÑÑ 
;
ÑÑ 
result
ÖÖ 
.
ÖÖ 
Message
ÖÖ 
=
ÖÖ  
$str
ÖÖ! '
;
ÖÖ' (
log
ÜÜ 
.
ÜÜ 
Save
ÜÜ 
(
ÜÜ 
EnumLogLevel
ÜÜ %
.
ÜÜ% &
Fatal
ÜÜ& +
,
ÜÜ+ ,
ex
ÜÜ- /
)
ÜÜ/ 0
;
ÜÜ0 1
throw
àà 
new
àà 
	Exception
àà #
(
àà# $
ex
àà$ &
.
àà& '
Message
àà' .
)
àà. /
;
àà/ 0
}
ââ 
return
ää 
result
ää 
;
ää 
}
ãã 	
}
åå 
}çç µ:
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
}ll °8
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