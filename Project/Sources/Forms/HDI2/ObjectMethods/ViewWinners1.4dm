var $gamer; $status : Object

If (btnTrace)
	TRACE:C157
End if 


//Loop on each entity of the entity selection Form.gamers
For each ($gamer; Form:C1466.gamers)
	$gamer.level:=$gamer.level+1
	$status:=$gamer.save()
End for each 


//Refresh the list box
Form:C1466.gamers:=Form:C1466.gamers


