//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictureRatio ( $state { ; $ratio } ) -> return
  //
  // $state : (text) state
  // $ratio : (real) (optional) ratio to resize picture
  // return : (real) (return) current ratio
  //
  // Getter and setter for the size of the picture with a ratio

#DECLARE($param1 : Text; $param2 : Real) -> $result : Real

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 12.08.19, 13:41:48
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPictureRatio
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $state : Text
var $ratio : Real
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.picture.ratio#Null)
		$result:=$current_obj.picture.ratio
	Else 
		$result:=This.btn.picture.ratio
	End if 
	
Else 
	$ratio:=$param2
	If ($ratio>=0)
		$current_obj.picture.ratio:=$ratio
	End if 
End if 