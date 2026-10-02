
If (btnTrace)
	TRACE:C157
End if 



If (Form:C1466.gamer.next()#Null:C1517)
	
	//Reset Form.rankInTeam / Form.rankInGamers
	changeGamer
	
	
	//Edit next entity in the entity selection to which Form.gamer belongs
	Form:C1466.gamer:=Form:C1466.gamer.next()
	
End if 

