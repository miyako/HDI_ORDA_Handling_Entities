//%attributes = {"invisible":true}
var $txtGamers : Text
var $gamersColl : Collection


$txtGamers:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"gamers_data.json")

$gamersColl:=JSON Parse:C1218($txtGamers)

//Drop all the Gamer table content
ds:C1482.Gamer.all().drop()

//Load the collection in the Gamer table
ds:C1482.Gamer.fromCollection($gamersColl)
