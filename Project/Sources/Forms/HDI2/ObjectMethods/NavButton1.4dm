

If (btnTrace)
	TRACE:C157
End if 


//Reset Form.rankInTeam / Form.rankInGamers
changeGamer


//Edit first entity of the entity selection to which Form.gamer belongs
Form:C1466.gamer:=Form:C1466.gamer.first()
