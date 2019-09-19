�
?D:\repositoriosGit\Chat\Chat\xChatDAO\IServiceChatManagerDAO.cs
	namespace 	
xChatDAO
 
{ 
public 

	interface "
IServiceChatManagerDAO +
{ 
bool		 $
AccountManagerDisconnect		 %
(		% &
ObjectRequest		& 3
<		3 4
int		4 7
>		7 8
objectRequest		9 F
)		F G
;		G H
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
(P Q
stringQ W
senderObjectX d
)d e
;e f
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
(. /
ReportFilter/ ;
senderObject< H
)H I
;I J
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
7D:\repositoriosGit\Chat\Chat\xChatDAO\IServiceFaqDAO.cs
	namespace 	
xChatDAO
 
{ 
public 

	interface 
IServiceFaqDAO #
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
} �
@D:\repositoriosGit\Chat\Chat\xChatDAO\IServiceMasterEntityDAO.cs
	namespace 	
xChatDAO
 
{ 
public 

	interface #
IServiceMasterEntityDAO ,
{ 
ObjectResultList 
< 
EntityMaster %
>% &
GetList' .
(. /
EntityMasterEnum/ ?
entityMasterEnum@ P
)P Q
;Q R
ObjectResultList		 
<		 
EntityMaster		 %
>		% &
SearchMasterGetList		' :
(		: ;
string		; A
masterEntity		B N
,		N O
string		P V
masterAction		W c
,		c d
string		e k
masterParametersSet		l 
,			 �
string
		� �!
masterParametersAdd
		� �
)
		� �
;
		� �
}

 
} �
>D:\repositoriosGit\Chat\Chat\xChatDAO\IServiceSkillAgentDAO.cs
	namespace 	
xChatDAO
 
{ 
public 

	interface !
IServiceSkillAgentDAO *
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
DD:\repositoriosGit\Chat\Chat\xChatDAO\IServiceUserAccountGroupDAO.cs
	namespace 	
xChatDAO
 
{		 
public

 

	interface

 '
IServiceUserAccountGroupDAO

 0
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

8D:\repositoriosGit\Chat\Chat\xChatDAO\IServiceUserDAO.cs
	namespace 	
xChatDAO
 
{		 
public

 

	interface

 
IServiceUserDAO

 $
{ 
void 
CreateUsersRoleType  
(  !
ObjectRequest! .
<. /
UserRoleType/ ;
>; <
objectRequest= J
)J K
;K L
void 
UpdateUsersRoleType  
(  !
ObjectRequest! .
<. /
UserRoleType/ ;
>; <
objectRequest= J
)J K
;K L
void 
DeleteUsersRoleType  
(  !
ObjectRequest! .
<. /
UserRoleType/ ;
>; <
objectRequest= J
)J K
;K L
ObjectResultList 
< 
UserRoleType %
>% & 
GetListUsersRoleType' ;
(; <
ObjectRequest< I
<I J
UserRoleTypeJ V
>V W
objectRequestX e
)e f
;f g
ObjectResult 
< 
Boolean 
> !
ValidateUsersRoleType 3
(3 4
ObjectRequest4 A
<A B
UserRoleTypeB N
>N O
objectRequestP ]
)] ^
;^ _
} 
} �
@D:\repositoriosGit\Chat\Chat\xChatDAO\Properties\AssemblyInfo.cs
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
]$$) *��
7D:\repositoriosGit\Chat\Chat\xChatDAO\ServiceChatDAO.cs
	namespace 	
xChatDAO
 
{ 
public 

static 
class 
ServiceChatDAO &
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
.Q R
DataAccessLayerR a
)a b
;b c
public 
static 
int 

ChatCreate $
($ %
ConversationEntity% 7
conversationEntity8 J
,J K
Int32L Q#
accountManagerConnectIdR i
)i j
{ 	
Int32 
chatId 
= 
$num 
; 
try 
{ 
ListParameters   

parameters   )
=  * +
new  , /
ListParameters  0 >
(  > ?
)  ? @
;  @ A

parameters!! 
.!! 
Add!! 
(!! 
$str!! /
,!!/ 0
conversationEntity!!1 C
.!!C D
DistributorId!!D Q
)!!Q R
;!!R S

parameters"" 
."" 
Add"" 
("" 
$str"" *
,""* +
conversationEntity"", >
.""> ?
UserName""? G
)""G H
;""H I

parameters## 
.## 
Add## 
(## 
$str## +
,##+ ,
conversationEntity##- ?
.##? @
	UserEmail##@ I
)##I J
;##J K

parameters$$ 
.$$ 
Add$$ 
($$ 
$str$$ +
,$$+ ,
conversationEntity$$- ?
.$$? @
	UserToken$$@ I
)$$I J
;$$J K

parameters%% 
.%% 
Add%% 
(%% 
$str%% -
,%%- .
conversationEntity%%/ A
.%%A B
ModuleAppId%%B M
)%%M N
;%%N O

parameters&& 
.&& 
Add&& 
(&& 
$str&& 9
,&&9 :#
accountManagerConnectId&&; R
)&&R S
;&&S T

parameters(( 
.(( 
Add(( 
((( 
$str(( *
,((* +
conversationEntity((, >
.((> ?!
ChatBySkillLanguageId((? T
)((T U
;((U V

parameters)) 
.)) 
Add)) 
()) 
$str)) (
,))( )
conversationEntity))* <
.))< =
ChatBySkillModuleId))= P
)))P Q
;))Q R
CommandParameter++  
queryCommand++! -
=++. /
new++0 3
CommandParameter++4 D
(++D E
$str++E Z
,++Z [

parameters++\ f
)++f g
;++g h
DataRow,, 
	rowResult,, !
=,," #
	DbManager,,$ -
.,,- .
Instance,,. 6
.,,6 7
ExecuteRegister,,7 F
(,,F G
queryCommand,,G S
),,S T
;,,T U
chatId.. 
=.. 
Convert..  
...  !
ToInt32..! (
(..( )
	rowResult..) 2
[..2 3
$str..3 ;
]..; <
)..< =
;..= >
}// 
catch00 
(00 
TimeoutException00 #
tout00$ (
)00( )
{11 
log22 
.22 
Save22 
(22 
EnumLogLevel22 %
.22% &
Fatal22& +
,22+ ,
tout22- 1
.221 2
Message222 9
)229 :
;22: ;
}33 
catch44 
(44 
	Exception44 
ex44 
)44  
{55 
log66 
.66 
Save66 
(66 
EnumLogLevel66 %
.66% &
Fatal66& +
,66+ ,
ex66- /
)66/ 0
;660 1
}77 
return99 
chatId99 
;99 
}:: 	
publicAA 
staticAA 
ObjectResultListAA &
<AA& '
	ChatTokenAA' 0
>AA0 1
ChatDisconnectedAA2 B
(AAB C
stringAAC I
connectionIdAAJ V
)AAV W
{BB 	
ObjectResultListCC 
<CC 
	ChatTokenCC &
>CC& '
tokenDestinoCC( 4
=CC5 6
newCC7 :
ObjectResultListCC; K
<CCK L
	ChatTokenCCL U
>CCU V
(CCV W
)CCW X
;CCX Y
tryEE 
{FF 
ListParametersGG 

parametersGG )
=GG* +
newGG, /
ListParametersGG0 >
(GG> ?
)GG? @
;GG@ A

parametersHH 
.HH 
AddHH 
(HH 
$strHH +
,HH+ ,
connectionIdHH- 9
)HH9 :
;HH: ;
CommandParameterJJ  
queryCommandJJ! -
=JJ. /
newJJ0 3
CommandParameterJJ4 D
(JJD E
$strJJE `
,JJ` a

parametersJJb l
)JJl m
;JJm n
	DataTableKK 
	dataTableKK #
=KK$ %
	DbManagerKK& /
.KK/ 0
InstanceKK0 8
.KK8 9
ExecuteTableKK9 E
(KKE F
queryCommandKKF R
)KKR S
;KKS T
tokenDestinoMM 
=MM 
newMM "
ObjectResultListMM# 3
<MM3 4
	ChatTokenMM4 =
>MM= >
(MM> ?
	dataTableMM? H
)MMH I
;MMI J
}NN 
catchOO 
(OO 
TimeoutExceptionOO #
toutOO$ (
)OO( )
{PP 
logQQ 
.QQ 
SaveQQ 
(QQ 
EnumLogLevelQQ %
.QQ% &
FatalQQ& +
,QQ+ ,
toutQQ- 1
.QQ1 2
MessageQQ2 9
)QQ9 :
;QQ: ;
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
}VV 
returnXX 
tokenDestinoXX 
;XX  
}YY 	
public`` 
static`` 
int`` 
ChatMessageCreate`` +
(``+ ,
ConversationEntity``, >
conversationEntity``? Q
)``Q R
{aa 	
intbb 
chatMessageIdbb 
=bb 
$numbb  !
;bb! "
trydd 
{ee 
ListParametersff 

parametersff )
=ff* +
newff, /
ListParametersff0 >
(ff> ?
)ff? @
;ff@ A

parametersgg 
.gg 
Addgg 
(gg 
$strgg (
,gg( )
conversationEntitygg* <
.gg< =
ChatIdgg= C
)ggC D
;ggD E

parametershh 
.hh 
Addhh 
(hh 
$strhh 3
,hh3 4
conversationEntityhh5 G
.hhG H
MessagehhH O
)hhO P
;hhP Q

parametersii 
.ii 
Addii 
(ii 
$strii *
,ii* +
DateTimeii, 4
.ii4 5
Nowii5 8
)ii8 9
;ii9 :

parametersjj 
.jj 
Addjj 
(jj 
$strjj 7
,jj7 8
conversationEntityjj9 K
.jjK L

IsSendUserjjL V
)jjV W
;jjW X

parameterskk 
.kk 
Addkk 
(kk 
$strkk .
,kk. /
conversationEntitykk0 B
.kkB C
ManagerTokenkkC O
)kkO P
;kkP Q
CommandParametermm  
queryCommandmm! -
=mm. /
newmm0 3
CommandParametermm4 D
(mmD E
$strmmE b
,mmb c

parametersmmd n
)mmn o
;mmo p
DataRownn 
	rowResultnn !
=nn" #
	DbManagernn$ -
.nn- .
Instancenn. 6
.nn6 7
ExecuteRegisternn7 F
(nnF G
queryCommandnnG S
)nnS T
;nnT U
chatMessageIdpp 
=pp 
Convertpp  '
.pp' (
ToInt32pp( /
(pp/ 0
	rowResultpp0 9
[pp9 :
$strpp: I
]ppI J
)ppJ K
;ppK L
conversationEntityrr "
.rr" #
	UserTokenrr# ,
=rr- .
	rowResultrr/ 8
[rr8 9
$strrr9 D
]rrD E
.rrE F
ToStringrrF N
(rrN O
)rrO P
;rrP Q
conversationEntityss "
.ss" #

AgentTokenss# -
=ss. /
	rowResultss0 9
[ss9 :
$strss: O
]ssO P
.ssP Q
ToStringssQ Y
(ssY Z
)ssZ [
;ss[ \
conversationEntitytt "
.tt" #
AgentIdtt# *
=tt+ ,
Converttt- 4
.tt4 5
ToInt32tt5 <
(tt< =
	rowResulttt= F
[ttF G
$strttG Y
]ttY Z
)ttZ [
;tt[ \
}uu 
catchvv 
(vv 
TimeoutExceptionvv #
toutvv$ (
)vv( )
{ww 
logxx 
.xx 
Savexx 
(xx 
EnumLogLevelxx %
.xx% &
Fatalxx& +
,xx+ ,
toutxx- 1
.xx1 2
Messagexx2 9
)xx9 :
;xx: ;
}yy 
catchzz 
(zz 
	Exceptionzz 
exzz 
)zz  
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
;||0 1
}}} 
return 
chatMessageId  
;  !
}
�� 	
public
�� 
static
�� 
void
�� &
SetMessageReadForManager
�� 3
(
��3 4 
ConversationEntity
��4 F 
conversationEntity
��G Y
)
��Y Z
{
�� 	
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� (
,
��( ) 
conversationEntity
��* <
.
��< =
ChatId
��= C
)
��C D
;
��D E

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� *
,
��* +
DateTime
��, 4
.
��4 5
Now
��5 8
)
��8 9
;
��9 :
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E l
,
��l m

parameters
��n x
)
��x y
;
��y z
	DbManager
�� 
.
�� 
Instance
�� "
.
��" #
ExecuteCommand
��# 1
(
��1 2
queryCommand
��2 >
)
��> ?
;
��? @
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
static
�� 
Int32
�� &
UserDisconnectForManager
�� 4
(
��4 5 
ConversationEntity
��5 G 
conversationEntity
��H Z
)
��Z [
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
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� (
,
��( ) 
conversationEntity
��* <
.
��< =
ChatId
��= C
)
��C D
;
��D E

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� *
,
��* +
DateTime
��, 4
.
��4 5
Now
��5 8
)
��8 9
;
��9 :
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E b
,
��b c

parameters
��d n
)
��n o
;
��o p
DataRow
�� 
	rowResult
�� !
=
��" #
	DbManager
��$ -
.
��- .
Instance
��. 6
.
��6 7
ExecuteRegister
��7 F
(
��F G
queryCommand
��G S
)
��S T
;
��T U
if
�� 
(
�� 
	rowResult
�� 
!=
��  
null
��! %
)
��% &
{
�� 
success
�� 
=
�� 
Convert
�� %
.
��% &
ToInt32
��& -
(
��- .
	rowResult
��. 7
[
��7 8
$str
��8 D
]
��D E
.
��E F
ToString
��F N
(
��N O
)
��O P
)
��P Q
;
��Q R
}
�� 
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
static
�� 
string
�� 
GetManagerToken
�� ,
(
��, - 
ConversationEntity
��- ? 
conversationEntity
��@ R
)
��R S
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
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� (
,
��( ) 
conversationEntity
��* <
.
��< =
ChatId
��= C
)
��C D
;
��D E
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E s
,
��s t

parameters
��u 
)�� �
;��� �
DataRow
�� 
	rowResult
�� !
=
��" #
	DbManager
��$ -
.
��- .
Instance
��. 6
.
��6 7
ExecuteRegister
��7 F
(
��F G
queryCommand
��G S
)
��S T
;
��T U
managerToken
�� 
=
�� 
	rowResult
�� (
[
��( )
$str
��) >
]
��> ?
.
��? @
ToString
��@ H
(
��H I
)
��I J
;
��J K
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
static
�� 
string
�� "
GetManagerTokenValue
�� 1
(
��1 2 
ConversationEntity
��2 D 
conversationEntity
��E W
)
��W X
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
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� )
,
��) * 
conversationEntity
��+ =
.
��= >
AgentId
��> E
)
��E F
;
��F G
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E l
,
��l m

