//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetLabel ( $state { ; $label } ) -> return
  //
  // $state : (text) button state
  // $label : (text) (optional) label
  // return : (text) (return) current label
  //
  // Getter and setter for the text area label of the button

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
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


var $state; $label : Text
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.text.label#Null)
		$result:=$current_obj.text.label
	Else 
		$result:=This.btn.text.label
	End if 
	
Else 
	$label:=$param2
	$current_obj.text.label:=$label
End if 