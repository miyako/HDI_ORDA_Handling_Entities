
If (btnTrace)
	TRACE:C157
End if 


Case of 
		
		//Test if the entity selection Form.gatheredParts is ordered
		
	: (Form:C1466.gatheredParts.isOrdered())
		Form:C1466.gatheredPartsOrdered:="Yes, I am."
		
	: (Not:C34(Form:C1466.gatheredParts.isOrdered()))
		Form:C1466.gatheredPartsOrdered:="No, I am not."
		
End case 







