//%attributes = {"invisible":true}

ds:C1482.Parts.all().drop()

$part:=ds:C1482.Parts.new()
$part.name:="leg"
$part.quantity:=4
$status:=$part.save()

$part:=ds:C1482.Parts.new()
$part.name:="tabletop"
$part.quantity:=4
$status:=$part.save()

$part:=ds:C1482.Parts.new()
$part.name:="screw A"
$part.quantity:=4
$status:=$part.save()

$part:=ds:C1482.Parts.new()
$part.name:="screw B"
$part.quantity:=3
$status:=$part.save()

$part:=ds:C1482.Parts.new()
$part.name:="net"
$part.quantity:=1
$status:=$part.save()


C_TEXT:C284($txtPupils; $txtSchools)
C_COLLECTION:C1488($pupilsColl; $schoolsColl)

$coll:=ds:C1482.Gamer.all().toCollection()
$text:=JSON Stringify:C1217($coll; *)
TEXT TO DOCUMENT:C1237("gamers"; $text)



