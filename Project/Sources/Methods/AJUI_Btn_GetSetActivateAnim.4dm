//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetActivateAnim ( $animation ) -> return
  //
  // $animation : (boolean) activate/inactivate
  // $animation : (boolean) (return) animation executed ?
  //
  // Getter and setter to activate/inactivate the FAB animation

If (False:C215)
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

C_BOOLEAN:C305($0;$1;$animation)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.fab.animation
Else 
	$animation:=$1
	This:C1470.btn.fab.animation:=$animation
End if 
