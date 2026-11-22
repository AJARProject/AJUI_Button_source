//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictureScale ( $state { ; $percent } ) -> return
  //
  // $state : (text) state
  // $percent : (longint) (optional) scale in percent
  // return : (longint) (return) current scale
  //
  // Getter and setter for the size of the picture, scale with the size of the button

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 12.08.19, 13:42:07
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPictureScale
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $state : Text
var $percent : Integer
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.picture.scale#Null)
		$result:=$current_obj.picture.scale
	Else 
		$result:=This.btn.picture.scale
	End if 
	
Else 
	$percent:=$param2
	If ($percent>=0) & ($percent<=100)
		$current_obj.picture.scale:=$percent
	End if 
End if 