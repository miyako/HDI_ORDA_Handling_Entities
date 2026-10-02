
If (btnTrace)
	TRACE:C157
End if 


//Radio button "Red team" checked and entity selection Form.red not empty
If (r1=1)
	If (Form:C1466.red.length>=1)
		
		//Reset Form.rankInTeam / Form.rankInGamers
		changeGamer
		
		//Edit the first entity of entity selection Form.red
		Form:C1466.gamer:=Form:C1466.red.first()
		
		//Change color of the labels "First name", "Last name", ...
		//Able navigation buttons
		redContext
		
	End if 
	
Else 
	
	//Radio button "Blue team" checked and entity selection Form.blue not empty
	If (Form:C1466.blue.length>=1)
		
		//Reset Form.rankInTeam / Form.rankInGamers
		changeGamer
		
		//Edit the first entity of entity selection Form.blue
		Form:C1466.gamer:=Form:C1466.blue.first()
		
		//Change color of the labels "First name", "Last name", ...
		//Able navigation buttons
		blueContext
		
	End if 
End if 


