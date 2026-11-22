//%attributes = {"invisible":true}
  // AJUI_Btn_animSetVisible ( $name ; $visible  ) -> return
  //
  // $name : (text) form object name
  // $visible : (boolean)  show/hide
  //
  // Used with a call form to show/hide the form object with the FAB animation

#DECLARE($param1 : Text; $param2 : Boolean)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.01.20, 11:36:40
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_animSetVisible
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $name : Text
var $visible : Boolean

$name:=$param1
$visible:=$param2

OBJECT SET VISIBLE(*;$name;$visible)