//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetColorToReplace ( { $color } ) -> return
  //
  // $state : (text) button state
  // $color : (text) (optional) color
  // return : (text) (return) current old color
  //
  // Getter and setter to specify the old color of a SVG, it will be replaced by the new color

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 05.08.19, 13:44:14
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetColorToReplace
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
	
	If ($current_obj.picture.colorToReplace#Null)
		$result:=$current_obj.picture.colorToReplace
	Else 
		$result:=This.btn.picture.colorToReplace
	End if 
	
Else 
	$color:=$param2
	$current_obj.picture.colorToReplace:=$color
End if 