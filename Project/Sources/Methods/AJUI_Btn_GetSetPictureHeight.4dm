//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictureHeight ( $state { ; $height } ) -> return
  //
  // $state : (text) button state
  // $height : (longint) (optional) picture height
  // return : (longint) (return) current picture height
  //
  // Getter and setter for the picture height of the button

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.07.19, 11:49:40
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPictureHeight
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
	
	If ($current_obj.picture.height#Null)
		$result:=$current_obj.picture.height
	Else 
		$result:=This.btn.picture.height
	End if 
	
Else 
	$height:=$param2
	If ($height>=0)
		$current_obj.picture.height:=$height
	Else 
		$current_obj.picture.height:=-1
	End if 
End if 