parameters
��n x
)
��x y
;
��y z
DataRow
�� 
	rowResult
�� !
=
��" #
	DbManager
��$ -
.
��- .
Instance
��. 6
.
��6 7
ExecuteRegister
��7 F
(
��F G
queryCommand
��G S
)
��S T
;
��T U
managerToken
�� 
=
�� 
	rowResult
�� (
[
��( )
$str
��) >
]
��> ?
.
��? @
ToString
��@ H
(
��H I
)
��I J
;
��J K
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
static
��  
ConversationEntity
�� ()
GetAgentAndManagerIdByToken
��) D
(
��D E
string
��E K
token
��L Q
)
��Q R
{
�� 	 
ConversationEntity
�� 
obj
�� "
=
��# $
new
��% ( 
ConversationEntity
��) ;
(
��; <
)
��< =
;
��= >
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� '
,
��' (
token
��) .
)
��. /
;
��/ 0
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E n
,
��n o

parameters
��p z
)
��z {
;
��{ |
DataRow
�� 
	rowResult
�� !
=
��" #
	DbManager
��$ -
.
��- .
Instance
��. 6
.
��6 7
ExecuteRegister
��7 F
(
��F G
queryCommand
��G S
)
��S T
;
��T U
obj
�� 
.
�� 
	ManagerId
�� 
=
�� 
Convert
��  '
.
��' (
ToInt32
��( /
(
��/ 0
	rowResult
��0 9
[
��9 :
$str
��: L
]
��L M
.
��M N
ToString
��N V
(
��V W
)
��W X
)
��X Y
;
��Y Z
obj
�� 
.
�� 
AgentId
�� 
=
�� 
Convert
�� %
.
��% &
ToInt32
��& -
(
��- .
	rowResult
��. 7
[
��7 8
$str
��8 A
]
��A B
.
��B C
ToString
��C K
(
��K L
)
��L M
)
��M N
;
��N O
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
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
�� 
obj
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
void
�� &
AccountManagerDisconnect
�� 3
(
��3 4"
AccountManagerEntity
��4 H"
accountManagerEntity
��I ]
)
��] ^
{
�� 	
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� 2
,
��2 3"
accountManagerEntity
��4 H
.
��H I
AccountUserId
��I V
)
��V W
;
��W X

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� -
,
��- ."
accountManagerEntity
��/ C
.
��C D
ModuloAppId
��D O
)
��O P
;
��P Q
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E s
,
��s t

parameters
��u 
)�� �
;��� �
	DbManager
�� 
.
�� 
Instance
�� "
.
��" #
ExecuteCommand
��# 1
(
��1 2
queryCommand
��2 >
)
��> ?
;
��? @
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
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
�� 
}
�� 	
public
�� 
static
�� 
void
�� #
AccountManagerConnect
�� 0
(
��0 1"
AccountManagerEntity
��1 E"
accountManagerEntity
��F Z
)
��Z [
{
�� 	
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� -
,
��- ."
accountManagerEntity
��/ C
.
��C D
ModuloAppId
��D O
)
��O P
;
��P Q

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� 2
,
��2 3"
accountManagerEntity
��4 H
.
��H I
AccountUserId
��I V
)
��V W
;
��W X

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� 5
,
��5 6"
accountManagerEntity
��7 K
.
��K L
Token
��L Q
)
��Q R
;
��R S

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� @
,
��@ A
DateTime
��B J
.
��J K
Now
��K N
)
��N O
;
��O P
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E k
,
��k l

parameters
��m w
)
��w x
;
��x y
	DbManager
�� 
.
�� 
Instance
�� "
.
��" #
ExecuteCommand
��# 1
(
��1 2
queryCommand
��2 >
)
��> ?
;
��? @
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
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
�� 
}
�� 	
public
�� 
static
�� 
int
�� 2
$GetAccountManagerConnectBySkillLevel
�� >
(
��> ? 
ConversationEntity
��? Q 
conversationEntity
��R d
)
��d e
{
�� 	
Int32
�� %
accountManagerConnectId
�� )
=
��* +
-
��, -
$num
��- .
;
��. /
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� ,
,
��, - 
conversationEntity
��. @
.
��@ A#
ChatBySkillLanguageId
��A V
)
��V W
;
��W X

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� *
,
��* + 
conversationEntity
��, >
.
��> ?!
ChatBySkillModuleId
��? R
)
��R S
;
��S T
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E k
,
��k l

parameters
��m w
)
��w x
;
��x y
DataRow
�� 
drresult
��  
=
��! "
	DbManager
��# ,
.
��, -
Instance
��- 5
.
��5 6
ExecuteRegister
��6 E
(
��E F
queryCommand
��F R
)
��R S
;
��S T
if
�� 
(
�� 
drresult
�� 
!=
�� 
null
��  $
&&
��% '
!
��( )
drresult
��) 1
.
��1 2
IsNull
��2 8
(
��8 9
$str
��9 R
)
��R S
)
��S T
{
�� %
accountManagerConnectId
�� +
=
��, -
Convert
��. 5
.
��5 6
ToInt32
��6 =
(
��= >
drresult
��> F
[
��F G
$str
��G `
]
��` a
)
��a b
;
��b c 
conversationEntity
�� &
.
��& '

AgentToken
��' 1
=
��2 3
drresult
��4 <
[
��< =
$str
��= R
]
��R S
.
��S T
ToString
��T \
(
��\ ]
)
��] ^
;
��^ _
}
�� 
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
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
�� %
accountManagerConnectId
�� *
;
��* +
}
�� 	
public
�� 
static
�� 
int
�� (
GetAccountManagerConnectId
�� 4
(
��4 5 
ConversationEntity
��5 G 
conversationEntity
��H Z
)
��Z [
{
�� 	
Int32
�� %
accountManagerConnectId
�� )
=
��* +
$num
��, -
;
��- .
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� -
,
��- . 
conversationEntity
��/ A
.
��A B
ModuleAppId
��B M
)
��M N
;
��N O
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E l
,
��l m

parameters
��n x
)
��x y
;
��y z
DataRow
�� 
drresult
��  
=
��! "
	DbManager
��# ,
.
��, -
Instance
��- 5
.
��5 6
ExecuteRegister
��6 E
(
��E F
queryCommand
��F R
)
��R S
;
��S T
if
�� 
(
�� 
drresult
�� 
!=
�� 
null
��  $
&&
��% '
!
��( )
drresult
��) 1
.
��1 2
IsNull
��2 8
(
��8 9
$str
��9 R
)
��R S
)
��S T
{
�� %
accountManagerConnectId
�� +
=
��, -
Convert
��. 5
.
��5 6
ToInt32
��6 =
(
��= >
drresult
��> F
[
��F G
$str
��G `
]
��` a
)
��a b
;
��b c 
conversationEntity
�� &
.
��& '

AgentToken
��' 1
=
��2 3
drresult
��4 <
[
��< =
$str
��= R
]
��R S
.
��S T
ToString
��T \
(
��\ ]
)
��] ^
;
��^ _
}
�� 
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
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
�� %
accountManagerConnectId
�� *
;
��* +
}
�� 	
public
�� 
static
�� 
List
�� 
<
��  
ConversationEntity
�� -
>
��- .
GetAllMessages
��/ =
(
��= >
)
��> ?
{
�� 	
List
�� 
<
��  
ConversationEntity
�� #
>
��# $
result
��% +
=
��, -
new
��. 1
List
��2 6
<
��6 7 
ConversationEntity
��7 I
>
��I J
(
��J K
)
��K L
;
��L M
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E b
,
��b c

parameters
��d n
)
��n o
;
��o p
	DataTable
�� 
dtresult
�� "
=
��# $
	DbManager
��% .
.
��. /
Instance
��/ 7
.
��7 8
ExecuteTable
��8 D
(
��D E
queryCommand
��E Q
)
��Q R
;
��R S
foreach
�� 
(
�� 
DataRow
��  
dataRow
��! (
in
��) +
dtresult
��, 4
.
��4 5
Rows
��5 9
)
��9 :
{
�� 
result
�� 
.
�� 
Add
�� 
(
�� 
new
�� " 
ConversationEntity
��# 5
(
��5 6
)
��6 7
{
�� 
Message
�� 
=
��  !
dataRow
��" )
[
��) *
$str
��* 6
]
��6 7
.
��7 8
ToString
��8 @
(
��@ A
)
��A B
,
��B C
ChatId
�� 
=
��  
Convert
��! (
.
��( )
ToInt32
��) 0
(
��0 1
dataRow
��1 8
[
��8 9
$str
��9 I
]
��I J
)
��J K
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
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
�� 
static
�� 
void
�� 
SetEncrypMessages
�� ,
(
��, -
List
��- 1
<
��1 2 
ConversationEntity
��2 D
>
��D E
listaConversation
��F W
)
��W X
{
�� 	
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A
foreach
�� 
(
��  
ConversationEntity
�� + 
conversationEntity
��, >
in
��? A
listaConversation
��B S
)
��S T
{
�� 

parameters
�� 
=
��  
new
��! $
ListParameters
��% 3
(
��3 4
)
��4 5
;
��5 6

parameters
�� 
.
�� 
Add
�� "
(
��" #
$str
��# (
,
��( ) 
conversationEntity
��* <
.
��< =
ChatId
��= C
)
��C D
;
��D E

parameters
�� 
.
�� 
Add
�� "
(
��" #
$str
��# -
,
��- . 
conversationEntity
��/ A
.
��A B
Message
��B I
)
��I J
;
��J K
CommandParameter
�� $
queryCommand
��% 1
=
��2 3
new
��4 7
CommandParameter
��8 H
(
��H I
$str
��I h
,
��h i

parameters
��j t
)
��t u
;
��u v
	DbManager
�� 
.
�� 
Instance
�� &
.
��& '
ExecuteCommand
��' 5
(
��5 6
queryCommand
��6 B
)
��B C
;
��C D
}
�� 
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
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
�� 
}
�� 	
public
�� 
static
�� 
ObjectResultList
�� &
<
��& '#
AccountManagerConnect
��' <
>
��< =#
GetListAgentByManager
��> S
(
��S T 
ConversationEntity
��T f
objectRequest
��g t
)
��t u
{
�� 	
ObjectResultList
�� 
<
�� #
AccountManagerConnect
�� 2
>
��2 3
result
��4 :
=
��; <
new
��= @
ObjectResultList
��A Q
<
��Q R#
AccountManagerConnect
��R g
>
��g h
(
��h i
)
��i j
;
��j k
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� +
,
��+ ,
objectRequest
��- :
.
��: ;
	ManagerId
��; D
)
��D E
;
��E F
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E s
,
��s t

parameters
��u 
)�� �
;��� �
	DataTable
�� 
dtresult
�� "
=
��# $
	DbManager
��% .
.
��. /
Instance
��/ 7
.
��7 8
ExecuteTable
��8 D
(
��D E
queryCommand
��E Q
)
��Q R
;
��R S
result
�� 
=
�� 
new
�� 
ObjectResultList
�� -
<
��- .#
AccountManagerConnect
��. C
>
��C D
(
��D E
dtresult
��E M
)
��M N
;
��N O'
ListAccountManagerConnect
�� )
listAMC
��* 1
=
��2 3
new
��4 7'
ListAccountManagerConnect
��8 Q
(
��Q R
dtresult
��R Z
)
��Z [
;
��[ \
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
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
��  
tout
��! %
.
��% &
Message
��& -
;
��- .
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
static
�� 
Int32
��  
ConversationMoveTo
�� .
(
��. / 
ConversationEntity
��/ A 
conversationEntity
��B T
)
��T U
{
�� 	
Int32
�� 
success
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� 2
,
��2 3 
conversationEntity
��4 F
.
��F G
AgentId
��G N
)
��N O
;
��O P

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� (
,
��( ) 
conversationEntity
��* <
.
��< =
ChatId
��= C
)
��C D
;
��D E
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E b
,
��b c

parameters
��d n
)
��n o
;
��o p
DataRow
�� 
	rowResult
�� !
=
��" #
	DbManager
��$ -
.
��- .
Instance
��. 6
.
��6 7
ExecuteRegister
��7 F
(
��F G
queryCommand
��G S
)
��S T
;
��T U
if
�� 
(
�� 
	rowResult
�� 
!=
��  
null
��! %
)
��% &
{
��  
conversationEntity
�� &
.
��& '

AgentToken
��' 1
=
��2 3
	rowResult
��4 =
[
��= >
$str
��> S
]
��S T
.
��T U
ToString
��U ]
(
��] ^
)
��^ _
;
��_ ` 
conversationEntity
�� &
.
��& '
AgentId
��' .
=
��/ 0
Convert
��1 8
.
��8 9
ToInt32
��9 @
(
��@ A
	rowResult
��A J
[
��J K
$str
��K ]
]
��] ^
.
��^ _
ToString
��_ g
(
��g h
)
��h i
)
��i j
;
��j k 
conversationEntity
�� &
.
��& '
	UserToken
��' 0
=
��1 2
	rowResult
��3 <
[
��< =
$str
��= O
]
��O P
.
��P Q
ToString
��Q Y
(
��Y Z
)
��Z [
;
��[ \
success
�� 
=
�� 
Convert
�� %
.
��% &
ToInt32
��& -
(
��- .
	rowResult
��. 7
[
��7 8
$str
��8 D
]
��D E
.
��E F
ToString
��F N
(
��N O
)
��O P
)
��P Q
;
��Q R
}
�� 
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
success
�� 
=
�� 
$num
�� 
;
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
success
�� 
=
�� 
$num
�� 
;
�� 
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
success
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
>D:\repositoriosGit\Chat\Chat\xChatDAO\ServiceChatManagerDAO.cs
	namespace 	
xChatDAO
 
{ 
public 

class !
ServiceChatManagerDAO &
:' ("
IServiceChatManagerDAO) ?
{ 
private 
ILoggerHandler 
log "
=# $
LoggerFactory% 2
.2 3
Get3 6
(6 7
EnumLayerIdentifier7 J
.J K
DataAccessLayerK Z
)Z [
;[ \
public 
ObjectResultList 
<  
UserConnect  +
>+ ,0
$GetListUserConnectByAccountManagerId- Q
(Q R
ObjectRequestR _
<_ `
int` c
>c d
objectRequeste r
)r s
{ 	
ObjectResultList 
< 
UserConnect (
>( )
listUserConnect* 9
=: ;
new< ?
ObjectResultList@ P
<P Q
UserConnectQ \
>\ ]
(] ^
)^ _
;_ `
try 
{ 
ListParameters   

parameters   )
=  * +
new  , /
ListParameters  0 >
(  > ?
)  ? @
;  @ A

