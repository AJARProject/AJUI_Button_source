//%attributes = {"invisible":true}
// AJUI_Btn_GetSetTextAlign ( $state { ; $padding } ) -> return
//
// $state : (text) button state
// $padding : (logint) (optional) padding of the button
// return : (longint) (return) current padding
//
// Getter and setter for the padding of a button

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	// ----------------------------------------------------
	// User name (OS): gabriel inzirillo
	// Date and time: 27.11.20, 10:55:34
	// ----------------------------------------------------
	// Method: AJUI_Btn_GetSetTextAlign
	// 
	//
	// Copyrights (C) AJAR SA - 2020
	// ----------------------------------------------------
End if 



var $state : Text
var $padding : Integer
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.box.padding#Null)
		$result:=$current_obj.box.padding
	Else 
		$result:=This.btn.box.padding
	End if 
	
Else 
	$padding:=$param2
	If ($padding>=0)
		$current_obj.box.padding:=$padding
	Else 
		ASSERT(False;"Padding cannot be negative")
	End if 
End if 