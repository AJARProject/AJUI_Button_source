//%attributes = {"invisible":true}
// AJUI_Btn_GetSetTextAlign ( $state { ; $textAlign } ) -> return
//
// $state : (text) button state
// $textAlign : (text) (optional) text align (left, center or right)
// return : (text) (return) current font size
//
// Getter and setter for the text align of a button

If (False:C215)
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



C_TEXT:C284($1;$state)
C_TEXT:C284($0;$2;$textAlign)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.text.align#Null:C1517)
		$0:=$current_obj.text.align
	Else 
		$0:=This:C1470.btn.text.align
	End if 
	
Else 
	$textAlign:=$2
	If ($textAlign="left") | ($textAlign="center") | ($textAlign="right")
		$current_obj.text.align:=$textAlign
	Else 
		ASSERT:C1129(False:C215;"textAlign property must be \"left\", \"center\" or \"right\"")
	End if 
End if 