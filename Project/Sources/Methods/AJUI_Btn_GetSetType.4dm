//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetType ( $state { ; $type } ) -> return
  //
  // $type : (text) (optional) type
  // return : (text) (return) current type
  //
  // Getter and setter for the type of the button

#DECLARE($param1 : Text) -> $result : Text

If (False)
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


var $type : Text

If (Count parameters=0)
	$result:=This.btn.global.type
Else 
	$type:=$param1
	If ($type#"")
		This.btn.global.type:=$type
	End if 
End if 

