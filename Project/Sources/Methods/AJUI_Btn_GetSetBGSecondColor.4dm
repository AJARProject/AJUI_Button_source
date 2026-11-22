//%attributes = {"invisible":true}
// AJUI_Btn_GetSetBGSecondColor ( $state { ; param2 } ) -> return
//
// $state : (text) button state
// $color : (text) (optional) color
// return : (text) (return) current BG secondary color
//
// Getter and setter for the background secondary color of the button

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 19.07.19, 10:42:26
	// ----------------------------------------------------
	// Method: AJUI_Btn_GetSetBGSecondColor
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
	
	If ($current_obj.composite.backgroundSecondaryColor#Null)
		$result:=$current_obj.composite.backgroundSecondaryColor
	Else 
		$result:=This.btn.composite.backgroundSecondaryColor
	End if 
	
Else 
	$color:=$param2
	
	If ($color#"")
		$current_obj.composite.backgroundSecondaryColor:=$color
	Else 
		$current_obj.composite.backgroundSecondaryColor:="none"
	End if 
	
End if 