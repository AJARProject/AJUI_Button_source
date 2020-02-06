//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetRadiusFab ( {  $radius } ) -> return
  //
  // $radius : (longint) (optional) radius
  // return : (longint) (return) current radius
  //
  // Getter and setter for the radius of the FAB

If (False:C215)
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

C_LONGINT:C283($0;$1;$radius)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.fab.radius
Else 
	$radius:=$1
	If ($radius>0)
		This:C1470.btn.fab.radius:=$radius
	End if 
End if 