//%attributes = {"invisible":true}
// AJUI_Btn_GetSetCompositePadding ( $state { ; spaceBetween } ) -> return
//
// $state : (text) button state
// $spaceBetween : (longint) (optional) padding size
// return : (longint) (return) current padding
//
// Getter and setter for the padding between text and picture when linked option is activate

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 19.07.19, 10:48:42
	// ----------------------------------------------------
	// Method: AJUI_Btn_GetSetCompositePadding
	// Description
	// 
	//
	// ----------------------------------------------------
End if 


var $state : Text
var $spaceBetween : Integer
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.composite.spaceBetween#Null)
		$result:=$current_obj.composite.spaceBetween
	Else 
		$result:=This.btn.composite.spaceBetween
	End if 
	
Else 
	$spaceBetween:=$param2
	If ($spaceBetween>=0)
		$current_obj.composite.spaceBetween:=$spaceBetween
	End if 
End if 
