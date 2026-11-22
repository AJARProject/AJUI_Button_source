//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetBorderSize ( $state { ; $size } ) -> return
  //
  // $state : (text) button state
  // $size : (longint) (optional) size
  // return : (longint) (return) current border size
  //
  // Getter and setter for the border size of the button

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:45:08
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetBorderSize
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $state : Text
var $size : Integer
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.border.size#Null)
		$result:=$current_obj.border.size
	Else 
		$result:=This.btn.border.size
	End if 
	
Else 
	$size:=$param2
	If ($size>=0)
		$current_obj.border.size:=$size
	End if 
End if 