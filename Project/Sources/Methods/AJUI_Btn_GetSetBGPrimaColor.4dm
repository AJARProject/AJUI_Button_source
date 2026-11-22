//%attributes = {"invisible":true}
// AJUI_Btn_GetSetBGPrimaColor ( $state { ; param2 } ) -> return
//
// $state : (text) button state
// $color : (text) (optional) color
// return : (text) (return) current BG primary color
//
// Getter and setter for the background color of the button

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 19.07.19, 10:40:27
	// ----------------------------------------------------
	// Method: AJUI_Btn_GetSetBGPrimaColor
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
	
	If ($current_obj.box.backgroundColor#Null)
		$result:=$current_obj.box.backgroundColor
	Else 
		$result:=This.btn.box.backgroundColor
	End if 
	
Else 
	$color:=$param2
	
	If ($color#"")
		$current_obj.box.backgroundColor:=$color
	Else 
		$current_obj.box.backgroundColor:="none"
	End if 
	
End if 