parameters!! 
.!! 
Add!! 
(!! 
$str!! 2
,!!2 3
objectRequest!!4 A
.!!A B
SenderObject!!B N
)!!N O
;!!O P
CommandParameter##  
queryCommand##! -
=##. /
new##0 3
CommandParameter##4 D
(##D E
$str##E p
,##p q

parameters##r |
)##| }
;##} ~
	DataTable$$ 
dtresult$$ "
=$$# $
	DbManager$$% .
.$$. /
Instance$$/ 7
.$$7 8
ExecuteTable$$8 D
($$D E
queryCommand$$E Q
)$$Q R
;$$R S
listUserConnect&& 
=&&  !
new&&" %
ObjectResultList&&& 6
<&&6 7
UserConnect&&7 B
>&&B C
(&&C D
dtresult&&D L
)&&L M
;&&M N
}(( 
catch)) 
()) 
TimeoutException)) #
tout))$ (
)))( )
{** 
listUserConnect++ 
.++  
Id++  "
=++# $
$num++% &
;++& '
listUserConnect,, 
.,,  
Message,,  '
=,,( )
tout,,* .
.,,. /
Message,,/ 6
;,,6 7
log.. 
... 
Save.. 
(.. 
EnumLogLevel.. %
...% &
Fatal..& +
,..+ ,
tout..- 1
...1 2
Message..2 9
)..9 :
;..: ;
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
listUserConnect22 
.22  
Id22  "
=22# $
$num22% &
;22& '
listUserConnect33 
.33  
Message33  '
=33( )
ex33* ,
.33, -
Message33- 4
;334 5
log55 
.55 
Save55 
(55 
EnumLogLevel55 %
.55% &
Fatal55& +
,55+ ,
ex55- /
)55/ 0
;550 1
}66 
return88 
listUserConnect88 "
;88" #
}99 	
public@@ 
ObjectResultList@@ 
<@@  
UserConnect@@  +
>@@+ ,)
GetListUserByAccountManagerId@@- J
(@@J K
ObjectRequest@@K X
<@@X Y
int@@Y \
>@@\ ]
objectRequest@@^ k
)@@k l
{AA 	
ObjectResultListBB 
<BB 
UserConnectBB (
>BB( )
listUserConnectBB* 9
=BB: ;
newBB< ?
ObjectResultListBB@ P
<BBP Q
UserConnectBBQ \
>BB\ ]
(BB] ^
)BB^ _
;BB_ `
tryDD 
{EE 
ListParametersFF 

parametersFF )
=FF* +
newFF, /
ListParametersFF0 >
(FF> ?
)FF? @
;FF@ A

parametersGG 
.GG 
AddGG 
(GG 
$strGG 2
,GG2 3
objectRequestGG4 A
.GGA B
SenderObjectGGB N
)GGN O
;GGO P
CommandParameterII  
queryCommandII! -
=II. /
newII0 3
CommandParameterII4 D
(IID E
$strIIE i
,IIi j

parametersIIk u
)IIu v
;IIv w
	DataTableJJ 
dtresultJJ "
=JJ# $
	DbManagerJJ% .
.JJ. /
InstanceJJ/ 7
.JJ7 8
ExecuteTableJJ8 D
(JJD E
queryCommandJJE Q
)JJQ R
;JJR S
listUserConnectLL 
=LL  !
newLL" %
ObjectResultListLL& 6
<LL6 7
UserConnectLL7 B
>LLB C
(LLC D
dtresultLLD L
)LLL M
;LLM N
}NN 
catchOO 
(OO 
TimeoutExceptionOO #
toutOO$ (
)OO( )
{PP 
listUserConnectQQ 
.QQ  
IdQQ  "
=QQ# $
$numQQ% &
;QQ& '
listUserConnectRR 
.RR  
MessageRR  '
=RR( )
toutRR* .
.RR. /
MessageRR/ 6
;RR6 7
logTT 
.TT 
SaveTT 
(TT 
EnumLogLevelTT %
.TT% &
FatalTT& +
,TT+ ,
toutTT- 1
.TT1 2
MessageTT2 9
)TT9 :
;TT: ;
}UU 
catchVV 
(VV 
	ExceptionVV 
exVV 
)VV  
{WW 
listUserConnectXX 
.XX  
IdXX  "
=XX# $
$numXX% &
;XX& '
listUserConnectYY 
.YY  
MessageYY  '
=YY( )
exYY* ,
.YY, -
MessageYY- 4
;YY4 5
log[[ 
.[[ 
Save[[ 
([[ 
EnumLogLevel[[ %
.[[% &
Fatal[[& +
,[[+ ,
ex[[- /
)[[/ 0
;[[0 1
}\\ 
return^^ 
listUserConnect^^ "
;^^" #
}__ 	
publicff 
ObjectResultListff 
<ff  &
ConversationResponseEntityff  :
>ff: ;'
GetListConversationByChatIdff< W
(ffW X
ObjectRequestffX e
<ffe f
intfff i
>ffi j
objectRequestffk x
)ffx y
{gg 	
ObjectResultListhh 
<hh &
ConversationResponseEntityhh 7
>hh7 8
listUserConnecthh9 H
=hhI J
newhhK N
ObjectResultListhhO _
<hh_ `&
ConversationResponseEntityhh` z
>hhz {
(hh{ |
)hh| }
;hh} ~
tryjj 
{kk 
ListParametersll 

parametersll )
=ll* +
newll, /
ListParametersll0 >
(ll> ?
)ll? @
;ll@ A

parametersmm 
.mm 
Addmm 
(mm 
$strmm (
,mm( )
objectRequestmm* 7
.mm7 8
SenderObjectmm8 D
)mmD E
;mmE F
CommandParameteroo  
queryCommandoo! -
=oo. /
newoo0 3
CommandParameteroo4 D
(ooD E
$strooE z
,ooz {

parameters	oo| �
)
oo� �
;
oo� �
	DataTablepp 
dtresultpp "
=pp# $
	DbManagerpp% .
.pp. /
Instancepp/ 7
.pp7 8
ExecuteTablepp8 D
(ppD E
queryCommandppE Q
)ppQ R
;ppR S
listUserConnectrr 
=rr  !
newrr" %
ObjectResultListrr& 6
<rr6 7&
ConversationResponseEntityrr7 Q
>rrQ R
(rrR S
dtresultrrS [
)rr[ \
;rr\ ]
}ss 
catchtt 
(tt 
TimeoutExceptiontt #
touttt$ (
)tt( )
{uu 
listUserConnectvv 
.vv  
Idvv  "
=vv# $
$numvv% &
;vv& '
listUserConnectww 
.ww  
Messageww  '
=ww( )
toutww* .
.ww. /
Messageww/ 6
;ww6 7
logyy 
.yy 
Saveyy 
(yy 
EnumLogLevelyy %
.yy% &
Fatalyy& +
,yy+ ,
toutyy- 1
.yy1 2
Messageyy2 9
)yy9 :
;yy: ;
}zz 
catch{{ 
({{ 
	Exception{{ 
ex{{ 
){{  
{|| 
listUserConnect}} 
.}}  
Id}}  "
=}}# $
$num}}% &
;}}& '
listUserConnect~~ 
.~~  
Message~~  '
=~~( )
ex~~* ,
.~~, -
Message~~- 4
;~~4 5
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
listUserConnect
�� "
;
��" #
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
��W X
string
��X ^
senderObject
��_ k
)
��k l
{
�� 	
ObjectResultList
�� 
<
�� (
ConversationResponseEntity
�� 7
>
��7 8
listUserConnect
��9 H
=
��I J
new
��K N
ObjectResultList
��O _
<
��_ `(
ConversationResponseEntity
��` z
>
��z {
(
��{ |
)
��| }
;
��} ~
string
�� 
strDateStart
�� 
=
��  !
senderObject
��" .
.
��. /
Split
��/ 4
(
��4 5
$char
��5 8
)
��8 9
[
��9 :
$num
��: ;
]
��; <
;
��< =
string
�� 

strDateEnd
�� 
=
�� 
senderObject
��  ,
.
��, -
Split
��- 2
(
��2 3
$char
��3 6
)
��6 7
[
��7 8
$num
��8 9
]
��9 :
;
��: ;
try
�� 
{
�� 
if
�� 
(
�� 
!
�� 
DateTime
�� 
.
�� 
TryParse
�� &
(
��& '
strDateStart
��' 3
,
��3 4
result
��5 ;
:
��; <
out
��= @
DateTime
��A I
	dateStart
��J S
)
��S T
)
��T U
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
��( J
)
��J K
;
��K L
}
�� 
if
�� 
(
�� 
!
�� 
DateTime
�� 
.
�� 
TryParse
�� &
(
��& '

strDateEnd
��' 1
,
��1 2
result
��3 9
:
��9 :
out
��; >
DateTime
��? G
dateEnd
��H O
)
��O P
)
��P Q
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
��( J
)
��J K
;
��K L
}
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� )
,
��) *
senderObject
��+ 7
.
��7 8
Split
��8 =
(
��= >
$char
��> A
)
��A B
[
��B C
$num
��C D
]
��D E
)
��E F
;
��F G

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� (
,
��( )
senderObject
��* 6
.
��6 7
Split
��7 <
(
��< =
$char
��= @
)
��@ A
[
��A B
$num
��B C
]
��C D
)
��D E
;
��E F

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� +
,
��+ ,
	dateStart
��- 6
)
��6 7
;
��7 8

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� )
,
��) *
dateEnd
��+ 2
)
��2 3
;
��3 4
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E n
,
��n o

parameters
��p z
)
��z {
;
��{ |
	DataTable
�� 
dtresult
�� "
=
��# $
	DbManager
��% .
.
��. /
Instance
��/ 7
.
��7 8
ExecuteTable
��8 D
(
��D E
queryCommand
��E Q
)
��Q R
;
��R S
listUserConnect
�� 
=
��  !
new
��" %
ObjectResultList
��& 6
<
��6 7(
ConversationResponseEntity
��7 Q
>
��Q R
(
��R S
dtresult
��S [
)
��[ \
;
��\ ]
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
listUserConnect
�� 
.
��  
Id
��  "
=
��# $
$num
��% &
;
��& '
listUserConnect
�� 
.
��  
Message
��  '
=
��( )
tout
��* .
.
��. /
Message
��/ 6
;
��6 7
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
listUserConnect
�� 
.
��  
Id
��  "
=
��# $
$num
��% &
;
��& '
listUserConnect
�� 
.
��  
Message
��  '
=
��( )
ex
��* ,
.
��, -
Message
��- 4
;
��4 5
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
listUserConnect
�� "
;
��" #
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
��5 6
ReportFilter
��6 B
senderObject
��C O
)
��O P
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
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� )
,
��) *
senderObject
��+ 7
.
��7 8
AgentId
��8 ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� (
,
��( )
senderObject
��* 6
.
��6 7
UserId
��7 =
)
��= >
;
��> ?

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� *
,
��* +
senderObject
��, 8
.
��8 9
MarketId
��9 A
)
��A B
;
��B C

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� +
,
��+ ,
senderObject
��- 9
.
��9 :#
ConversationDateStart
��: O
)
��O P
;
��P Q

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� )
,
��) *
senderObject
��+ 7
.
��7 8!
ConversationDateEnd
��8 K
)
��K L
;
��L M
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E e
,
��e f

parameters
��g q
)
��q r
;
��r s
	DataTable
�� 
dtresult
�� "
=
��# $
	DbManager
��% .
.
��. /
Instance
��/ 7
.
��7 8
ExecuteTable
��8 D
(
��D E
queryCommand
��E Q
)
��Q R
;
��R S
result
�� 
=
�� 
new
�� 
ObjectResultList
�� -
<
��- .

ReportChat
��. 8
>
��8 9
(
��9 :
dtresult
��: B
)
��B C
;
��C D
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
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
�� 
bool
�� &
AccountManagerDisconnect
�� ,
(
��, -
ObjectRequest
��- :
<
��: ;
int
��; >
>
��> ?
objectRequest
��@ M
)
��M N
{
�� 	
bool
�� 
result
�� 
=
�� 
false
�� 
;
��  
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� 2
,
��2 3
objectRequest
��4 A
.
��A B
SenderObject
��B N
)
��N O
;
��O P
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E h
,
��h i

parameters
��j t
)
��t u
;
��u v
	DbManager
�� 
.
�� 
Instance
�� "
.
��" #
ExecuteCommand
��# 1
(
��1 2
queryCommand
��2 >
)
��> ?
;
��? @
result
�� 
=
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
��  #
AccountManagerConnect
��  5
>
��5 67
)GetListAccountManagerConnectByModuleAppId
��7 `
(
��` a
ObjectRequest
��a n
<
��n o
string
��o u
>
��u v
objectRequest��w �
)��� �
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
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� (
,
��( )

Encryption
��* 4
.
��4 5
Decrypt
��5 <
(
��< =
objectRequest
��= J
.
��J K
SenderObject
��K W
.
��W X
Split
��X ]
(
��] ^
$char
��^ a
)
��a b
[
��b c
$num
��c d
]
��d e
.
��e f
ToString
��f n
(
��n o
)
��o p
)
��p q
)
��q r
;
��r s

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� -
,
��- .

Encryption
��/ 9
.
��9 :
Decrypt
��: A
(
��A B
objectRequest
��B O
.
��O P
SenderObject
��P \
.
��\ ]
Split
��] b
(
��b c
$char
��c f
)
��f g
[
��g h
$num
��h i
]
��i j
.
��j k
ToString
��k s
(
��s t
)
��t u
)
��u v
)
��v w
;
��w x

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� '
,
��' (

Encryption
��) 3
.
��3 4
Decrypt
��4 ;
(
��; <
objectRequest
��< I
.
��I J
SenderObject
��J V
.
��V W
Split
��W \
(
��\ ]
$char
��] `
)
��` a
[
��a b
$num
��b c
]
��c d
.
��d e
ToString
��e m
(
��m n
)
��n o
)
��o p
)
��p q
;
��q r
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E l
,
��l m

parameters
��n x
)
��x y
;
��y z
	DataTable
�� 
dtresult
�� "
=
��# $
	DbManager
��% .
.
��. /
Instance
��/ 7
.
��7 8
ExecuteTable
��8 D
(
��D E
queryCommand
��E Q
)
��Q R
;
��R S
result
�� 
=
�� 
new
�� 
ObjectResultList
�� -
<
��- .#
AccountManagerConnect
��. C
>
��C D
(
��D E
dtresult
��E M
)
��M N
;
��N O'
ListAccountManagerConnect
�� )
listAMC
��* 1
=
��2 3
new
��4 7'
ListAccountManagerConnect
��8 Q
(
��Q R
dtresult
��R Z
)
��Z [
;
��[ \
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
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
��  
tout
��! %
.
��% &
Message
��& -
;
��- .
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
��  #
AccountManagerConnect
��  5
>
��5 6#
GetAccountManagerById
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
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� (
,
��( )

Encryption
��* 4
.
��4 5
Decrypt
��5 <
(
��< =
objectRequest
��= J
.
��J K
SenderObject
��K W
.
��W X
Split
��X ]
(
��] ^
$char
��^ a
)
��a b
[
��b c
$num
��c d
]
��d e
.
��e f
ToString
��f n
(
��n o
)
��o p
)
��p q
)
��q r
;
��r s

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� -
,
��- .

Encryption
��/ 9
.
��9 :
Decrypt
��: A
(
��A B
objectRequest
��B O
.
��O P
SenderObject
��P \
.
��\ ]
Split
��] b
(
��b c
$char
��c f
)
��f g
[
��g h
$num
��h i
]
��i j
.
��j k
ToString
��k s
(
��s t
)
��t u
)
��u v
)
��v w
;
��w x

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� '
,
��' (

Encryption
��) 3
.
��3 4
Decrypt
��4 ;
(
��; <
objectRequest
��< I
.
��I J
SenderObject
��J V
.
��V W
Split
��W \
(
��\ ]
$char
��] `
)
��` a
[
��a b
$num
��b c
]
��c d
.
��d e
ToString
��e m
(
��m n
)
��n o
)
��o p
)
��p q
;
��q r
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E l
,
��l m

parameters
��n x
)
��x y
;
��y z
	DataTable
�� 
dtresult
�� "
=
��# $
	DbManager
��% .
.
��. /
Instance
��/ 7
.
��7 8
ExecuteTable
��8 D
(
��D E
queryCommand
��E Q
)
��Q R
;
��R S
result
�� 
=
�� 
new
�� 
ObjectResultList
�� -
<
��- .#
AccountManagerConnect
��. C
>
��C D
(
��D E
dtresult
��E M
)
��M N
;
��N O'
ListAccountManagerConnect
�� )
listAMC
��* 1
=
��2 3
new
��4 7'
ListAccountManagerConnect
��8 Q
(
��Q R
dtresult
��R Z
)
��Z [
;
��[ \
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
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
��  
tout
��! %
.
��% &
Message
��& -
;
��- .
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
senderObject��� �
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
��7 8
listUserConnect
��9 H
=
��I J
new
��K N
ObjectResultList
��O _
<
��_ `(
ConversationResponseEntity
��` z
>
��z {
(
��{ |
)
��| }
;
��} ~

SqlCommand
�� 
ObjCmd
�� 
=
�� 
null
��  $
;
��$ %
	DataTable
�� 
dt
�� 
=
�� 
null
�� 
;
��  
try
�� 
{
�� 
using
�� 
(
�� 
ObjCmd
�� 
=
�� 
new
��  #

SqlCommand
��$ .
(
��. /
$str
��/ L
,
��L M
	DbManager
��N W
.
��W X
Instance
��X `
.
��` a
OpenConnection
��a o
(
��o p
)
��p q
)
��q r
)
��r s
{
�� 
ObjCmd
�� 
.
�� 
CommandType
�� &
=
��' (
CommandType
��) 4
.
��4 5
StoredProcedure
��5 D
;
��D E
ObjCmd
�� 
.
�� 
CommandTimeout
�� )
=
��* +
$num
��, -
;
��- .
ObjCmd
�� 
.
�� 

Parameters
�� %
.
��% &
AddWithValue
��& 2
(
��2 3
$str
��3 ?
,
��? @
senderObject
��A M
.
��M N
SenderObject
��N Z
.
��Z [
	DateStart
��[ d
)
��d e
;
��e f
ObjCmd
�� 
.
�� 

Parameters
�� %
.
��% &
AddWithValue
��& 2
(
��2 3
$str
��3 =
,
��= >
senderObject
��? K
.
��K L
SenderObject
��L X
.
��X Y
DateEnd
��Y `
)
��` a
;
��a b
ObjCmd
�� 
.
�� 

Parameters
�� %
.
��% &
AddWithValue
��& 2
(
��2 3
$str
��3 C
,
��C D
senderObject
��E Q
.
��Q R
SenderObject
��R ^
.
��^ _
Distributorid
��_ l
)
��l m
;
��m n
ObjCmd
�� 
.
�� 

Parameters
�� %
.
��% &
AddWithValue
��& 2
(
��2 3
$str
��3 >
,
��> ?
senderObject
��@ L
.
��L M
SenderObject
��M Y
.
��Y Z
UserName
��Z b
)
��b c
;
��c d
ObjCmd
�� 
.
�� 

Parameters
�� %
.
��% &
Add
��& )
(
��) *
new
��* -
SqlParameter
��. :
{
��; <
ParameterName
��= J
=
��K L
$str
��M b
,
��b c
Value
��d i
=
��j k
senderObject
��l x
.
��x y
SenderObject��y �
.��� �
ListMarkets��� �
,��� �
	SqlDbType��� �
=��� �
	SqlDbType��� �
.��� �

Structured��� �
,��� �
TypeName��� �
=��� �
$str��� �
}��� �
)��� �
;��� �
ObjCmd
�� 
.
�� 

Parameters
�� %
.
��% &
Add
��& )
(
��) *
new
��* -
SqlParameter
��. :
{
��; <
ParameterName
��= J
=
��K L
$str
��M a
,
��a b
Value
��c h
=
��i j
senderObject
��k w
.
��w x
SenderObject��x �
.��� �

ListAgents��� �
,��� �
	SqlDbType��� �
=��� �
	SqlDbType��� �
.��� �

Structured��� �
,��� �
TypeName��� �
=��� �
$str��� �
}��� �
)��� �
;��� �
dt
�� 
=
�� 
new
�� 
	DataTable
�� &
(
��& '
)
��' (
;
��( )
dt
�� 
.
�� 
Load
�� 
(
�� 
ObjCmd
�� "
.
��" #
ExecuteReader
��# 0
(
��0 1
)
��1 2
)
��2 3
;
��3 4
listUserConnect
�� #
=
��$ %
new
��& )
ObjectResultList
��* :
<
��: ;(
ConversationResponseEntity
��; U
>
��U V
(
��V W
dt
��W Y
)
��Y Z
;
��Z [
}
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
listUserConnect
�� 
.
��  
Id
��  "
=
��# $
$num
��% &
;
��& '
listUserConnect
�� 
.
��  
Message
��  '
=
��( )
tout
��* .
.
��. /
Message
��/ 6
;
��6 7
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
listUserConnect
�� 
.
��  
Id
��  "
=
��# $
$num
��% &
;
��& '
listUserConnect
�� 
.
��  
Message
��  '
=
��( )
ex
��* ,
.
��, -
Message
��- 4
;
��4 5
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
�� 
listUserConnect
�� "
;
��" #
}
�� 	
public
�� 
ObjectResult
�� 
<
�� 
UserRoleType
�� (
>
��( )
UsersGetRoleType
��* :
(
��: ;
ObjectRequest
��; H
<
��H I
string
��I O
>
��O P
objectRequest
��Q ^
)
��^ _
{
�� 	

SqlCommand
�� 
ObjCmd
�� 
=
�� 
null
��  $
;
��$ %
ObjectResult
�� 
<
�� 
UserRoleType
�� %
>
��% &
result
��' -
=
��. /
new
��0 3
ObjectResult
��4 @
<
��@ A
UserRoleType
��A M
>
��M N
(
��N O
)
��O P
;
��P Q
String
�� 

parmUserId
�� 
=
�� 

Encryption
��  *
.
��* +
Decrypt
��+ 2
(
��2 3
objectRequest
��3 @
.
��@ A
SenderObject
��A M
.
��M N
Split
��N S
(
��S T
$char
��T W
)
��W X
[
��X Y
$num
��Y Z
]
��Z [
.
��[ \
ToString
��\ d
(
��d e
)
��e f
)
��f g
;
��g h
try
�� 
{
�� 
using
�� 
(
�� 
ObjCmd
�� 
=
�� 
new
��  #

SqlCommand
��$ .
(
��. /
$str
��/ J
,
��J K
	DbManager
��L U
.
��U V
Instance
��V ^
.
��^ _
OpenConnection
��_ m
(
��m n
)
��n o
)
��o p
)
��p q
{
�� 
ObjCmd
�� 
.
�� 
CommandType
�� &
=
��' (
CommandType
��) 4
.
��4 5
StoredProcedure
��5 D
;
��D E
ObjCmd
�� 
.
�� 
CommandTimeout
�� )
=
��* +
$num
��, -
;
��- .
SqlParameter
��  
outputParam
��! ,
=
��- .
ObjCmd
��/ 5
.
��5 6

Parameters
��6 @
.
��@ A
Add
��A D
(
��D E
$str
��E Q
,
��Q R
	SqlDbType
��S \
.
��\ ]
Int
��] `
)
��` a
;
��a b
outputParam
�� 
.
��  
	Direction
��  )
=
��* + 
ParameterDirection
��, >
.
��> ?
Output
��? E
;
��E F
ObjCmd
�� 
.
�� 

Parameters
�� %
.
��% &
AddWithValue
��& 2
(
��2 3
$str
��3 <
,
��< =

parmUserId
��> H
)
��H I
;
��I J
ObjCmd
�� 
.
�� 
ExecuteNonQuery
�� *
(
��* +
)
��+ ,
;
��, -
result
�� 
.
�� 
Id
�� 
=
�� 
Convert
��  '
.
��' (
ToInt32
��( /
(
��/ 0
ObjCmd
��0 6
.
��6 7

Parameters
��7 A
[
��A B
$str
��B N
]
��N O
.
��O P
Value
��P U
)
��U V
;
��V W
}
�� 
;
�� 
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
��+ ,
result
�� 
.
�� 
Id
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
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
��  #
AccountManagerConnect
��  5
>
��5 6#
GetListAgentByManager
��7 L
(
��L M
ObjectRequest
��M Z
<
��Z [
string
��[ a
>
��a b
objectRequest
��c p
)
��p q
{
�� 	
ObjectResultList
�� 
<
�� #
AccountManagerConnect
�� 2
>
��2 3
result
��4 :
=
��; <
new
��= @
ObjectResultList
��A Q
<
��Q R#
AccountManagerConnect
��R g
>
��g h
(
��h i
)
��i j
;
��j k
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� +
,
��+ ,

Encryption
��- 7
.
��7 8
Decrypt
��8 ?
(
��? @
objectRequest
��@ M
.
��M N
SenderObject
��N Z
.
��Z [
Split
��[ `
(
��` a
$char
��a d
)
��d e
[
��e f
$num
��f g
]
��g h
.
��h i
ToString
��i q
(
��q r
)
��r s
)
��s t
)
��t u
;
��u v
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str
��E s
,
��s t

parameters
��u 
)�� �
;��� �
	DataTable
�� 
dtresult
�� "
=
��# $
	DbManager
��% .
.
��. /
Instance
��/ 7
.
��7 8
ExecuteTable
��8 D
(
��D E
queryCommand
��E Q
)
��Q R
;
��R S
result
�� 
=
�� 
new
�� 
ObjectResultList
�� -
<
��- .#
AccountManagerConnect
��. C
>
��C D
(
��D E
dtresult
��E M
)
��M N
;
��N O
result
�� 
.
�� 
Id
�� 
=
�� 
Convert
�� #
.
��# $
ToInt32
��$ +
(
��+ ,

Encryption
��, 6
.
��6 7
Decrypt
��7 >
(
��> ?
objectRequest
��? L
.
��L M
SenderObject
��M Y
.
��Y Z
Split
��Z _
(
��_ `
$char
��` c
)
��c d
[
��d e
$num
��e f
]
��f g
.
��g h
ToString
��h p
(
��p q
)
��q r
)
��r s
)
��s t
;
��t u'
ListAccountManagerConnect
�� )
listAMC
��* 1
=
��2 3
new
��4 7'
ListAccountManagerConnect
��8 Q
(
��Q R
dtresult
��R Z
)
��Z [
;
��[ \
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
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
��  
tout
��! %
.
��% &
Message
��& -
;
��- .
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
��: ;1
#GetListConversationByChatAndAgentId
��< _
(
��_ `
ObjectRequest
��` m
<
��m n
string
��n t
>
��t u
objectRequest��v �
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
��7 8
listUserConnect
��9 H
=
��I J
new
��K N
ObjectResultList
��O _
<
��_ `(
ConversationResponseEntity
��` z
>
��z {
(
��{ |
)
��| }
;
��} ~
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� (
,
��( )
objectRequest
��* 7
.
��7 8
SenderObject
��8 D
.
��D E
Split
��E J
(
��J K
$char
��K N
)
��N O
[
��O P
$num
��P Q
]
��Q R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
)
��] ^
;
��^ _

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� )
,
��) *
objectRequest
��+ 8
.
��8 9
SenderObject
��9 E
.
��E F
Split
��F K
(
��K L
$char
��L O
)
��O P
[
��P Q
$num
��Q R
]
��R S
.
��S T
ToString
��T \
(
��\ ]
)
��] ^
)
��^ _
;
��_ `
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str��E �
,��� �

parameters��� �
)��� �
;��� �
	DataTable
�� 
dtresult
�� "
=
��# $
	DbManager
��% .
.
��. /
Instance
��/ 7
.
��7 8
ExecuteTable
��8 D
(
��D E
queryCommand
��E Q
)
��Q R
;
��R S
listUserConnect
�� 
=
��  !
new
��" %
ObjectResultList
��& 6
<
��6 7(
ConversationResponseEntity
��7 Q
>
��Q R
(
��R S
dtresult
��S [
)
��[ \
;
��\ ]
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
listUserConnect
�� 
.
��  
Id
��  "
=
��# $
$num
��% &
;
��& '
listUserConnect
�� 
.
��  
Message
��  '
=
��( )
tout
��* .
.
��. /
Message
��/ 6
;
��6 7
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
listUserConnect
�� 
.
��  
Id
��  "
=
��# $
$num
��% &
;
��& '
listUserConnect
�� 
.
��  
Message
��  '
=
��( )
ex
��* ,
.
��, -
Message
��- 4
;
��4 5
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
�� 
listUserConnect
�� "
;
��" #
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
��7 8
listUserConnect
��9 H
=
��I J
new
��K N
ObjectResultList
��O _
<
��_ `(
ConversationResponseEntity
��` z
>
��z {
(
��{ |
)
��| }
;
��} ~
try
�� 
{
�� 
ListParameters
�� 

parameters
�� )
=
��* +
new
��, /
ListParameters
��0 >
(
��> ?
)
��? @
;
��@ A

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� (
,
��( )
objectRequest
��* 7
.
��7 8
SenderObject
��8 D
.
��D E
Split
��E J
(
��J K
$char
��K N
)
��N O
[
��O P
$num
��P Q
]
��Q R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
)
��] ^
;
��^ _

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� +
,
��+ ,
objectRequest
��- :
.
��: ;
SenderObject
��; G
.
��G H
Split
��H M
(
��M N
$char
��N Q
)
��Q R
[
��R S
$num
��S T
]
��T U
.
��U V
ToString
��V ^
(
��^ _
)
��_ `
)
��` a
;
��a b
CommandParameter
��  
queryCommand
��! -
=
��. /
new
��0 3
CommandParameter
��4 D
(
��D E
$str��E �
,��� �

parameters��� �
)��� �
;��� �
	DataTable
�� 
dtresult
�� "
=
��# $
	DbManager
��% .
.
��. /
Instance
��/ 7
.
��7 8
ExecuteTable
��8 D
(
��D E
queryCommand
��E Q
)
��Q R
;
��R S
listUserConnect
�� 
=
��  !
new
��" %
ObjectResultList
��& 6
<
��6 7(
ConversationResponseEntity
��7 Q
>
��Q R
(
��R S
dtresult
��S [
)
��[ \
;
��\ ]
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
tout
��$ (
)
��( )
{
�� 
listUserConnect
�� 
.
��  
Id
��  "
=
��# $
$num
��% &
;
��& '
listUserConnect
�� 
.
��  
Message
��  '
=
��( )
tout
��* .
.
��. /
Message
��/ 6
;
��6 7
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
��+ ,
tout
��- 1
.
��1 2
Message
��2 9
)
��9 :
;
��: ;
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
�� 
listUserConnect
�� 
.
��  
Id
��  "
=
��# $
$num
��% &
;
��& '
listUserConnect
�� 
.
��  
Message
��  '
=
��( )
ex
��* ,
.
��, -
Message
��- 4
;
��4 5
log
�� 
.
�� 
Save
�� 
(
�� 
EnumLogLevel
�� %
.
��% &
Fatal
��& +
,
��+ ,
ex
��- /
)
��/ 0
;
��0 1
}
�� 
return
�� 
listUserConnect
�� "
;
��" #
}
�� 	
}
�� 
}�� �
6D:\repositoriosGit\Chat\Chat\xChatDAO\ServiceFaqDAO.cs
	namespace 	
