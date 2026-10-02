//%attributes = {}
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

C_OBJECT:C1216($gamer; $0; $1; $result)

If (btnTrace)
	TRACE:C157
End if 


$gamer:=$1

Case of 
		
		//The current entity $gamer being displayed in the list box belongs to the entity selection Form.red
	: (Form:C1466.red.contains($gamer))
		$result:=Form:C1466.redDecorate  //Fill in red the line in the list box
		
		
		//The current entity $gamer being displayed in the list box belongs to the entity selection Form.blue
	: (Form:C1466.blue.contains($gamer))
		$result:=Form:C1466.blueDecorate  //Fill in blue the line in the list box
		
End case 


$0:=$result

