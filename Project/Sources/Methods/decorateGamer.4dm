//%attributes = {"invisible":true}
//****************************************//
// Meta attribute
//
// fill: CSS color
// stroke: CSS color
// fontStyle:  "italic" 
// fontWeight: "bold" 
// textDecoration:  "underline"
// unselectable:  True or False 
// disabled:  True or False 
//****************************************//

#DECLARE($gamer : Object)->$result : Object

If (btnTrace)
	TRACE:C157
End if 


Case of 
		
		//The current entity $gamer being displayed in the list box belongs to the entity selection Form.red
	: (Form:C1466.red.contains($gamer))
		$result:=Form:C1466.redDecorate  //Fill in red the line in the list box
		
		
		//The current entity $gamer being displayed in the list box belongs to the entity selection Form.blue
	: (Form:C1466.blue.contains($gamer))
		$result:=Form:C1466.blueDecorate  //Fill in blue the line in the list box
		
End case 

