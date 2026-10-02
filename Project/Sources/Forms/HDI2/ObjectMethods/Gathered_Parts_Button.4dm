
If (btnTrace)
	TRACE:C157
End if 


Case of 
		
		//Test if the entity selection Form.gatheredParts is ordered
		
	: (Form:C1466.gatheredParts.isOrdered())
		Form:C1466.gatheredPartsOrdered:=Localized string("PartsOrderedYes")
		
	: (Not:C34(Form:C1466.gatheredParts.isOrdered()))
		Form:C1466.gatheredPartsOrdered:=Localized string("PartsOrderedNo")
		
End case 