xChatDAO
 
{ 
public 

class 
ServiceFaqDAO 
:  
IServiceFaqDAO! /
{ 
public 
void 
Delete 
( 
	FaqEntity $
	faqEntity% .
). /
{		 	
throw

 
new

 #
NotImplementedException

 -
(

- .
)

. /
;

/ 0
} 	
public 
	FaqEntity 
GetById  
(  !
	FaqEntity! *
	faqEntity+ 4
)4 5
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
ObjectResultList 
<  
	FaqEntity  )
>) *
GetListByLanguajeId+ >
(> ?
int? B

languageIdC M
)M N
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
void 
Insert 
( 
	FaqEntity $
	faqEntity% .
). /
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
void 
Update 
( 
	FaqEntity $
	faqEntity% .
). /
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
}   
}!! �3
?D:\repositoriosGit\Chat\Chat\xChatDAO\ServiceMasterEntityDAO.cs
	namespace 	
xChatDAO
 
{ 
public		 

class		 "
ServiceMasterEntityDAO		 '
:		( )#
IServiceMasterEntityDAO		* A
{

 
public "
ServiceMasterEntityDAO %
(% &
)& '
{( )
}* +
public 
ObjectResultList 
<  
EntityMaster  ,
>, -
GetList. 5
(5 6
EntityMasterEnum6 F
entityMasterEnumG W
)W X
{ 	
ObjectResultList 
< 
EntityMaster )
>) *

listReturn+ 5
=6 7
new8 ;
ObjectResultList< L
<L M
EntityMasterM Y
>Y Z
(Z [
)[ \
;\ ]
ListParameters 

parameters %
=& '
new( +
ListParameters, :
(: ;
); <
;< =
string 
	procedure 
= 
$" !
chat.! &
{& '
entityMasterEnum' 7
.7 8
ToString8 @
(@ A
)A B
}B C
_GetListMaster_spC T
"T U
;U V
CommandParameter 
queryCommand )
=* +
new, /
CommandParameter0 @
(@ A
	procedureA J
,J K

parametersL V
)V W
;W X
	DataTable 
dtresult 
=  
	DbManager! *
.* +
Instance+ 3
.3 4
ExecuteTable4 @
(@ A
queryCommandA M
)M N
;N O

listReturn 
= 
new 
ObjectResultList -
<- .
EntityMaster. :
>: ;
(; <
dtresult< D
)D E
;E F
return 

listReturn 
; 
} 	
public 
ObjectResultList 
<  
EntityMaster  ,
>, -
SearchMasterGetList. A
(A B
stringB H
masterEntityI U
,U V
stringW ]
masterAction^ j
,j k
stringl r 
masterParametersSet	s �
,
� �
string
� �!
masterParametersAdd
� �
)
� �
{ 	
ObjectResultList   
<   
EntityMaster   )
>  ) *

