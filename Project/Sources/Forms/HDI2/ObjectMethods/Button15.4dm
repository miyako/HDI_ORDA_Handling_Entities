
If (btnTrace)
	TRACE:C157
End if 


Case of 
	: (Form:C1466.selectedGamer=Null:C1517)
		Form:C1466.containedInTeam:="None"
		
		
		//The entity Form.selectedGamer belongs to the entity selection Form.blue
	: (Form:C1466.blue.contains(Form:C1466.selectedGamer))
		Form:C1466.containedInTeam:="Blue team"
		
		//The entity Form.selectedGamer belongs to the entity selection Form.red
	: (Form:C1466.red.contains(Form:C1466.selectedGamer))
		Form:C1466.containedInTeam:="Red team"
		
	Else 
		Form:C1466.containedInTeam:="None"
		
End case 




