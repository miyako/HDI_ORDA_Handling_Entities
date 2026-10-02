//%attributes = {"invisible":true}
ARRAY LONGINT:C221(_sliceSizes; 12)
var $i : Integer

//Business logic related to ORDA


//Load data from JSON file gamers_data.json in DB
buildDataFromJSON


//Manage entity selection (create entity selection, add, navigate, ...) page
Form:C1466.gamers:=ds:C1482.Gamer.all()
Form:C1466.blue:=ds:C1482.Gamer.newSelection()
Form:C1466.red:=ds:C1482.Gamer.newSelection()
Form:C1466.gamer:=New object:C1471

OBJECT SET ENABLED:C1123(*; "AddTo@"; False:C215)
OBJECT SET ENABLED:C1123(*; "btnView@"; False:C215)
OBJECT SET ENABLED:C1123(*; "Nav@"; False:C215)
OBJECT SET ENABLED:C1123(*; "RankIn@"; False:C215)

r1:=1
r2:=0
OBJECT SET TITLE:C194(*; "btnViewFirst"; Localized string("BtnViewFirstRed"))
OBJECT SET TITLE:C194(*; "btnViewLast"; Localized string("BtnViewLastRed"))

Form:C1466.rankInTeam:=""
Form:C1466.rankInGamers:=""
Form:C1466.containedInTeam:=""


//Ordered entity selection page
Form:C1466.parts:=ds:C1482.Parts.all().orderBy("name")

//Create a new ORDERED entity selection 
Form:C1466.gatheredParts:=ds:C1482.Parts.newSelection(dk keep ordered:K85:11)
Form:C1466.gatheredPartsOrdered:=""

//For each and entitySelection[x] page
Form:C1466.rank:=1


//Slice an entity selection page
Form:C1466.smallList:=ds:C1482.Gamer.newSelection()
Form:C1466.first:=0
Form:C1466.last:=0

//Slice sizes available in the drop down list
For ($i; 1; 12)
	_sliceSizes{$i}:=$i
End for 
_sliceSizes{0}:=0
_sliceSizes:=0

OBJECT SET ENABLED:C1123(*; "ViewPreviousButton"; False:C215)
OBJECT SET ENABLED:C1123(*; "ViewNextButton"; False:C215)

btnTrace:=False:C215
