//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetFontColor ( $state { ; $color } ) -> return
  //
  // $state : (text) button state
  // $color : (text) (optional) color
  // return : (text) (return) current font color
  //
  // Getter and setter for the font color of the button

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:01:04
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetFontColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $state; $color : Text
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.text.fontColor#Null)
		$result:=$current_obj.text.fontColor
	Else 
		$result:=This.btn.text.fontColor
	End if 
	
Else 
	$color:=$param2
	If ($color#"")
		$current_obj.text.fontColor:=$color
	Else 
		$current_obj.text.fontColor:="none"
	End if 
End if 