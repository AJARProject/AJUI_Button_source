//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetName ({ $name }) -> return
  //
  // $name : (text) (optional) name 
  // return : (text) (return) value
  //
  // Getter and setter for name of the picture form object who will receive the button

#DECLARE($param1 : Text) -> $result : Text

If (False)
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


var $name : Text

If (Count parameters=0)
	$result:=This.btn.global.name
Else 
	$name:=$param1
	If ($name#"")
		This.btn.global.name:=$name
	End if 
End if 
