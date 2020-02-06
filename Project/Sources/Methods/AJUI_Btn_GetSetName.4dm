//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetName ({ $name }) -> return
  //
  // $name : (text) (optional) name 
  // return : (text) (return) value
  //
  // Getter and setter for name of the picture form object who will receive the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:14:58
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetName
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($0;$1;$name)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.global.name
Else 
	$name:=$1
	If ($name#"")
		This:C1470.btn.global.name:=$name
	End if 
End if 
