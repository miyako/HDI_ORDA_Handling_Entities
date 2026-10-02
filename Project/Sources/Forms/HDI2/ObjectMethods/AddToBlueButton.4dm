
If (btnTrace)
	TRACE:C157
End if 


//Add the entity Form.selectedGamer to the entity selection Form.blue
Form:C1466.blue.add(Form:C1466.selectedGamer)


//Refresh entity selections
Form:C1466.blue:=Form:C1466.blue
Form:C1466.gamers:=Form:C1466.gamers  // This launches the meta info expression of the list box listBoxGamers


//Disable "Add to" buttons
OBJECT SET ENABLED:C1123(*; "AddTo@"; False:C215)


//Update the "View first" / "View Last" buttons labels
manageViewButtonsLabels

