//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictureWidth ( $state { ; $width } ) -> return
  //
  // $state : (text) button state
  // $width : (longint) (optional) picture width
  // return : (longint) (return) current picture width
  //
  // Getter and setter for the picture width of the button

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.07.19, 11:55:36
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPictureWidth
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



var $state : Text
var $width : Integer
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.picture.width#Null)
		$result:=$current_obj.picture.width
	Else 
		$result:=This.btn.picture.width
	End if 
	
Else 
	$width:=$param2
	If ($width>=0)
		$current_obj.picture.width:=$width
	Else 
		$current_obj.picture.width:=-1
	End if 
End if 

