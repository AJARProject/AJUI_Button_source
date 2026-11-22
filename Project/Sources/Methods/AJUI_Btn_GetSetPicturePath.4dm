//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPicturePath ( $state { ; $path } ) -> return
  //
  // $state : (text) button state
  // $path : (text) (optional) picture path
  // return : (text) (return) current picture path
  //
  // Getter and setter for the picture path

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.07.19, 11:51:23
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPicturePath
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



var $state; $path : Text
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	If ($current_obj.picture.path#Null)
		$result:=$current_obj.picture.path
	Else 
		$result:=This.btn.picture.path
	End if 
Else 
	$path:=$param2
	$current_obj.picture.path:=$path
End if 