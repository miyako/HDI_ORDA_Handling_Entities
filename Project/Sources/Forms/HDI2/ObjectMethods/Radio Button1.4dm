If (btnTrace)
	TRACE:C157
End if 



OBJECT SET ENABLED:C1123(*; "btnView@"; True:C214)

//Update the "View first" / "View last" buttons titles according to the radio button checked
OBJECT SET TITLE:C194(*; "btnViewFirst"; "View first in blue team")
OBJECT SET TITLE:C194(*; "btnViewLast"; "View last in blue team")

