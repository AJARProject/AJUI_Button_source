//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetType ( $state { ; $type } ) -> return
  //
  // $state : (text) button state
  // $type : (text) (optional) type
  // return : (text) (return) current type
  //
  // Getter and setter for the type of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.07.19, 11:59:21
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetType
	  // Description
	  // Types : rectangle, circle
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($0;$1;$type)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.global.type
Else 
	$type:=$1
	If ($type#"")
		This:C1470.btn.global.type:=$type
	End if 
End if 

