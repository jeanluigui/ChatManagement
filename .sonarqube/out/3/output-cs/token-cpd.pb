â
6D:\repositoriosGit\Chat\Chat\xChatUtilities\Encrypt.cs
	namespace 	
xChatUtilities
 
{ 
public

 

class

 
Encrypt

 
{ 
public 
static 
string 
	GetSHA256 &
(& '
string' -
str. 1
)1 2
{ 	
SHA256 
sha256 
= 
SHA256Managed )
.) *
Create* 0
(0 1
)1 2
;2 3
ASCIIEncoding 
encoding "
=# $
new% (
ASCIIEncoding) 6
(6 7
)7 8
;8 9
byte 
[ 
] 
stream 
= 
null  
;  !
StringBuilder 
sb 
= 
new "
StringBuilder# 0
(0 1
)1 2
;2 3
stream 
= 
sha256 
. 
ComputeHash '
(' (
encoding( 0
.0 1
GetBytes1 9
(9 :
str: =
)= >
)> ?
;? @
for 
( 
int 
i 
= 
$num 
; 
i 
< 
stream  &
.& '
Length' -
;- .
i/ 0
++0 2
)2 3
sb4 6
.6 7
AppendFormat7 C
(C D
$strD L
,L M
streamN T
[T U
iU V
]V W
)W X
;X Y
return 
sb 
. 
ToString 
( 
)  
;  !
} 	
} 
} å?
<D:\repositoriosGit\Chat\Chat\xChatUtilities\HtmlSanitizer.cs
	namespace 	
xChatUtilities
 
