//%attributes = {"invisible":true}
#DECLARE($object : Text)->$rgb : Integer

//reads the fill color of a hidden reference rectangle, as resolved by the CSS for the current color scheme
var $fg; $bg : Integer
OBJECT GET RGB COLORS(*; $object; $fg; $bg)
$rgb:=$bg
