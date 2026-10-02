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

//The current entity $gamer being displayed in the list box is the same as the one edited on the detail panel
If (Form:C1466.gamer.getKey()=$gamer.getKey())
	$result:=Form:C1466.boldDecorate  //Put in bold the line in the list box (RedGamers / Form.red or BlueGamers / Form.blue)
End if 
