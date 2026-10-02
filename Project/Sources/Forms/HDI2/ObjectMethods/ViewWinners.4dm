
C_OBJECT:C1216($leg; $tabletop; $screwA; $screwB; $net)


If (btnTrace)
	TRACE:C157
End if 


//The entity selection Form.parts is sorted by name (Leg, Net, Screw A, Screw B, Tabletop)

//Get entity leg
$leg:=Form:C1466.parts.first()

//Get entity net
$net:=$leg.next()

//Get entity screw A
$screwA:=$net.next()

//Get entity screw B
$screwB:=$screwA.next()

//Get entity tabletop
$tabletop:=$screwB.next()


//The entity selection Form.gatheredParts has been created with dk keep ordered option (initPages method)
//We can add several time the same entity in it
//The order in which we add the entities is maintained

Form:C1466.gatheredParts.add($leg)
Form:C1466.gatheredParts.add($leg)
Form:C1466.gatheredParts.add($leg)
Form:C1466.gatheredParts.add($leg)

Form:C1466.gatheredParts.add($tabletop)
Form:C1466.gatheredParts.add($tabletop)

Form:C1466.gatheredParts.add($screwA)
Form:C1466.gatheredParts.add($screwA)

Form:C1466.gatheredParts.add($screwB)

Form:C1466.gatheredParts.add($tabletop)
Form:C1466.gatheredParts.add($tabletop)

Form:C1466.gatheredParts.add($screwB)
Form:C1466.gatheredParts.add($screwB)

Form:C1466.gatheredParts.add($screwA)
Form:C1466.gatheredParts.add($screwA)

Form:C1466.gatheredParts.add($net)

//Refresh the list box
Form:C1466.gatheredParts:=Form:C1466.gatheredParts


