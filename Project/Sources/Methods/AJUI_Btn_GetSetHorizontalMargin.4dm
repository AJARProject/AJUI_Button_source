//%attributes = {"invisible":true}
// AJUI_Btn_GetSetHorizontalMargin ( $state { ; $margin } ) -> return
//
// $state : (text) button state
// $margin : (longint) (optional) margin horizontal
// return : (longint) (return) current margin horizontal
//
// Getter and setter for the text margin horizontal

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 26.08.19, 11:36:23
	// ----------------------------------------------------
	// Method: AJUI_Btn_GetSethorizontalMargin
	// Description
	// 
	//
	// ----------------------------------------------------
End if 


var $state : Text
var $margin : Integer
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.text.horizontalMargin#Null)
		$result:=$current_obj.text.horizontalMargin
	Else 
		$result:=This.btn.text.horizontalMargin
	End if 
	
Else 
	$margin:=$param2
	If ($margin>=0)
		$current_obj.text.horizontalMargin:=$margin
	End if 
End if 