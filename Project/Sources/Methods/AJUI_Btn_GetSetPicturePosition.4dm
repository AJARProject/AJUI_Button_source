//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPicturePosition ( $state { ; $position } ) -> return
  //
  // $state : (text) button state
  // $position : (text) (optional) position
  // return : (text) (return) current picture postion
  //
  // Getter and setter for the picture position in a composite button

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:55:46
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPicturePosition
	  // Description
	  // posistions : top, bottom, left, right
	  //
	  // ----------------------------------------------------
End if 


var $state; $position : Text
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.composite.picturePosition#Null)
		$result:=$current_obj.composite.picturePosition
	Else 
		$result:=This.btn.composite.picturePosition
	End if 
	
Else 
	$position:=$param2
	If ($position#"")
		$current_obj.composite.picturePosition:=$position
	End if 
End if 
