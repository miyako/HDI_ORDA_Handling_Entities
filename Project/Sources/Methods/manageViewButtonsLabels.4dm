//%attributes = {"invisible":true}

//Update the "View first" / "View Last" buttons labels


//The entity selection Form.red is not empty and the radio button "Red team" is checked
If ((Form:C1466.red.length>=1) & (r1=1))
	OBJECT SET ENABLED:C1123(*; "btnView@"; True:C214)
	
	OBJECT SET TITLE:C194(*; "btnViewFirst"; Localized string("BtnViewFirstRed"))
	OBJECT SET TITLE:C194(*; "btnViewLast"; Localized string("BtnViewLastRed"))
End if 


//The entity selection Form.blue is not empty and the radio button "Blue team" is checked
If ((Form:C1466.blue.length>=1) & (r2=1))
	OBJECT SET ENABLED:C1123(*; "btnView@"; True:C214)
	
	OBJECT SET TITLE:C194(*; "btnViewFirst"; Localized string("BtnViewFirstBlue"))
	OBJECT SET TITLE:C194(*; "btnViewLast"; Localized string("BtnViewLastBlue"))
End if 