{ 
public 

class 
HtmlSanitizer 
{ 
private		 
HashSet		 
<		 
String		 
>		 
	BlackList		  )
=		* +
new		, /
HashSet		0 7
<		7 8
String		8 >
>		> ?
(		? @
)		@ A
{

 	
{ 
$str 
} 
, 
{ 
$str 
} 
, 
{ 
$str 
} 
, 
{ 
$str 
} 
, 
{ 
$str 
} 
, 
{ 
$str 
} 
, 
{ 
$str 
} 
, 
{ 
$str 
} 
} 	
;	 

public 
static 
String 
SanitizeHtml )
() *
String* 0
html1 5
,5 6
params7 =
String> D
[D E
]E F
	blackListG P
)P Q
{ 	
HtmlSanitizer 
	sanitizer #
=$ %
new& )
HtmlSanitizer* 7
(7 8
)8 9
;9 :
if 
( 
	blackList 
!= 
null !
&&" $
	blackList% .
.. /
Length/ 5
>6 7
$num8 9
)9 :
{ 
	sanitizer 
. 
	BlackList #
.# $
Clear$ )
() *
)* +
;+ ,
foreach   
(   
String   
item    $
in  % '
	blackList  ( 1
)  1 2
	sanitizer!! 
.!! 
	BlackList!! '
.!!' (
Add!!( +
(!!+ ,
item!!, 0
)!!0 1
;!!1 2
}"" 
return## 
	sanitizer## 
.## 
Sanitize## %
(##% &
html##& *
)##* +
;##+ ,
}$$ 	
public-- 
String-- 
Sanitize-- 
(-- 
String-- %
html--& *
)--* +
{.. 	
HtmlDocument// 
doc// 
=// 
new// "
HtmlDocument//# /
(/// 0
)//0 1
;//1 2
doc00 
.00 
LoadHtml00 
(00 
html00 
)00 
;00 
SanitizeHtmlNode11 
(11 
doc11  
.11  !
DocumentNode11! -
)11- .
;11. /
return22 
doc22 
.22 
DocumentNode22 #
.22# $
WriteTo22$ +
(22+ ,
)22, -
;22- .
}33 	
private44 
void44 
SanitizeHtmlNode44 %
(44% &
HtmlNode44& .
node44/ 3
)443 4
{55 	
if66 
(66 
node66 
.66 
NodeType66 
==66  
HtmlNodeType66! -
.66- .
Element66. 5
)665 6
{77 
if99 
(99 
	BlackList99 
.99 
Contains99 &
(99& '
node99' +
.99+ ,
Name99, 0
)990 1
)991 2
{:: 
node;; 
.;; 
Remove;; 
(;;  
);;  !
;;;! "
return<< 
;<< 
}== 
if@@ 
(@@ 
node@@ 
.@@ 
Name@@ 
==@@  
$str@@! (
)@@( )
{AA 
ifBB 
(BB 
stringBB 
.BB 
IsNullOrEmptyBB ,
(BB, -
nodeBB- 1
.BB1 2
	InnerTextBB2 ;
)BB; <
)BB< =
{CC 
ifDD 
(DD 
nodeDD  
.DD  !
	InnerHtmlDD! *
.DD* +
ContainsDD+ 3
(DD3 4
$strDD4 @
)DD@ A
||DDB D
nodeDDE I
.DDI J
	InnerHtmlDDJ S
.DDS T
ContainsDDT \
(DD\ ]
$strDD] j
)DDj k
)DDk l
nodeEE  
.EE  !

ParentNodeEE! +
.EE+ ,
RemoveChildEE, 7
(EE7 8
nodeEE8 <
)EE< =
;EE= >
}FF 
}GG 
ifJJ 
(JJ 
nodeJJ 
.JJ 
HasAttributesJJ &
)JJ& '
{KK 
forLL 
(LL 
Int32LL 
iLL  
=LL! "
nodeLL# '
.LL' (

AttributesLL( 2
.LL2 3
CountLL3 8
-LL9 :
$numLL; <
;LL< =
iLL> ?
>=LL@ B
$numLLC D
;LLD E
iLLF G
--LLG I
)LLI J
{MM 
HtmlAttributeNN %
currentAttributeNN& 6
=NN7 8
nodeNN9 =
.NN= >

AttributesNN> H
[NNH I
iNNI J
]NNJ K
;NNK L
stringPP 
attrPP #
=PP$ %
currentAttributePP& 6
.PP6 7
NamePP7 ;
.PP; <
ToLowerPP< C
(PPC D
)PPD E
;PPE F
stringQQ 
valQQ "
=QQ# $
currentAttributeQQ% 5
.QQ5 6
ValueQQ6 ;
.QQ; <
ToLowerQQ< C
(QQC D
)QQD E
;QQE F
ifTT 
(TT 
attrTT  
.TT  !

StartsWithTT! +
(TT+ ,
$strTT, 0
)TT0 1
)TT1 2
nodeUU  
.UU  !

AttributesUU! +
.UU+ ,
RemoveUU, 2
(UU2 3
currentAttributeUU3 C
)UUC D
;UUD E
elseXX 
ifXX 
(XX  !
(XX! "
attrXX" &
==XX' )
$strXX* 0
||XX1 3
attrXX4 8
==XX9 ;
$strXX< A
||XXB D
attrXXE I
==XXJ L
$strXXM U
||XXV X
attrXXY ]
==XX^ `
$strXXa i
)XXi j
&&XXk m
valYY! $
!=YY% '
nullYY( ,
&&YY- /
valZZ! $
.ZZ$ %
ContainsZZ% -
(ZZ- .
$strZZ. ;
)ZZ; <
)ZZ< =
node[[  
.[[  !

Attributes[[! +
.[[+ ,
Remove[[, 2
([[2 3
currentAttribute[[3 C
)[[C D
;[[D E
else^^ 
if^^ 
(^^  !
attr^^! %
==^^& (
$str^^) 0
&&^^1 3
val__! $
!=__% '
null__( ,
&&__- /
val``! $
.``$ %
Contains``% -
(``- .
$str``. :
)``: ;
||``< >
val``? B
.``B C
Contains``C K
(``K L
$str``L Y
)``Y Z
||``[ ]
val``^ a
.``a b
Contains``b j
(``j k
$str``k v
)``v w
)``w x
nodeaa  
.aa  !

Attributesaa! +
.aa+ ,
Removeaa, 2
(aa2 3
currentAttributeaa3 C
)aaC D
;aaD E
}bb 
}cc 
}dd 
ifgg 
(gg 
nodegg 
.gg 
HasChildNodesgg "
)gg" #
{hh 
forii 
(ii 
Int32ii 
iii 
=ii 
nodeii #
.ii# $

ChildNodesii$ .
.ii. /
Countii/ 4
-ii5 6
$numii7 8
;ii8 9
iii: ;
>=ii< >
$numii? @
;ii@ A
iiiB C
--iiC E
)iiE F
{jj 
SanitizeHtmlNodekk $
(kk$ %
nodekk% )
.kk) *

ChildNodeskk* 4
[kk4 5
ikk5 6
]kk6 7
)kk7 8
;kk8 9
}ll 
}mm 
}nn 	
}qq 
}rr Ò
FD:\repositoriosGit\Chat\Chat\xChatUtilities\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str )
)) *
]* +
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
$str +
)+ ,
], -
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
]$$) *·G
=D:\repositoriosGit\Chat\Chat\xChatUtilities\RequestService.cs
	namespace 	
xChatUtilities
 
{ 
public		 

sealed		 
class		 
RequestService		 &
{

 
public 
static 
ObjectResult "
<" #
	TResponse# ,
>, -
Execute. 5
<5 6
	TResponse6 ?
,? @
TRequestA I
>I J
(J K
stringK Q
urlR U
,U V
stringW ]
metodo^ d
,d e
ObjectRequestf s
<s t
TRequestt |
>| }
objectRequest	~ ã
)
ã å
{ 	
ObjectResult 
< 
	TResponse "
>" #
objectResult$ 0
=1 2
new3 6
ObjectResult7 C
<C D
	TResponseD M
>M N
(N O
)O P
;P Q
string 
result 
= 
string "
." #
Empty# (
;( )
try 
{ 
string 
json 
= 
JsonConvert )
.) *
SerializeObject* 9
(9 :
objectRequest: G
)G H
;H I

WebRequest 
request "
=# $

WebRequest% /
./ 0
Create0 6
(6 7
url7 :
): ;
;; <
request 
. 
Method 
=  
metodo! '
;' (
request   
.   
PreAuthenticate   '
=  ( )
true  * .
;  . /
request!! 
.!! 
ContentType!! #
=!!$ %
	Constants!!& /
.!!/ 0
ApiContentType!!0 >
;!!> ?
request"" 
."" 
Timeout"" 
=""  !
	Constants""" +
.""+ ,

ApiTimeOut"", 6
;""6 7
using$$ 
($$ 
var$$ 
oStreamWriter$$ (
=$$) *
new$$+ .
StreamWriter$$/ ;
($$; <
request$$< C
.$$C D
GetRequestStream$$D T
($$T U
)$$U V
)$$V W
)$$W X
{%% 
oStreamWriter&& !
.&&! "
Write&&" '
(&&' (
json&&( ,
)&&, -
;&&- .
oStreamWriter'' !
.''! "
Flush''" '
(''' (
)''( )
;'') *
}(( 
var** 
oHttpResponse** !
=**" #
(**$ %
HttpWebResponse**% 4
)**4 5
request**5 <
.**< =
GetResponse**= H
(**H I
)**I J
;**J K
using,, 
(,, 
var,, 
oStreamReader,, (
=,,) *
new,,+ .
StreamReader,,/ ;
(,,; <
oHttpResponse,,< I
.,,I J
GetResponseStream,,J [
(,,[ \
),,\ ]
),,] ^
),,^ _
{-- 
result.. 
=.. 
oStreamReader.. *
...* +
	ReadToEnd..+ 4
(..4 5
)..5 6
;..6 7
}// 
objectResult33 
=33 
JsonConvert33 *
.33* +
DeserializeObject33+ <
<33< =
ObjectResult33= I
<33I J
	TResponse33J S
>33S T
>33T U
(33U V
result33V \
)33\ ]
;33] ^
}55 
catch66 
(66 
TimeoutException66 #
te66$ &
)66& '
{77 
objectResult88 
.88 
Id88 
=88  !
(88" #
Int3288# (
)88( )
CustomExceptionEnum88) <
.88< =
TimeOutException88= M
;88M N
objectResult99 
.99 
Message99 $
=99% &
te99' )
.99) *
Message99* 1
;991 2
}:: 
catch;; 
(;; 
	Exception;; 
ex;; 
);;  
{<< 
objectResult== 
.== 
Id== 
===  !
(==" #
Int32==# (
)==( )
CustomExceptionEnum==) <
.==< ="
NotControllerException=== S
;==S T
objectResult>> 
.>> 
Message>> $
=>>% &
ex>>' )
.>>) *
Message>>* 1
;>>1 2
}?? 
returnAA 
objectResultAA 
;AA  
}BB 	
publicMM 
staticMM 
ObjectResultListMM &
<MM& '
	TResponseMM' 0
>MM0 1
ExecuteListMM2 =
<MM= >
	TResponseMM> G
,MMG H
TRequestMMI Q
>MMQ R
(MMR S
stringMMS Y
urlMMZ ]
,MM] ^
stringMM_ e
metodoMMf l
,MMl m
ObjectRequestMMn {
<MM{ |
TRequest	MM| Ñ
>
MMÑ Ö
objectRequest
MMÜ ì
)
MMì î
where
MMï ö
	TResponse
MMõ §
:
MM• ¶
EntityBaseClass
MMß ∂
,
MM∂ ∑
new
MM∏ ª
(
MMª º
)
MMº Ω
{NN 	
ObjectResultListOO 
<OO 
	TResponseOO &
>OO& '
objectResultOO( 4
=OO5 6
newOO7 :
ObjectResultListOO; K
<OOK L
	TResponseOOL U
>OOU V
(OOV W
)OOW X
;OOX Y
stringQQ 
resultQQ 
=QQ 
stringQQ "
.QQ" #
EmptyQQ# (
;QQ( )
trySS 
{TT 
stringUU 
jsonUU 
=UU 
JsonConvertUU )
.UU) *
SerializeObjectUU* 9
(UU9 :
objectRequestUU: G
)UUG H
;UUH I

WebRequestWW 
requestWW "
=WW# $

WebRequestWW% /
.WW/ 0
CreateWW0 6
(WW6 7
urlWW7 :
)WW: ;
;WW; <
requestYY 
.YY 
MethodYY 
=YY  
metodoYY! '
;YY' (
requestZZ 
.ZZ 
PreAuthenticateZZ '
=ZZ( )
trueZZ* .
;ZZ. /
request[[ 
.[[ 
ContentType[[ #
=[[$ %
	Constants[[& /
.[[/ 0
ApiContentType[[0 >
;[[> ?
request\\ 
.\\ 
Timeout\\ 
=\\  !
	Constants\\" +
.\\+ ,

ApiTimeOut\\, 6
;\\6 7
using^^ 
(^^ 
var^^ 
oStreamWriter^^ (
=^^) *
new^^+ .
StreamWriter^^/ ;
(^^; <
request^^< C
.^^C D
GetRequestStream^^D T
(^^T U
)^^U V
)^^V W
)^^W X
{__ 
oStreamWriter`` !
.``! "
Write``" '
(``' (
json``( ,
)``, -
;``- .
oStreamWriteraa !
.aa! "
Flushaa" '
(aa' (
)aa( )
;aa) *
}bb 
vardd 
oHttpResponsedd !
=dd" #
(dd$ %
HttpWebResponsedd% 4
)dd4 5
requestdd5 <
.dd< =
GetResponsedd= H
(ddH I
)ddI J
;ddJ K
usingff 
(ff 
varff 
oStreamReaderff (
=ff) *
newff+ .
StreamReaderff/ ;
(ff; <
oHttpResponseff< I
.ffI J
GetResponseStreamffJ [
(ff[ \
)ff\ ]
)ff] ^
)ff^ _
{gg 
resulthh 
=hh 
oStreamReaderhh *
.hh* +
	ReadToEndhh+ 4
(hh4 5
)hh5 6
;hh6 7
}ii 
objectResultmm 
=mm 
JsonConvertmm *
.mm* +
DeserializeObjectmm+ <
<mm< =
ObjectResultListmm= M
<mmM N
	TResponsemmN W
>mmW X
>mmX Y
(mmY Z
resultmmZ `
)mm` a
;mma b
}oo 
catchpp 
(pp 
TimeoutExceptionpp #
tepp$ &
)pp& '
{qq 
objectResultrr 
.rr 
Idrr 
=rr  !
(rr" #
Int32rr# (
)rr( )
CustomExceptionEnumrr) <
.rr< =
TimeOutExceptionrr= M
;rrM N
objectResultss 
.ss 
Messagess $
=ss% &
tess' )
.ss) *
Messagess* 1
;ss1 2
}tt 
catchuu 
(uu 
	Exceptionuu 
exuu 
)uu  
{vv 
objectResultww 
.ww 
Idww 
=ww  !
(ww" #
Int32ww# (
)ww( )
CustomExceptionEnumww) <
.ww< ="
NotControllerExceptionww= S
;wwS T
objectResultxx 
.xx 
Messagexx $
=xx% &
exxx' )
.xx) *
Messagexx* 1
;xx1 2
}yy 
return{{ 
objectResult{{ 
;{{  
}|| 	
}~~ 
}ÄÄ 