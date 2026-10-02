
If (btnTrace)
	TRACE:C157
End if 


//Add the entity Form.selectedGamer to the entity selection Form.red
Form:C1466.red.add(Form:C1466.selectedGamer)


//Refresh entity selections in list boxes
Form:C1466.red:=Form:C1466.red
Form:C1466.gamers:=Form:C1466.gamers  // This launches the meta info expression of the list box listBoxGamers


//Disable "Add To" buttons
OBJECT SET ENABLED:C1123(*; "AddTo@"; False:C215)


//Update the "View first" / "View Last" buttons labels
manageViewButtonsLabels





