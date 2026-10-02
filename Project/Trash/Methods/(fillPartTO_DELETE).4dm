//%attributes = {"invisible":true}

ds:C1482.Parts.all().drop()

$part:=ds:C1482.Parts.new()
$part.name:="Leg"
$part.quantity:=4
$status:=$part.save()

$part:=ds:C1482.Parts.new()
$part.name:="Tabletop"
$part.quantity:=4
$status:=$part.save()

$part:=ds:C1482.Parts.new()
$part.name:="Screw A"
$part.quantity:=4
$status:=$part.save()

$part:=ds:C1482.Parts.new()
$part.name:="Screw B"
$part.quantity:=3
$status:=$part.save()

$part:=ds:C1482.Parts.new()
$part.name:="Net"
$part.quantity:=1
$status:=$part.save()