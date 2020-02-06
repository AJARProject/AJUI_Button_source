//%attributes = {"invisible":true}
  // AJUI_Btn_enable ( $enable ) 
  //
  // $enable : (boolean) description
  //
  // Method to set the disable state. Will relaunch the draw button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 25.07.19, 10:08:15
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_enable
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_BOOLEAN:C305($1;$enable)

$enable:=$1

OBJECT SET ENABLED:C1123(*;This:C1470.btn.global.name;$enable)

This:C1470.Draw()
