//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetLabel ( $state { ; $label } ) -> return
  //
  // $state : (text) button state
  // $label : (text) (optional) label
  // return : (text) (return) current label
  //
  // Getter and setter for the text area label of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:13:21
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetLabel
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$state)
C_TEXT:C284($0;$2;$label)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.text.label#Null:C1517)
		$0:=$current_obj.text.label
	Else 
		$0:=This:C1470.btn.text.label
	End if 
	
Else 
	$label:=$2
	$current_obj.text.label:=$label
End if 