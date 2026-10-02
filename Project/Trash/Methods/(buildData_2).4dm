//%attributes = {"invisible":true}
FakeData_ArraysInit

C_LONGINT:C283($nbToCreate)
C_OBJECT:C1216($templateGamer)

$nbToCreate:=12  // We create 12 pupils

$templateGamer:=New object:C1471
$templateGamer.firstName:="firstname"
$templateGamer.lastName:="lastname"

ds:C1482.Gamer.all().drop()


For ($i; 1; $nbToCreate)
	
	$gamer:=ds:C1482.Gamer.new()
	
	FakeData_FillObjectTemplate($templateGamer; $gamer)
	
	If ($i<4)
		$gamer.level:=1
		$gamer.yearsOfExperience:=1
		
	End if 
	If (($i>=4) & ($i<7))
		$gamer.level:=2
		$gamer.yearsOfExperience:=3
		
	End if 
	If (($i>=7) & ($i<=9))
		$gamer.level:=3
		$gamer.yearsOfExperience:=5
		
	End if 
	If (($i>=10) & ($i<=12))
		$gamer.level:=4
		$gamer.yearsOfExperience:=7
		
	End if 
	
	$saveStatus:=$gamer.save()
	
End for 

FakeData_ArraysDeinit