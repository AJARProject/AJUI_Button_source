//%attributes = {}
  // setArrayColor ( $level ; $line ) -> return
  //
  // $1 : (text) current level
  // $2 : (logint) listbox line
  //
  // Set the background color array for the values of the properties in the current line

#DECLARE($param1 : Text; $param2 : Integer)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 23.10.19, 10:16:06
	  // ----------------------------------------------------
	  // Method: setArrayColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $color_t : Text
var $line; $color_l; $opacity_pos : Integer

$color_t:=$param1
$line:=$param2

If ($color_t="") | ($color_t="none")
	$color_l:=lk inherited
Else 
	  // opacity filtering
	If ($color_t="@:@")  //remove opacity to avoid beep from the SVG method
		$opacity_pos:=Position(":";$color_t)
		$color_t:=Substring($color_t;1;$opacity_pos-1)
	End if 
	
	If (Position("0x";$color_t;1)=1)
		$color_l:=hexa2dec ($color_t)
	Else 
		If (Position("#";$color_t;1)=1)
			$color_l:=hexa2dec ($color_t)
		Else 
			$color_l:=SVG_Get_named_color_value ($color_t)
		End if 
	End if 
End if 

bgColorValue{$line}:=$color_l


If (getLuminance ($color_l)>150)
	bgFontColorValue{$line}:=0
	
Else 
	bgFontColorValue{$line}:=12632256
End if 
