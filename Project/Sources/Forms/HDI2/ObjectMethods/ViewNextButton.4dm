
If (btnTrace)
	TRACE:C157
End if 


//Form.first is the index of the first entity of the page 
//Form.last is the index of the last entity of the page + 1


//We go further in the entity selection so the Previous button is available
OBJECT SET ENABLED:C1123(*; "ViewPreviousButton"; True:C214)


If (Form:C1466.last+_sliceSizes<Form:C1466.gamers.length)
	//New value of Form.last is in the entity selection
	Form:C1466.first:=Form:C1466.first+_sliceSizes
	Form:C1466.last:=Form:C1466.last+_sliceSizes
	
	//Display entities from index Form.first with a length of (Form.last - Form.first)
	Form:C1466.smallList:=Form:C1466.gamers.slice(Form:C1466.first; Form:C1466.last)
	
	
Else 
	//New value of Form.last is outside the entity selection (>= Form.gamers.length)
	
	//We are at the end of the entity selection, so Next button is not available
	OBJECT SET ENABLED:C1123(*; "ViewNextButton"; False:C215)
	
	//New value of Form.first is still in the entity selection
	If (Form:C1466.first+_sliceSizes<=(Form:C1466.gamers.length-1))
		
		Form:C1466.first:=Form:C1466.first+_sliceSizes
		Form:C1466.last:=Form:C1466.last+_sliceSizes
		
		//Display entities from index Form.first until the end of the entity selection
		Form:C1466.smallList:=Form:C1466.gamers.slice(Form:C1466.first)
		
	End if 
	
End if 

