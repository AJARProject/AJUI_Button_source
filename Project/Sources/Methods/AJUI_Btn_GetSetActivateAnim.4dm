//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetActivateAnim ( {$animation} ) -> return
  //
  // $animation : (boolean) (optional) activate/inactivate
  // $animation : (boolean) (return) animation executed ?
  //
  // Getter and setter to activate/inactivate the FAB animation

#DECLARE($param1 : Boolean) -> $result : Boolean

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.01.20, 11:11:03
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetActivateAnim
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $animation : Boolean

If (Count parameters=0)
	$result:=This.btn.fab.animation
Else 
	$animation:=$param1
	This.btn.fab.animation:=$animation
End if 
