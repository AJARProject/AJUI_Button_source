//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetStartAngleFab ( {  $angle } ) -> return
  //
  // $angle : (text) (optional) start angle
  // return : (text) (return) current start angle
  //
  // Getter and setter for the start angle of the FAB

#DECLARE($param1 : Integer) -> $result : Integer

If (False)
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

var $angle : Integer

If (Count parameters=0)
	$result:=This.btn.fab.startAngle
Else 
	$angle:=$param1
	If ($angle>=0) & ($angle<360)
		This.btn.fab.startAngle:=$angle
	End if 
End if 