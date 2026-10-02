//%attributes = {}

//Update the "View first" / "View Last" buttons labels


//The entity selection Form.red is not empty and the radio button "Red team" is checked
If ((Form:C1466.red.length>=1) & (r1=1))
	OBJECT SET ENABLED:C1123(*; "btnView@"; True:C214)
	
	OBJECT SET TITLE:C194(*; "btnViewFirst"; "View first in Red team")
	OBJECT SET TITLE:C194(*; "btnViewLast"; "View last in Red team")
End if 


//The entity selection Form.blue is not empty and the radio button "Blue team" is checked
If ((Form:C1466.blue.length>=1) & (r2=1))
	OBJECT SET ENABLED:C1123(*; "btnView@"; True:C214)
	
	OBJECT SET TITLE:C194(*; "btnViewFirst"; "View first in Blue team")
	OBJECT SET TITLE:C194(*; "btnViewLast"; "View last in Blue team")
End if 