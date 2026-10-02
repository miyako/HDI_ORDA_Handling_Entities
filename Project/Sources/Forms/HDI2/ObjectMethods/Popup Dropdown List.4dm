If (btnTrace)
	TRACE:C157
End if 

//Get a part of the entity selection Form.gamers (from index 0 with a length of _sliceSizes)
Form:C1466.smallList:=Form:C1466.gamers.slice(0; _sliceSizes)

//First index of the slice
Form:C1466.first:=0

//Last index of the slice +1
Form:C1466.last:=_sliceSizes


OBJECT SET ENABLED:C1123(*; "ViewPreviousButton"; True:C214)
OBJECT SET ENABLED:C1123(*; "ViewNextButton"; True:C214)
