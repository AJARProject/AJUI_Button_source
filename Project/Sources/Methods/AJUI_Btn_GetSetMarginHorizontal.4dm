//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetMarginHorizontal ( $state { ; $margin } ) -> return
  //
  // $state : (text) button state
  // $margin : (longint) (optional) margin horizontal
  // return : (longint) (return) current font size
  //
  // Getter and setter for the text margin horizontal

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 26.08.19, 11:36:23
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetMarginHorizontal
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
	
	If ($current_obj.text.marginHorizontal#Null:C1517)
		$0:=$current_obj.text.marginHorizontal
	Else 
		$0:=This:C1470.btn.text.marginHorizontal
	End if 
	
Else 
	$margin:=$2
	If ($margin>=0)
		$current_obj.text.marginHorizontal:=$margin
	End if 
End if 