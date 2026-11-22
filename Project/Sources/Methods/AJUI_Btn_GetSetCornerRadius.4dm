//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetCornerRadius ( $state { ; $radius } ) -> return
  //
  // $state : (text) button state
  // $radius : (longint) (optional) radius size
  // return : (longint) (return) current radius size
  //
  // Getter and setter for the radius size of the button

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:58:25
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetCornerRadius
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $state : Text
var $radius : Integer
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.box.cornerRadius#Null)
		$result:=$current_obj.box.cornerRadius
	Else 
		$result:=This.btn.box.cornerRadius
	End if 
	
Else 
	$radius:=$param2
	If ($radius>=0)
		$current_obj.box.cornerRadius:=$radius
	End if 
End if 