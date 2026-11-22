//%attributes = {"invisible":true}
  // AJUI_Btn_enable ( $enable ) 
  //
  // $enable : (boolean) description
  //
  // Method to set the disable state. Will relaunch the draw button

#DECLARE($param1 : Boolean)

If (False)
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

var $enable : Boolean

$enable:=$param1

OBJECT SET ENABLED(*;This.btn.global.name;$enable)

This.Draw()
