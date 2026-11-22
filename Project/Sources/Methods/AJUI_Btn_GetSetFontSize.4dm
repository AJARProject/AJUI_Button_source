//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetFontSize ( $state { ; $size } ) -> return
  //
  // $state : (text) button state
  // $size : (longint) (optional) font size
  // return : (longint) (return) current font size
  //
  // Getter and setter for the font size of the button

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:02:51
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetFontSize
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



var $state : Text
var $size : Integer
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.text.fontSize#Null)
		$result:=$current_obj.text.fontSize
	Else 
		$result:=This.btn.text.fontSize
	End if 
	
Else 
	$size:=$param2
	If ($size>0)
		$current_obj.text.fontSize:=$size
	End if 
End if 