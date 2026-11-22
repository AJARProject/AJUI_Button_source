//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictureOpacity ( $state { ; $percent } ) -> return
  //
  // $state : (text) state
  // $percent : (longint) (optional) picture opacity in percent
  // return : (longint) (return) current opacity
  //
  // Getter and setter for picture opacity (percent)

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 12.08.19, 13:41:27
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPictureOpacity
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
	
	If ($current_obj.picture.opacity#Null)
		$result:=$current_obj.picture.opacity
	Else 
		$result:=This.btn.picture.opacity
	End if 
	
Else 
	$percent:=$param2
	If ($percent>=0) & ($percent<=100)
		$current_obj.picture.opacity:=$percent
	End if 
End if 