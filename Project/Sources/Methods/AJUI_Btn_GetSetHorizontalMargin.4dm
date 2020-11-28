//%attributes = {"invisible":true}
// AJUI_Btn_GetSetHorizontalMargin ( $state { ; $margin } ) -> return
//
// $state : (text) button state
// $margin : (longint) (optional) margin horizontal
// return : (longint) (return) current margin horizontal
//
// Getter and setter for the text margin horizontal

If (False:C215)
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


C_TEXT:C284($1;$state)
C_LONGINT:C283($0;$2;$margin)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.text.horizontalMargin#Null:C1517)
		$0:=$current_obj.text.horizontalMargin
	Else 
		$0:=This:C1470.btn.text.horizontalMargin
	End if 
	
Else 
	$margin:=$2
	If ($margin>=0)
		$current_obj.text.horizontalMargin:=$margin
	End if 
End if 