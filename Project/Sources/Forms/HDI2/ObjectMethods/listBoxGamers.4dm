If (btnTrace)
	TRACE:C157
End if 


Case of 
		
	: (Form event code:C388=On Selection Change:K2:29)
		
		
		//The "Add To" buttons are available only if the gamer does not belong to any team
		
		OBJECT SET ENABLED:C1123(*; "AddTo@"; True:C214)
		
		If (Form:C1466.selectedGamer#Null:C1517)
			//The gamer belongs to a team (blue or red)
			If ((Form:C1466.red.contains(Form:C1466.selectedGamer)) | (Form:C1466.blue.contains(Form:C1466.selectedGamer)))
				OBJECT SET ENABLED:C1123(*; "AddTo@"; False:C215)
			End if 
		Else 
			OBJECT SET ENABLED:C1123(*; "AddTo@"; False:C215)
		End if 
		
		
End case 

