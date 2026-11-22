//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetRadiusFab ( {  $radius } ) -> return
  //
  // $radius : (longint) (optional) radius
  // return : (longint) (return) current radius
  //
  // Getter and setter for the radius of the FAB

#DECLARE($param1 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.12.19, 10:07:46
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetRadiusFab
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $radius : Integer

If (Count parameters=0)
	$result:=This.btn.fab.radius
Else 
	$radius:=$param1
	If ($radius>0)
		This.btn.fab.radius:=$radius
	End if 
End if 