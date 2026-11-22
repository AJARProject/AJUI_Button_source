//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetClockwiseFAB ( {  $clockwise } ) -> return
  //
  // $clockwise : (boolean) (optional) isClockwise
  // return : (boolean) (return) current isClockwise
  //
  // Getter and setter for the isClockwise display of the FAB

#DECLARE($param1 : Boolean) -> $result : Boolean

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.12.19, 10:15:42
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetClockwiseFAB
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $clockwise : Boolean

If (Count parameters=0)
	$result:=This.btn.fab.clockwise
Else 
	$clockwise:=$param1
	This.btn.fab.clockwise:=$clockwise
End if 