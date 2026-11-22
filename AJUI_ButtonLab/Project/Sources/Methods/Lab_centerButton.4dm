//%attributes = {}
  // Lab_centerButton ( ) 
  //
  //
  //Center vertically and horizontally the button with the back box

var $i; $width; $height; $box_width; $box_height; $new_left; $new_top; $new_right; $new_bottom : Integer
var $left; $top; $right; $bottom; $box_left; $box_top; $box_right; $box_bottom : Real
If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 26.11.19, 09:18:22
	  // ----------------------------------------------------
	  // Method: Lab_centerButton
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 




For ($i;1;6)
	
	OBJECT GET COORDINATES(*;"btn"+String($i);$left;$top;$right;$bottom)
	$width:=$right-$left
	$height:=$bottom-$top
	OBJECT GET COORDINATES(*;"bgz_bgColor"+String($i);$box_left;$box_top;$box_right;$box_bottom)
	$box_width:=$box_right-$box_left
	$box_height:=$box_bottom-$box_top
	$new_left:=$box_left+(($box_width-$width)/2)
	$new_top:=$box_top+(($box_height-$height)/2)
	$new_right:=$new_left+$width
	$new_bottom:=$new_top+$height
	OBJECT SET COORDINATES(*;"btn"+String($i);$new_left;$new_top;$new_right;$new_bottom)
	
End for 