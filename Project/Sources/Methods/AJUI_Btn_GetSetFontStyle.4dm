//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetFontStyle ( $state { ; $style } ) -> return
  //
  // $state : (text) button state
  // $style : (text) (optional) font style
  // return : (text) (return) current font style
  //
  // Getter and setter for the font style of the button


#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:04:24
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetFontStyle
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $state; $style : Text
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.text.fontStyle#Null)
		$result:=$current_obj.text.fontStyle
	Else 
		$result:=This.btn.text.fontStyle
	End if 
	
Else 
	$style:=$param2
	$current_obj.text.fontStyle:=$style
End if 