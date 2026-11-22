//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetBoxWidth ( $state { ; $width } ) -> return
  //
  // $state : (text) button state
  // $width : (longint) (optional) box width
  // return : (longint) (return) current box width
  //
  // Getter and setter for the box width of the button

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:07:16
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetBoxWidth
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
	
	If ($current_obj.box.width#Null)
		$result:=$current_obj.box.width
	Else 
		$result:=This.btn.box.width
	End if 
	
Else 
	$width:=$param2
	If ($width>=0)
		$current_obj.box.width:=$width
	Else 
		$current_obj.box.width:=-1
	End if 
End if 

