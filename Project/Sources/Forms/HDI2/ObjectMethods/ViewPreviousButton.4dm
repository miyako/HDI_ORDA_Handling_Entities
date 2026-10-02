
If (btnTrace)
	TRACE:C157
End if 

//We go back in the entity selection, so the Next button is available
OBJECT SET ENABLED:C1123(*; "ViewNextButton"; True:C214)


//Form.first is the index of the first entity of the page 
//Form.last is the index of the last entity of the page + 1

If (Form:C1466.first-_sliceSizes>0)
	
	//New value of Form.first is in the entity selection
	Form:C1466.first:=Form:C1466.first-_sliceSizes
	Form:C1466.last:=Form:C1466.last-_sliceSizes
	
	//Display entities from index Form.first with a length of (Form.last - Form.first)
	Form:C1466.smallList:=Form:C1466.gamers.slice(Form:C1466.first; Form:C1466.last)
	
	
Else 
	//New value of Form.first is outside the entity selection
	//Display entities from 0 with a length of _sliceSizes
	Form:C1466.first:=0
	Form:C1466.last:=_sliceSizes
	
	//Display entities from index Form.first with a length of (Form.last - Form.first)
	Form:C1466.smallList:=Form:C1466.gamers.slice(Form:C1466.first; Form:C1466.last)
	
	//We are at the beginning of the entity selection, so Previous button is not available
	OBJECT SET ENABLED:C1123(*; "ViewPreviousButton"; False:C215)
	
End if 
