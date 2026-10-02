//%attributes = {"invisible":true}


//Change color of the labels "First name", "Last name", ...- Set RED
OBJECT SET RGB COLORS:C628(*; "Lbl_@"; getRefColor("refLabelRed"); Background color none:K23:10)

//Able navigation buttons
OBJECT SET ENABLED:C1123(*; "Nav@"; True:C214)
OBJECT SET ENABLED:C1123(*; "RankIn@"; True:C214)