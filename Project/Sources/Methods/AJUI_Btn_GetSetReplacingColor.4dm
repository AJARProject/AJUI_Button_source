//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetReplacingColor ( $state { ; $color } ) -> return
  //
  // $state : (text) button state
  // $color : (text) (optional) new color
  // return : (text) (return) current new color
  //
  // Getter and setter for the new Color to add in SVG instead of the old color

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 05.08.19, 13:44:26
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetReplacingColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $state; $color : Text
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.picture.replacingColor#Null)
		$result:=$current_obj.picture.replacingColor
	Else 
		$result:=This.btn.picture.replacingColor
	End if 
	
Else 
	$color:=$param2
	$current_obj.picture.replacingColor:=$color
End if 