//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetBoxHeight ( $state { ; $height } ) -> return
  //
  // $state : (text) button state
  // $height : (longint) (optional) box height
  // return : (longint) (return) current box height
  //
  // Getter and setter for the box height of the button

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:07:40
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetBoxHeight
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $state : Text
var $height : Integer
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.box.height#Null)
		$result:=$current_obj.box.height
	Else 
		$result:=This.btn.box.height
	End if 
	
Else 
	$height:=$param2
	If ($height>=0)
		$current_obj.box.height:=$height
	Else 
		$current_obj.box.height:=-1
	End if 
End if 