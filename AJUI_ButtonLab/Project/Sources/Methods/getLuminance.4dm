//%attributes = {}
  // getLuminance ( $color_l ) -> return
  //
  // $color_l : (longint) color
  // $luminance : (longint) (return) luminance 
  //
  // Return the luminance

#DECLARE($param1 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 04.11.19, 15:30:45
	  // ----------------------------------------------------
	  // Method: getLuminance
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $color_obj : Object
var $rgb_str : Text
var $color_l : Integer
var $rgb_col : Collection
$color_l:=$param1
$rgb_str:=SVG_Color_RGB_from_long ($color_l)

$color_obj:=New object()

$rgb_col:=New collection()
$rgb_str:=Replace string($rgb_str;"rgb(";"")
$rgb_str:=Replace string($rgb_str;")";"")
$rgb_col:=Split string($rgb_str;",")
$color_obj.R:=$rgb_col[0]
$color_obj.G:=$rgb_col[1]
$color_obj.B:=$rgb_col[2]

  // Luminance
$result:=calcLuminance ($color_obj.R;$color_obj.G;$color_obj.B)

