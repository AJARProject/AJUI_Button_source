//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetFontName ( $state { ; $fontName } ) -> return
  //
  // $state : (text) button state
  // $fontName : (text) (optional) font name
  // return : (text) (return) current font name
  //
  // Getter and setter for the font name of the button

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:01:45
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetFontName
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $state; $fontName : Text
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.text.fontName#Null)
		$result:=$current_obj.text.fontName
	Else 
		$result:=This.btn.text.fontName
	End if 
	
Else 
	$fontName:=$param2
	$current_obj.text.fontName:=$fontName
End if 