//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetAngleToTravelFAB ( {$angle } ) -> return
  //
  // $angle : (longint) (optional) angle to travel
  // return : (longint) (return) current angle to travel
  //
  // Getter and setter for the anglet to travel (FAB)

#DECLARE($param1 : Integer) -> $result : Integer

If (False)
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

var $angle : Integer

If (Count parameters=0)
	$result:=This.btn.fab.angleToTravel
Else 
	$angle:=$param1
	If ($angle>=0) & ($angle<=360)
		This.btn.fab.angleToTravel:=$angle
	End if 
End if 