listReturn  + 5
=  6 7
new  8 ;
ObjectResultList  < L
<  L M
EntityMaster  M Y
>  Y Z
(  Z [
)  [ \
;  \ ]
ListParameters"" 

parameters"" %
=""& '
new""( +
ListParameters"", :
("": ;
)""; <
;""< =
if'' 
('' 
!'' 
string'' 
.'' 
IsNullOrEmpty'' %
(''% &
masterParametersSet''& 9
)''9 :
)'': ;
{(( 
List** 
<** 
string** 
>** 
listaClaveValor** ,
=**- .
masterParametersSet**/ B
.**B C
Split**C H
(**H I
$char**I L
)**L M
.**M N
ToList**N T
(**T U
)**U V
;**V W
foreach-- 
(-- 
string-- 
elemento--  (
in--) +
listaClaveValor--, ;
)--; <
{.. 

parameters// 
.// 
Add// "
(//" #
$str//# (
+//) *
elemento//+ 3
.//3 4
Split//4 9
(//9 :
$char//: =
)//= >
[//> ?
$num//? @
]//@ A
.//A B
ToString//B J
(//J K
)//K L
,//L M
elemento//N V
.//V W
Split//W \
(//\ ]
$char//] `
)//` a
[//a b
$num//b c
]//c d
.//d e
ToString//e m
(//m n
)//n o
)//o p
;//p q
}00 
}22 
if77 
(77 
!77 
string77 
.77 
IsNullOrEmpty77 %
(77% &
masterParametersAdd77& 9
)779 :
)77: ;
{88 
List:: 
<:: 
string:: 
>:: 
listaClaveValor:: ,
=::- .
masterParametersAdd::/ B
.::B C
Split::C H
(::H I
$char::I L
)::L M
.::M N
ToList::N T
(::T U
)::U V
;::V W
foreach== 
(== 
string== 
elemento==  (
in==) +
listaClaveValor==, ;
)==; <
{>> 

parameters?? 
.?? 
Add?? "
(??" #
$str??# (
+??) *
elemento??+ 3
.??3 4
Split??4 9
(??9 :
$char??: =
)??= >
[??> ?
$num??? @
]??@ A
.??A B
ToString??B J
(??J K
)??K L
,??L M
elemento??N V
.??V W
Split??W \
(??\ ]
$char??] `
)??` a
[??a b
$num??b c
]??c d
.??d e
ToString??e m
(??m n
)??n o
)??o p
;??p q
}@@ 
}BB 
stringDD 
	procedureDD 
=DD 
$"DD !
chat.SearchMasterDD! 2
{DD2 3
masterEntityDD3 ?
}DD? @
_DD@ A
{DDA B
masterActionDDB N
}DDN O
_spDDO R
"DDR S
;DDS T
CommandParameterFF 
queryCommandFF )
=FF* +
newFF, /
CommandParameterFF0 @
(FF@ A
	procedureFFA J
,FFJ K

parametersFFL V
)FFV W
;FFW X
	DataTableHH 
dtresultHH 
=HH  
	DbManagerHH! *
.HH* +
InstanceHH+ 3
.HH3 4
ExecuteTableHH4 @
(HH@ A
queryCommandHHA M
)HHM N
;HHN O

listReturnJJ 
=JJ 
newJJ 
ObjectResultListJJ -
<JJ- .
EntityMasterJJ. :
>JJ: ;
(JJ; <
dtresultJJ< D
)JJD E
;JJE F
returnLL 

listReturnLL 
;LL 
}MM 	
}NN 
}OO �
?D:\repositoriosGit\Chat\Chat\xChatDAO\ServiceNotificationDAO.cs
	namespace

 	
xChatDAO


 
{ 
public 

class "
ServiceNotificationDAO '
:( )#
IServiceNotificationDAO* A
{ 
public 
( 
string 
emailTo 
, 
string  &
emailSubject' 3
,3 4
string5 ;
	emailBody< E
)E F

GetEmailToG Q
(Q R
ConversationEntityR d
conversationEntitye w
)w x
{ 	
string 
emailTo 
= 
string #
.# $
Empty$ )
;) *
string 
emailSubject 
=  !
string" (
.( )
Empty) .
;. /
string 
	emailBody 
= 
string %
.% &
Empty& +
;+ ,
ListParameters 

