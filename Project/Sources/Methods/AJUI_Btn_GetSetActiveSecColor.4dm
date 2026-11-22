//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetActiveSecColor ({$active}) -> return
  //
  // $active : (boolean) (optional) activate
  // return : (boolean) (return) activation state
  //
  // Getter and setter to activate the use of the second color with a composite button

#DECLARE($param1 : Boolean) -> $result : Boolean

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:20:09
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetActiveSecColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $active : Boolean

If (Count parameters=0)
	$result:=This.btn.composite.activeSecondColor
Else 
	$active:=$param1
	This.btn.composite.activeSecondColor:=$active
End if 