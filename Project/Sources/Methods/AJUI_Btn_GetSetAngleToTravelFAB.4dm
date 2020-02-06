//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetAngleToTravelFAB ( {$angle } ) -> return
  //
  // $angle : (longint) (optional) angle to travel
  // return : (longint) (return) current angle to travel
  //
  // Getter and setter for the anglet to travel (FAB)

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.12.19, 10:13:03
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetAngleToTravelFAB
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$angle)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.fab.angleToTravel
Else 
	$angle:=$1
	If ($angle>=0) & ($angle<=360)
		This:C1470.btn.fab.angleToTravel:=$angle
	End if 
End if 
