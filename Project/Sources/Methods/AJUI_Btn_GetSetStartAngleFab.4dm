//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetStartAngleFab ( {  $angle } ) -> return
  //
  // $angle : (text) (optional) start angle
  // return : (text) (return) current start angle
  //
  // Getter and setter for the start angle of the FAB

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.12.19, 10:10:07
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetStartAngleFab
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$angle)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.fab.startAngle
Else 
	$angle:=$1
	If ($angle>=0) & ($angle<360)
		This:C1470.btn.fab.startAngle:=$angle
	End if 
End if 