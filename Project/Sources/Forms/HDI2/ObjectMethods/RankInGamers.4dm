
If (btnTrace)
	TRACE:C157
End if 


//Get the rank of the entity Form.gamer in Form.gamers entity selection
Form:C1466.rankInGamers:=Form:C1466.gamer.indexOf(Form:C1466.gamers)+1


//Select the gamer in listBoxGamers / Form.gamers
LISTBOX SELECT ROW:C912(*; "listBoxGamers"; Form:C1466.rankInGamers)
OBJECT SET SCROLL POSITION:C906(*; "listBoxGamers"; Form:C1466.rankInGamers)






