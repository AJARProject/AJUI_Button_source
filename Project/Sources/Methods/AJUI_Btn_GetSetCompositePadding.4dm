//%attributes = {"invisible":true}
// AJUI_Btn_GetSetCompositePadding ( $state { ; spaceBetween } ) -> return
//
// $state : (text) button state
// $spaceBetween : (longint) (optional) padding size
// return : (longint) (return) current padding
//
// Getter and setter for the padding between text and picture when linked option is activate

If (False:C215)
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


C_TEXT:C284($1;$state)
C_LONGINT:C283($0;$2;$spaceBetween)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.composite.spaceBetween#Null:C1517)
		$0:=$current_obj.composite.spaceBetween
	Else 
		$0:=This:C1470.btn.composite.spaceBetween
	End if 
	
Else 
	$spaceBetween:=$2
	If ($spaceBetween>=0)
		$current_obj.composite.spaceBetween:=$spaceBetween
	End if 
End if 
