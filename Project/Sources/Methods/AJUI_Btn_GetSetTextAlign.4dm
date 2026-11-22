//%attributes = {"invisible":true}
// AJUI_Btn_GetSetTextAlign ( $state { ; $textAlign } ) -> return
//
// $state : (text) button state
// $textAlign : (text) (optional) text align (left, center or right)
// return : (text) (return) current font size
//
// Getter and setter for the text align of a button

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	// ----------------------------------------------------
	// User name (OS): gabriel inzirillo
	// Date and time: 27.11.20, 10:40:03
	// ----------------------------------------------------
	// Method: AJUI_Btn_GetSetTextAlign
	// 
	//
	// Copyrights (C) AJAR SA - 2020
	// ----------------------------------------------------
End if 



var $state; $textAlign : Text
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.text.align#Null)
		$result:=$current_obj.text.align
	Else 
		$result:=This.btn.text.align
	End if 
	
Else 
	$textAlign:=$param2
	If ($textAlign="left") | ($textAlign="center") | ($textAlign="right")
		$current_obj.text.align:=$textAlign
	Else 
		ASSERT(False;"textAlign property must be \"left\", \"center\" or \"right\"")
	End if 
End if 