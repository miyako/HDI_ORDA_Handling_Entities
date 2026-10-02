
If (btnTrace)
	TRACE:C157
End if 


If ((Form:C1466.rank>12) | (Form:C1466.rank<=0))
	ALERT:C41("Enter a rank between 1 and 12")
Else 
	
	//Load the entity according to its rank in the entity selection Form.gamers
	Form:C1466.gamer:=Form:C1466.gamers[Form:C1466.rank-1]
End if 





