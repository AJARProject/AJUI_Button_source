//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetBorderColor ( $state { ; $color } ) -> return
  //
  // $state : (text) button state
  // $color : (text) (optional) color
  // return : (text) (return) current border color
  //
  // Getter and setter for the border color of the button

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:43:33
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetBorderColor
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
	
	If ($current_obj.border.color#Null)
		$result:=$current_obj.border.color
	Else 
		$result:=This.btn.border.color
	End if 
	
Else 
	$color:=$param2
	
	If ($color#"")
		$current_obj.border.color:=$color
	Else 
		$current_obj.border.color:="none"
	End if 
	
	
End if 