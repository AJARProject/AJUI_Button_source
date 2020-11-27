//%attributes = {"invisible":true}
// AJUI_Btn_GetSetTextAlign ( $state { ; $padding } ) -> return
//
// $state : (text) button state
// $padding : (logint) (optional) padding of the button
// return : (longint) (return) current padding
//
// Getter and setter for the padding of a button

If (False:C215)
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



C_TEXT:C284($1;$state)
C_LONGINT:C283($0;$2;$padding)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.box.padding#Null:C1517)
		$0:=$current_obj.box.padding
	Else 
		$0:=This:C1470.btn.box.padding
	End if 
	
Else 
	$padding:=$2
	If ($padding>=0)
		$current_obj.box.padding:=$padding
	Else 
		ASSERT:C1129(False:C215;"Padding cannot be negative")
	End if 
End if 