parameters %
=& '
new( +
ListParameters, :
(: ;
); <
;< =

parameters 
. 
Add 
( 
$str &
,& '
conversationEntity( :
.: ;
UserName; C
)C D
;D E

parameters   
.   
Add   
(   
$str   %
,  % &
conversationEntity  ' 9
.  9 :
Message  : A
)  A B
;  B C
CommandParameter"" 
queryCommand"" )
=""* +
new"", /
CommandParameter""0 @
(""@ A
$str""A [
,""[ \

parameters""] g
)""g h
;""h i
DataRow$$ 
drresult$$ 
=$$ 
	DbManager$$ (
.$$( )
Instance$$) 1
.$$1 2
ExecuteRegister$$2 A
($$A B
queryCommand$$B N
)$$N O
;$$O P
emailTo&& 
=&& 
conversationEntity&& +
.&&+ ,
Emailto&&, 3
;&&3 4
emailSubject'' 
='' 
conversationEntity'' 0
.''0 1
Subject''1 8
;''8 9
	emailBody(( 
=(( 
conversationEntity(( -
.((- .
TemplateHtml((. :
;((: ;
return** 
(** 
emailTo** 
,** 
emailSubject** )
,**) *
	emailBody**+ 4
)**4 5
;**5 6
}++ 	
},, 
public.. 

	interface.. #
IServiceNotificationDAO.. ,
{// 
(00 	
string00	 
emailTo00 
,00 
string00 
emailSubject00  ,
,00, -
string00. 4
	emailBody005 >
)00> ?

GetEmailTo00@ J
(00J K
ConversationEntity00K ]
conversationEntity00^ p
)00p q
;00q r
}11 
}22 ӯ
=D:\repositoriosGit\Chat\Chat\xChatDAO\ServiceSkillAgentDAO.cs
	namespace 	
xChatDAO
 
{ 
public 

class  
ServiceSkillAgentDAO %
:& '!
IServiceSkillAgentDAO( =
{ 
public 
ObjectResultList 
<  

SkillAgent  *
>* +
GetListSkillByAgent, ?
(? @
ObjectRequest@ M
<M N
SkillAgentFilterN ^
>^ _
objectRequest` m
)m n
{ 	
ObjectResultList 
< 

SkillAgent '
>' (
listUserConnect) 8
=9 :
new; >
ObjectResultList? O
<O P

SkillAgentP Z
>Z [
([ \
)\ ]
;] ^
ListParameters 

parameters %
=& '
new( +
ListParameters, :
(: ;
); <
;< =

parameters 
. 
Add 
( 
$str +
,+ ,
objectRequest- :
.: ;
SenderObject; G
.G H
PerspectiveIdH U
)U V
;V W

parameters 
. 
Add 
( 
$str %
,% &
objectRequest' 4
.4 5
SenderObject5 A
.A B
AgentIdB I
)I J
;J K

parameters 
. 
Add 
( 
$str &
,& '
objectRequest( 5
.5 6
SenderObject6 B
.B C
ModuleIdC K
)K L
;L M

parameters 
. 
Add 
( 
$str (
,( )
objectRequest* 7
.7 8
SenderObject8 D
.D E

LanguageIdE O
)O P
;P Q

parameters 
. 
Add 
( 
$str .
,. /
objectRequest0 =
.= >
SenderObject> J
.J K
SkillLevelModuleK [
)[ \
;\ ]

parameters 
. 
Add 
( 
$str 0
,0 1
objectRequest2 ?
.? @
SenderObject@ L
.L M
SkillLevelLanguageM _
)_ `
;` a
CommandParameter 
queryCommand )
=* +
new, /
CommandParameter0 @
(@ A
$strA k
,k l

parametersm w
)w x
;x y
	DataTable   
dtresult   
=    
	DbManager  ! *
.  * +
Instance  + 3
.  3 4
ExecuteTable  4 @
(  @ A
queryCommand  A M
)  M N
;  N O
listUserConnect"" 
="" 
new"" !
ObjectResultList""" 2
<""2 3

SkillAgent""3 =
>""= >
(""> ?
dtresult""? G
)""G H
;""H I
return$$ 
listUserConnect$$ "
;$$" #
}%% 	
public++ 
void++ 
CreateSkillModule++ %
(++% &
ObjectRequest++& 3
<++3 4
SkillAgentModule++4 D
>++D E
objectRequest++F S
)++S T
{,, 	
ListParameters-- 

parameters-- %
=--& '
new--( +
ListParameters--, :
(--: ;
)--; <
;--< =

parameters.. 
... 
Add.. 
(.. 
$str.. %
,..% &
objectRequest..' 4
...4 5
SenderObject..5 A
...A B
AgentId..B I
)..I J
;..J K

parameters// 
.// 
Add// 
(// 
$str// &
,//& '
objectRequest//( 5
.//5 6
SenderObject//6 B
.//B C
ModuleId//C K
)//K L
;//L M

parameters00 
.00 
Add00 
(00 
$str00 (
,00( )
objectRequest00* 7
.007 8
SenderObject008 D
.00D E

SkillLevel00E O
)00O P
;00P Q

parameters11 
.11 
Add11 
(11 
$str11 +
,11+ ,
objectRequest11- :
.11: ;
SenderObject11; G
.11G H
PriorityLevel11H U
)11U V
;11V W

parameters22 
.22 
Add22 
(22 
$str22 $
,22$ %
objectRequest22& 3
.223 4
SenderObject224 @
.22@ A
StatusId22A I
)22I J
;22J K

parameters33 
.33 
Add33 
(33 
$str33 '
,33' (
objectRequest33) 6
.336 7
SenderObject337 C
.33C D
CreateBy33D L
)33L M
;33M N
CommandParameter55 
queryCommand55 )
=55* +
new55, /
CommandParameter550 @
(55@ A
$str55A b
,55b c

parameters55d n
)55n o
;55o p
	DbManager77 
.77 
Instance77 
.77 
ExecuteCommand77 -
(77- .
queryCommand77. :
)77: ;
;77; <
}88 	
public>> 
void>> 
CreateSkillLanguage>> '
(>>' (
ObjectRequest>>( 5
<>>5 6
SkillAgentLanguage>>6 H
>>>H I
objectRequest>>J W
)>>W X
{?? 	
ListParameters@@ 

parameters@@ %
=@@& '
new@@( +
ListParameters@@, :
(@@: ;
)@@; <
;@@< =

parametersAA 
.AA 
AddAA 
(AA 
$strAA %
,AA% &
objectRequestAA' 4
.AA4 5
SenderObjectAA5 A
.AAA B
AgentIdAAB I
)AAI J
;AAJ K

parametersBB 
.BB 
AddBB 
(BB 
$strBB (
,BB( )
objectRequestBB* 7
.BB7 8
SenderObjectBB8 D
.BBD E

LanguageIdBBE O
)BBO P
;BBP Q

parametersCC 
.CC 
AddCC 
(CC 
$strCC (
,CC( )
objectRequestCC* 7
.CC7 8
SenderObjectCC8 D
.CCD E

SkillLevelCCE O
)CCO P
;CCP Q

parametersDD 
.DD 
AddDD 
(DD 
$strDD +
,DD+ ,
objectRequestDD- :
.DD: ;
SenderObjectDD; G
.DDG H
PriorityLevelDDH U
)DDU V
;DDV W

parametersEE 
.EE 
AddEE 
(EE 
$strEE $
,EE$ %
objectRequestEE& 3
.EE3 4
SenderObjectEE4 @
.EE@ A
StatusIdEEA I
)EEI J
;EEJ K

parametersFF 
.FF 
AddFF 
(FF 
$strFF '
,FF' (
objectRequestFF) 6
.FF6 7
SenderObjectFF7 C
.FFC D
CreateByFFD L
)FFL M
;FFM N
CommandParameterHH 
queryCommandHH )
=HH* +
newHH, /
CommandParameterHH0 @
(HH@ A
$strHHA d
,HHd e

parametersHHf p
)HHp q
;HHq r
	DbManagerJJ 
.JJ 
InstanceJJ 
.JJ 
ExecuteCommandJJ -
(JJ- .
queryCommandJJ. :
)JJ: ;
;JJ; <
}KK 	
publicQQ 
voidQQ 
UpdateSkillModuleQQ %
(QQ% &
ObjectRequestQQ& 3
<QQ3 4
SkillAgentModuleQQ4 D
>QQD E
objectRequestQQF S
)QQS T
{RR 	
ListParametersSS 

parametersSS %
=SS& '
newSS( +
ListParametersSS, :
(SS: ;
)SS; <
;SS< =

parametersTT 
.TT 
AddTT 
(TT 
$strTT %
,TT% &
objectRequestTT' 4
.TT4 5
SenderObjectTT5 A
.TTA B
AgentIdTTB I
)TTI J
;TTJ K

parametersUU 
.UU 
AddUU 
(UU 
$strUU &
,UU& '
objectRequestUU( 5
.UU5 6
SenderObjectUU6 B
.UUB C
ModuleIdUUC K
)UUK L
;UUL M

parametersVV 
.VV 
AddVV 
(VV 
$strVV (
,VV( )
objectRequestVV* 7
.VV7 8
SenderObjectVV8 D
.VVD E

SkillLevelVVE O
)VVO P
;VVP Q

parametersWW 
.WW 
AddWW 
(WW 
$strWW +
,WW+ ,
objectRequestWW- :
.WW: ;
SenderObjectWW; G
.WWG H
PriorityLevelWWH U
)WWU V
;WWV W

parametersXX 
.XX 
AddXX 
(XX 
$strXX '
,XX' (
objectRequestXX) 6
.XX6 7
SenderObjectXX7 C
.XXC D
CreateByXXD L
)XXL M
;XXM N
CommandParameterZZ 
queryCommandZZ )
=ZZ* +
newZZ, /
CommandParameterZZ0 @
(ZZ@ A
$strZZA b
,ZZb c

parametersZZd n
)ZZn o
;ZZo p
	DbManager\\ 
.\\ 
Instance\\ 
.\\ 
ExecuteCommand\\ -
(\\- .
queryCommand\\. :
)\\: ;
;\\; <
}]] 	
publiccc 
voidcc 
UpdateSkillLanguagecc '
(cc' (
ObjectRequestcc( 5
<cc5 6
SkillAgentLanguagecc6 H
>ccH I
objectRequestccJ W
)ccW X
{dd 	
ListParametersee 

parametersee %
=ee& '
newee( +
ListParametersee, :
(ee: ;
)ee; <
;ee< =

parametersff 
.ff 
Addff 
(ff 
$strff %
,ff% &
objectRequestff' 4
.ff4 5
SenderObjectff5 A
.ffA B
AgentIdffB I
)ffI J
;ffJ K

parametersgg 
.gg 
Addgg 
(gg 
$strgg (
,gg( )
objectRequestgg* 7
.gg7 8
SenderObjectgg8 D
.ggD E

LanguageIdggE O
)ggO P
;ggP Q

parametershh 
.hh 
Addhh 
(hh 
$strhh (
,hh( )
objectRequesthh* 7
.hh7 8
SenderObjecthh8 D
.hhD E

SkillLevelhhE O
)hhO P
;hhP Q

parametersii 
.ii 
Addii 
(ii 
$strii +
,ii+ ,
objectRequestii- :
.ii: ;
SenderObjectii; G
.iiG H
PriorityLeveliiH U
)iiU V
;iiV W

parametersjj 
.jj 
Addjj 
(jj 
$strjj '
,jj' (
objectRequestjj) 6
.jj6 7
SenderObjectjj7 C
.jjC D
CreateByjjD L
)jjL M
;jjM N
CommandParameterll 
queryCommandll )
=ll* +
newll, /
CommandParameterll0 @
(ll@ A
$strllA d
,lld e

parametersllf p
)llp q
;llq r
	DbManagernn 
.nn 
Instancenn 
.nn 
ExecuteCommandnn -
(nn- .
queryCommandnn. :
)nn: ;
;nn; <
}oo 	
publicuu 
voiduu "
ChangeStateSkillModuleuu *
(uu* +
ObjectRequestuu+ 8
<uu8 9
SkillAgentModuleuu9 I
>uuI J
objectRequestuuK X
)uuX Y
{vv 	
ListParametersww 

parametersww %
=ww& '
newww( +
ListParametersww, :
(ww: ;
)ww; <
;ww< =

parametersxx 
.xx 
Addxx 
(xx 
$strxx %
,xx% &
objectRequestxx' 4
.xx4 5
SenderObjectxx5 A
.xxA B
AgentIdxxB I
)xxI J
;xxJ K

parametersyy 
.yy 
Addyy 
(yy 
$stryy &
,yy& '
objectRequestyy( 5
.yy5 6
SenderObjectyy6 B
.yyB C
ModuleIdyyC K
)yyK L
;yyL M

parameterszz 
.zz 
Addzz 
(zz 
$strzz $
,zz$ %
objectRequestzz& 3
.zz3 4
SenderObjectzz4 @
.zz@ A
StatusIdzzA I
)zzI J
;zzJ K

parameters{{ 
.{{ 
Add{{ 
({{ 
$str{{ '
,{{' (
objectRequest{{) 6
.{{6 7
SenderObject{{7 C
.{{C D
CreateBy{{D L
){{L M
;{{M N
CommandParameter}} 
queryCommand}} )
=}}* +
new}}, /
CommandParameter}}0 @
(}}@ A
$str}}A h
,}}h i

parameters}}j t
)}}t u
;}}u v
	DbManager 
. 
Instance 
. 
ExecuteCommand -
(- .
queryCommand. :
): ;
;; <
}
�� 	
public
�� 
void
�� &
ChangeStateSkillLanguage
�� ,
(
��, -
ObjectRequest
��- :
<
��: ; 
SkillAgentLanguage
��; M
>
��M N
objectRequest
��O \
)
��\ ]
{
�� 	
ListParameters
�� 

parameters
�� %
=
��& '
new
��( +
ListParameters
��, :
(
��: ;
)
��; <
;
��< =

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� %
,
��% &
objectRequest
��' 4
.
��4 5
SenderObject
��5 A
.
��A B
AgentId
��B I
)
��I J
;
��J K

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� (
,
��( )
objectRequest
��* 7
.
��7 8
SenderObject
��8 D
.
��D E

LanguageId
��E O
)
��O P
;
��P Q

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� $
,
��$ %
objectRequest
��& 3
.
��3 4
SenderObject
��4 @
.
��@ A
StatusId
��A I
)
��I J
;
��J K

parameters
�� 
.
�� 
Add
�� 
(
�� 
$str
�� '
,
��' (
objectRequest
��) 6
.
��6 7
SenderObject
��7 C
.
��C D
CreateBy
��D L
)
��L M
;
��M N
CommandParameter
�� 
queryCommand
�� )
=
��* +
new
��, /
CommandParameter
��0 @
(
��@ A
$str
��A j
,
��j k

parameters
��l v
)
��v w
;
��w x
	DbManager
�� 
.
�� 
Instance
�� 
.
�� 
ExecuteCommand
�� -
(
��- .
queryCommand
��. :
)
��: ;
;
��; <
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
�� 	

SqlCommand
�� 
ObjCmd
�� 
=
�� 
null
��  $
;
��$ %
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
�� 
using
�� 
(
�� 
ObjCmd
�� 
=
�� 
new
��  #

SqlCommand
��$ .
(
��. /
$str
��/ V
,
��V W
	DbManager
��X a
.
��a b
Instance
��b j
.
��j k
OpenConnection
��k y
(
��y z
)
��z {
)
��{ |
)
��| }
{
�� 
ObjCmd
�� 
.
�� 
CommandType
�� &
=
��' (
CommandType
��) 4
.
��4 5
StoredProcedure
��5 D
;
��D E
ObjCmd
�� 
.
�� 
CommandTimeout
�� )
=
��* +
$num
��, -
;
��- .
SqlParameter
��  
outputParam
��! ,
=
��- .
ObjCmd
��/ 5
.
��5 6

Parameters
��6 @
.
��@ A
Add
��A D
(
��D E
$str
��E S
,
��S T
	SqlDbType
��U ^
.
��^ _
Int
��_ b
)
��b c
;
��c d
outputParam
�� 
.
��  
	Direction
��  )
=
��* + 
ParameterDirection
��, >
.
��> ?
Output
��? E
;
��E F
ObjCmd
�� 
.
�� 

Parameters
�� %
.
��% &
AddWithValue
��& 2
(
��2 3
$str
��3 <
,
��< =
objectRequest
��> K
.
��K L
SenderObject
��L X
.
��X Y
AgentId
��Y `
)
��` a
;
��a b
ObjCmd
�� 
.
�� 

Parameters
�� %
.
��% &
AddWithValue
��& 2
(
��2 3
$str
��3 >
,
��> ?
objectRequest
��@ M
.
��M N
SenderObject
��N Z
.
��Z [
ModuleId
��[ c
)
��c d
;
��d e
ObjCmd
�� 
.
�� 
ExecuteNonQuery
�� *
(
��* +
)
��+ ,
;
��, -
result
�� 
.
�� 
Id
�� 
=
�� 
Convert
��  '
.
��' (
ToInt32
��( /
(
��/ 0
ObjCmd
��0 6
.
��6 7

Parameters
��7 A
[
��A B
$str
��B P
]
��P Q
.
��Q R
Value
��R W
)
��W X
;
��X Y
}
�� 
;
�� 
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
��+ ,
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
�� 
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
�� 	

SqlCommand
�� 
ObjCmd
�� 
=
�� 
null
��  $
;
��$ %
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
�� 
using
�� 
(
�� 
ObjCmd
�� 
=
�� 
new
��  #

SqlCommand
��$ .
(
��. /
$str
��/ X
,
��X Y
	DbManager
��Z c
.
��c d
Instance
��d l
.
��l m
OpenConnection
��m {
(
��{ |
)
��| }
)
��} ~
)
��~ 
{
�� 
ObjCmd
�� 
.
�� 
CommandType
�� &
=
��' (
CommandType
��) 4
.
��4 5
StoredProcedure
��5 D
;
��D E
ObjCmd
�� 
.
�� 
CommandTimeout
�� )
=
��* +
$num
��, -
;
��- .
SqlParameter
��  
outputParam
��! ,
=
��- .
ObjCmd
��/ 5
.
��5 6

Parameters
��6 @
.
��@ A
Add
��A D
(
��D E
$str
��E S
,
��S T
	SqlDbType
��U ^
.
��^ _
Int
��_ b
)
��b c
;
��c d
outputParam
�� 
.
��  
	Direction
��  )
=
��* + 
ParameterDirection
��, >
.
��> ?
Output
��? E
;
��E F
ObjCmd
�� 
.
�� 

Parameters
�� %
.
��% &
AddWithValue
��& 2
(
��2 3
$str
��3 <
,
��< =
objectRequest
��> K
.
��K L
SenderObject
��L X
.
��X Y
AgentId
��Y `
)
��` a
;
��a b
ObjCmd
�� 
.
�� 

Parameters
�� %
.
��% &
AddWithValue
��& 2
(
��2 3
$str
��3 @
,
��@ A
objectRequest
��B O
.
��O P
SenderObject
��P \
.
��\ ]

LanguageId
��] g
)
��g h
;
��h i
ObjCmd
�� 
.
�� 
ExecuteNonQuery
�� *
(
��* +
)
��+ ,
;
��, -
result
�� 
.
�� 
Id
�� 
=
�� 
Convert
��  '
.
��' (
ToInt32
��( /
(
��/ 0
ObjCmd
��0 6
.
��6 7

Parameters
��7 A
[
��A B
$str
��B P
]
��P Q
.
��Q R
Value
��R W
)
��W X
;
��X Y
}
�� 
;
�� 
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
��+ ,
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
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
}
�� 
}�� �\
CD:\repositoriosGit\Chat\Chat\xChatDAO\ServiceUserAccountGroupDAO.cs
	namespace 	
xChatDAO
 
{ 
public 

class &
ServiceUserAccountGroupDAO +
:, -'
IServiceUserAccountGroupDAO. I
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
.Q R
DataAccessLayerR a
)a b
;b c
public 
ObjectResultList 
<  
UserAccountGroups  1
>1 2#
GetListUserAccountGroup3 J
(J K
ObjectRequestK X
<X Y
UserAccountGroupsY j
>j k
objectRequestl y
)y z
{ 	
ObjectResultList 
< 
UserAccountGroups .
>. /
list0 4
=5 6
new7 :
ObjectResultList; K
<K L
UserAccountGroupsL ]
>] ^
(^ _
)_ `
;` a
try 
{ 
ListParameters 

parameters )
=* +
new, /
ListParameters0 >
(> ?
)? @
;@ A

parameters 
. 
Add 
( 
$str (
,( )
objectRequest* 7
.7 8
SenderObject8 D
.D E
AccountManagerIdE U
)U V
;V W
CommandParameter  
queryCommand! -
=. /
new0 3
CommandParameter4 D
(D E
$strE l
,l m

parametersn x
)x y
;y z
	DataTable 
dtresult "
=# $
	DbManager% .
.. /
Instance/ 7
.7 8
ExecuteTable8 D
(D E
queryCommandE Q
)Q R
;R S
list   
=   
new   
ObjectResultList   +
<  + ,
UserAccountGroups  , =
>  = >
(  > ?
dtresult  ? G
)  G H
;  H I
}!! 
catch"" 
("" 
	Exception"" 
ex"" 
)""  
{## 
log$$ 
.$$ 
Save$$ 
($$ 
EnumLogLevel$$ %
.$$% &
Fatal$$& +
,$$+ ,
ex$$- /
)$$/ 0
;$$0 1
}%% 
return'' 
list'' 
;'' 
}(( 	
public** 
void** "
CreateUserAccountGroup** *
(*** +
ObjectRequest**+ 8
<**8 9
UserAccountGroups**9 J
>**J K
objectRequest**L Y
)**Y Z
{++ 	
try,, 
{-- 
ListParameters.. 

parameters.. )
=..* +
new.., /
ListParameters..0 >
(..> ?
)..? @
;..@ A

parameters// 
.// 
Add// 
(// 
$str// 2
,//2 3
objectRequest//4 A
.//A B
SenderObject//B N
.//N O
AccountManagerId//O _
)//_ `
;//` a

parameters00 
.00 
Add00 
(00 
$str00 7
,007 8
objectRequest009 F
.00F G
SenderObject00G S
.00S T!
AccountManagerChildId00T i
)00i j
;00j k

parameters11 
.11 
Add11 
(11 
$str11 (
,11( )
objectRequest11* 7
.117 8
SenderObject118 D
.11D E
StatusId11E M
)11M N
;11N O

parameters22 
.22 
Add22 
(22 
$str22 +
,22+ ,
objectRequest22- :
.22: ;
SenderObject22; G
.22G H
	CreatedBy22H Q
)22Q R
;22R S
CommandParameter44  
queryCommand44! -
=44. /
new440 3
CommandParameter444 D
(44D E
$str44E k
,44k l

parameters44m w
)44w x
;44x y
	DbManager66 
.66 
Instance66 "
.66" #
ExecuteCommand66# 1
(661 2
queryCommand662 >
)66> ?
;66? @
}77 
catch88 
(88 
	Exception88 
ex88 
)88  
{99 
log:: 
.:: 
Save:: 
(:: 
EnumLogLevel:: %
.::% &
Fatal::& +
,::+ ,
ex::- /
)::/ 0
;::0 1
};; 
}<< 	
public>> 
void>> "
UpdateUserAccountGroup>> *
(>>* +
ObjectRequest>>+ 8
<>>8 9
UserAccountGroups>>9 J
>>>J K
objectRequest>>L Y
)>>Y Z
{?? 	
try@@ 
{AA 
ListParametersBB 

parametersBB )
=BB* +
newBB, /
ListParametersBB0 >
(BB> ?
)BB? @
;BB@ A

parametersCC 
.CC 
AddCC 
(CC 
$strCC 7
,CC7 8
objectRequestCC9 F
.CCF G
SenderObjectCCG S
.CCS T!
AccountManagerGroupIdCCT i
)CCi j
;CCj k

parametersDD 
.DD 
AddDD 
(DD 
$strDD 2
,DD2 3
objectRequestDD4 A
.DDA B
SenderObjectDDB N
.DDN O
AccountManagerIdDDO _
)DD_ `
;DD` a

parametersEE 
.EE 
AddEE 
(EE 
$strEE 7
,EE7 8
objectRequestEE9 F
.EEF G
SenderObjectEEG S
.EES T!
AccountManagerChildIdEET i
)EEi j
;EEj k

parametersFF 
.FF 
AddFF 
(FF 
$strFF (
,FF( )
objectRequestFF* 7
.FF7 8
SenderObjectFF8 D
.FFD E
StatusIdFFE M
)FFM N
;FFN O

parametersGG 
.GG 
AddGG 
(GG 
$strGG +
,GG+ ,
objectRequestGG- :
.GG: ;
SenderObjectGG; G
.GGG H
	CreatedByGGH Q
)GGQ R
;GGR S
CommandParameterII  
queryCommandII! -
=II. /
newII0 3
CommandParameterII4 D
(IID E
$strIIE k
,IIk l

parametersIIm w
)IIw x
;IIx y
	DbManagerKK 
.KK 
InstanceKK "
.KK" #
ExecuteCommandKK# 1
(KK1 2
queryCommandKK2 >
)KK> ?
;KK? @
}LL 
catchMM 
(MM 
	ExceptionMM 
exMM 
)MM  
{NN 
logOO 
.OO 
SaveOO 
(OO 
EnumLogLevelOO %
.OO% &
FatalOO& +
,OO+ ,
exOO- /
)OO/ 0
;OO0 1
}PP 
}QQ 	
publicSS 
voidSS "
DeleteUserAccountGroupSS *
(SS* +
ObjectRequestSS+ 8
<SS8 9
UserAccountGroupsSS9 J
>SSJ K
objectRequestSSL Y
)SSY Z
{TT 	
tryUU 
{VV 
ListParametersWW 

parametersWW )
=WW* +
newWW, /
ListParametersWW0 >
(WW> ?
)WW? @
;WW@ A

parametersXX 
.XX 
AddXX 
(XX 
$strXX 7
,XX7 8
objectRequestXX9 F
.XXF G
SenderObjectXXG S
.XXS T!
AccountManagerGroupIdXXT i
)XXi j
;XXj k
CommandParameterZZ  
queryCommandZZ! -
=ZZ. /
newZZ0 3
CommandParameterZZ4 D
(ZZD E
$strZZE k
,ZZk l

parametersZZm w
)ZZw x
;ZZx y
	DbManager\\ 
.\\ 
Instance\\ "
.\\" #
ExecuteCommand\\# 1
(\\1 2
queryCommand\\2 >
)\\> ?
;\\? @
}]] 
catch^^ 
(^^ 
	Exception^^ 
ex^^ 
)^^  
{__ 
log`` 
.`` 
Save`` 
(`` 
EnumLogLevel`` %
.``% &
Fatal``& +
,``+ ,
ex``- /
)``/ 0
;``0 1
}aa 
}bb 	
publicdd 
ObjectResultdd 
<dd 
Booleandd #
>dd# $$
ValidateUserAccountGroupdd% =
(dd= >
ObjectRequestdd> K
<ddK L
UserAccountGroupsddL ]
>dd] ^
objectRequestdd_ l
)ddl m
{ee 	

SqlCommandff 
ObjCmdff 
=ff 
nullff  $
;ff$ %
ObjectResultgg 
<gg 
Booleangg  
>gg  !
resultgg" (
=gg) *
newgg+ .
ObjectResultgg/ ;
<gg; <
Booleangg< C
>ggC D
(ggD E
)ggE F
;ggF G
tryhh 
{ii 
usingjj 
(jj 
ObjCmdjj 
=jj 
newjj  #

SqlCommandjj$ .
(jj. /
$strjj/ Y
,jjY Z
	DbManagerjj[ d
.jjd e
Instancejje m
.jjm n
OpenConnectionjjn |
(jj| }
)jj} ~
)jj~ 
)	jj �
{kk 
ObjCmdll 
.ll 
CommandTypell &
=ll' (
CommandTypell) 4
.ll4 5
StoredProcedurell5 D
;llD E
ObjCmdmm 
.mm 
CommandTimeoutmm )
=mm* +
$nummm, -
;mm- .
SqlParameteroo  
outputParamoo! ,
=oo- .
ObjCmdoo/ 5
.oo5 6

Parametersoo6 @
.oo@ A
AddooA D
(ooD E
$strooE S
,ooS T
	SqlDbTypeooU ^
.oo^ _
Intoo_ b
)oob c
;ooc d
outputParampp 
.pp  
	Directionpp  )
=pp* +
ParameterDirectionpp, >
.pp> ?
Outputpp? E
;ppE F
ObjCmdrr 
.rr 

Parametersrr %
.rr% &
AddWithValuerr& 2
(rr2 3
$strrr3 F
,rrF G
objectRequestrrH U
.rrU V
SenderObjectrrV b
.rrb c
AccountManagerIdrrc s
)rrs t
;rrt u
ObjCmdss 
.ss 

Parametersss %
.ss% &
AddWithValuess& 2
(ss2 3
$strss3 K
,ssK L
objectRequestssM Z
.ssZ [
SenderObjectss[ g
.ssg h!
AccountManagerChildIdssh }
)ss} ~
;ss~ 
ObjCmdtt 
.tt 
ExecuteNonQuerytt *
(tt* +
)tt+ ,
;tt, -
resultuu 
.uu 
Iduu 
=uu 
Convertuu  '
.uu' (
ToInt32uu( /
(uu/ 0
ObjCmduu0 6
.uu6 7

Parametersuu7 A
[uuA B
$struuB P
]uuP Q
.uuQ R
ValueuuR W
)uuW X
;uuX Y
}vv 
;vv 
}ww 
catchxx 
(xx 
	Exceptionxx 
exxx 
)xx  
{yy 
resultzz 
.zz 
Messagezz 
=zz  
exzz! #
.zz# $
Messagezz$ +
;zz+ ,
result{{ 
.{{ 
Id{{ 
={{ 
-{{ 
$num{{ 
;{{ 
}|| 
return}} 
result}} 
;}} 
}~~ 	
} 
}�� �\
7D:\repositoriosGit\Chat\Chat\xChatDAO\ServiceUserDAO.cs
	namespace

 	
xChatDAO


 
{ 
public 

class 
ServiceUserDAO 
:  !
IServiceUserDAO" 1
{ 
private 
static 
ILoggerHandler %
log& )
=* +
LoggerFactory, 9
.9 :
Get: =
(= >
EnumLayerIdentifier> Q
.Q R
DataAccessLayerR a
)a b
;b c
public 
ObjectResultList 
<  
UserRoleType  ,
>, - 
GetListUsersRoleType. B
(B C
ObjectRequestC P
<P Q
UserRoleTypeQ ]
>] ^
objectRequest_ l
)l m
{ 	
ObjectResultList 
< 
UserRoleType )
>) *
listUserRol+ 6
=7 8
new9 <
ObjectResultList= M
<M N
UserRoleTypeN Z
>Z [
([ \
)\ ]
;] ^
try 
{ 
ListParameters 

parameters )
=* +
new, /
ListParameters0 >
(> ?
)? @
;@ A

parameters 
. 
Add 
( 
$str (
,( )
objectRequest* 7
.7 8
SenderObject8 D
.D E
UserIdE K
)K L
;L M

parameters 
. 
Add 
( 
$str %
,% &
objectRequest' 4
.4 5
SenderObject5 A
.A B

RoleTypeIdB L
)L M
;M N
CommandParameter  
queryCommand! -
=. /
new0 3
CommandParameter4 D
(D E
$strE e
,e f

parametersg q
)q r
;r s
	DataTable 
dtresult "
=# $
	DbManager% .
.. /
Instance/ 7
.7 8
ExecuteTable8 D
(D E
queryCommandE Q
)Q R
;R S
listUserRol 
= 
new !
ObjectResultList" 2
<2 3
UserRoleType3 ?
>? @
(@ A
dtresultA I
)I J
;J K
} 
catch 
( 
	Exception 
ex 
)  
{   
log!! 
.!! 
Save!! 
(!! 
EnumLogLevel!! %
.!!% &
Fatal!!& +
,!!+ ,
ex!!- /
)!!/ 0
;!!0 1
}"" 
return$$ 
listUserRol$$ 
;$$ 
}%% 	
public'' 
void'' 
CreateUsersRoleType'' '
(''' (
ObjectRequest''( 5
<''5 6
UserRoleType''6 B
>''B C
objectRequest''D Q
)''Q R
{(( 	
try)) 
{** 
ListParameters++ 

parameters++ )
=++* +
new++, /
ListParameters++0 >
(++> ?
)++? @
;++@ A

parameters,, 
.,, 
Add,, 
(,, 
$str,, ,
,,,, -
objectRequest,,. ;
.,,; <
SenderObject,,< H
.,,H I

RoleTypeId,,I S
),,S T
;,,T U

parameters-- 
.-- 
Add-- 
(-- 
$str-- (
,--( )
objectRequest--* 7
.--7 8
SenderObject--8 D
.--D E
UserId--E K
)--K L
;--L M

parameters.. 
... 
Add.. 
(.. 
$str.. (
,..( )
objectRequest..* 7
...7 8
SenderObject..8 D
...D E
StatusId..E M
)..M N
;..N O

parameters// 
.// 
Add// 
(// 
$str// +
,//+ ,
objectRequest//- :
.//: ;
SenderObject//; G
.//G H
	CreatedBy//H Q
)//Q R
;//R S
CommandParameter11  
queryCommand11! -
=11. /
new110 3
CommandParameter114 D
(11D E
$str11E d
,11d e

parameters11f p
)11p q
;11q r
	DbManager33 
.33 
Instance33 "
.33" #
ExecuteCommand33# 1
(331 2
queryCommand332 >
)33> ?
;33? @
}44 
catch55 
(55 
	Exception55 
ex55 
)55  
{66 
log77 
.77 
Save77 
(77 
EnumLogLevel77 %
.77% &
Fatal77& +
,77+ ,
ex77- /
)77/ 0
;770 1
}88 
}99 	
public;; 
void;; 
UpdateUsersRoleType;; '
(;;' (
ObjectRequest;;( 5
<;;5 6
UserRoleType;;6 B
>;;B C
objectRequest;;D Q
);;Q R
{<< 	
try== 
{>> 
ListParameters?? 

parameters?? )
=??* +
new??, /
ListParameters??0 >
(??> ?
)??? @
;??@ A

parameters@@ 
.@@ 
Add@@ 
(@@ 
$str@@ /
,@@/ 0
objectRequest@@1 >
.@@> ?
SenderObject@@? K
.@@K L
UserRolTypeId@@L Y
)@@Y Z
;@@Z [

parametersAA 
.AA 
AddAA 
(AA 
$strAA ,
,AA, -
objectRequestAA. ;
.AA; <
SenderObjectAA< H
.AAH I

RoleTypeIdAAI S
)AAS T
;AAT U

parametersBB 
.BB 
AddBB 
(BB 
$strBB (
,BB( )
objectRequestBB* 7
.BB7 8
SenderObjectBB8 D
.BBD E
UserIdBBE K
)BBK L
;BBL M

parametersCC 
.CC 
AddCC 
(CC 
$strCC (
,CC( )
objectRequestCC* 7
.CC7 8
SenderObjectCC8 D
.CCD E
StatusIdCCE M
)CCM N
;CCN O

parametersDD 
.DD 
AddDD 
(DD 
$strDD +
,DD+ ,
objectRequestDD- :
.DD: ;
SenderObjectDD; G
.DDG H
	UpdatedByDDH Q
)DDQ R
;DDR S
CommandParameterFF  
queryCommandFF! -
=FF. /
newFF0 3
CommandParameterFF4 D
(FFD E
$strFFE d
,FFd e

parametersFFf p
)FFp q
;FFq r
	DbManagerHH 
.HH 
InstanceHH "
.HH" #
ExecuteCommandHH# 1
(HH1 2
queryCommandHH2 >
)HH> ?
;HH? @
}II 
catchJJ 
(JJ 
	ExceptionJJ 
exJJ 
)JJ  
{KK 
logLL 
.LL 
SaveLL 
(LL 
EnumLogLevelLL %
.LL% &
FatalLL& +
,LL+ ,
exLL- /
)LL/ 0
;LL0 1
}MM 
}NN 	
publicPP 
voidPP 
DeleteUsersRoleTypePP '
(PP' (
ObjectRequestPP( 5
<PP5 6
UserRoleTypePP6 B
>PPB C
objectRequestPPD Q
)PPQ R
{QQ 	
tryRR 
{SS 
ListParametersTT 

parametersTT )
=TT* +
newTT, /
ListParametersTT0 >
(TT> ?
)TT? @
;TT@ A

parametersUU 
.UU 
AddUU 
(UU 
$strUU /
,UU/ 0
objectRequestUU1 >
.UU> ?
SenderObjectUU? K
.UUK L
UserRolTypeIdUUL Y
)UUY Z
;UUZ [
CommandParameterWW  
queryCommandWW! -
=WW. /
newWW0 3
CommandParameterWW4 D
(WWD E
$strWWE d
,WWd e

parametersWWf p
)WWp q
;WWq r
	DbManagerYY 
.YY 
InstanceYY "
.YY" #
ExecuteCommandYY# 1
(YY1 2
queryCommandYY2 >
)YY> ?
;YY? @
}ZZ 
catch[[ 
([[ 
	Exception[[ 
ex[[ 
)[[  
{\\ 
log]] 
.]] 
Save]] 
(]] 
EnumLogLevel]] %
.]]% &
Fatal]]& +
,]]+ ,
ex]]- /
)]]/ 0
;]]0 1
}^^ 
}__ 	
publicaa 
ObjectResultaa 
<aa 
Booleanaa #
>aa# $!
ValidateUsersRoleTypeaa% :
(aa: ;
ObjectRequestaa; H
<aaH I
UserRoleTypeaaI U
>aaU V
objectRequestaaW d
)aad e
{bb 	

SqlCommandcc 
ObjCmdcc 
=cc 
nullcc  $
;cc$ %
ObjectResultdd 
<dd 
Booleandd  
>dd  !
resultdd" (
=dd) *
newdd+ .
ObjectResultdd/ ;
<dd; <
Booleandd< C
>ddC D
(ddD E
)ddE F
;ddF G
tryee 
{ff 
usinggg 
(gg 
ObjCmdgg 
=gg 
newgg  #

SqlCommandgg$ .
(gg. /
$strgg/ U
,ggU V
	DbManagerggW `
.gg` a
Instancegga i
.ggi j
OpenConnectionggj x
(ggx y
)ggy z
)ggz {
)gg{ |
{hh 
ObjCmdii 
.ii 
CommandTypeii &
=ii' (
CommandTypeii) 4
.ii4 5
StoredProcedureii5 D
;iiD E
ObjCmdjj 
.jj 
CommandTimeoutjj )
=jj* +
$numjj, -
;jj- .
SqlParameterll  
outputParamll! ,
=ll- .
ObjCmdll/ 5
.ll5 6

Parametersll6 @
.ll@ A
AddllA D
(llD E
$strllE S
,llS T
	SqlDbTypellU ^
.ll^ _
Intll_ b
)llb c
;llc d
outputParammm 
.mm  
	Directionmm  )
=mm* +
ParameterDirectionmm, >
.mm> ?
Outputmm? E
;mmE F
ObjCmdoo 
.oo 

Parametersoo %
.oo% &
AddWithValueoo& 2
(oo2 3
$stroo3 <
,oo< =
objectRequestoo> K
.ooK L
SenderObjectooL X
.ooX Y
UserIdooY _
)oo_ `
;oo` a
ObjCmdpp 
.pp 

Parameterspp %
.pp% &
AddWithValuepp& 2
(pp2 3
$strpp3 9
,pp9 :
objectRequestpp; H
.ppH I
SenderObjectppI U
.ppU V

RoleTypeIdppV `
)pp` a
;ppa b
ObjCmdqq 
.qq 
ExecuteNonQueryqq *
(qq* +
)qq+ ,
;qq, -
resultrr 
.rr 
Idrr 
=rr 
Convertrr  '
.rr' (
ToInt32rr( /
(rr/ 0
ObjCmdrr0 6
.rr6 7

Parametersrr7 A
[rrA B
$strrrB P
]rrP Q
.rrQ R
ValuerrR W
)rrW X
;rrX Y
}ss 
;ss 
}tt 
catchuu 
(uu 
	Exceptionuu 
exuu 
)uu  
{vv 
resultww 
.ww 
Messageww 
=ww  
exww! #
.ww# $
Messageww$ +
;ww+ ,
resultxx 
.xx 
Idxx 
=xx 
-xx 
$numxx 
;xx 
}yy 
returnzz 
resultzz 
;zz 
}{{ 	
}}} 
}~~ 