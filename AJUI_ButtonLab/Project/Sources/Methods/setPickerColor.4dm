//%attributes = {}
  // setPickerColor ( $value ) -> return
  //
  // $1 : (text)  color in the listbox
  // $0 : (longint) (return) picker color default value
  //
  // Used to set the default value of the picker color

#DECLARE($param1 : Text) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 22.01.20, 09:04:29
	  // ----------------------------------------------------
	  // Method: setPickerColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $value : Text
var $opacity_pos : Integer

$value:=$param1

If ($value="") | ($value="none")
	$result:=16777215
Else 
	If (Position("#";$value;1)=1)
		$result:=hexa2dec ($value)
	Else 
		If ($value="@:@")  //remove opacity to avoid beep from the SVG method
			$opacity_pos:=Position(":";$value)
			$value:=Substring($value;1;$opacity_pos-1)
		End if 
		$result:=SVG_Get_named_color_value ($value)
	End if 
End if 