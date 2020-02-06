//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetClockwiseFAB ( {  $clockwise } ) -> return
  //
  // $clockwise : (boolean) (optional) isClockwise
  // return : (boolean) (return) current isClockwise
  //
  // Getter and setter for the isClockwise display of the FAB

If (False:C215)
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

C_BOOLEAN:C305($0;$1;$clockwise)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.fab.clockwise
Else 
	$clockwise:=$1
	This:C1470.btn.fab.clockwise:=$clockwise
End if 