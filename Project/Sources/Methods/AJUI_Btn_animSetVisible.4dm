//%attributes = {"invisible":true}
  // AJUI_Btn_animSetVisible ( $name ; $visible  ) -> return
  //
  // $name : (text) form object name
  // $visible : (boolean)  show/hide
  //
  // Used with a call form to show/hide the form object with the FAB animation

If (False:C215)
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

C_TEXT:C284($1;$name)
C_BOOLEAN:C305($2;$visible)

$name:=$1
$visible:=$2

OBJECT SET VISIBLE:C603(*;$name;$visible)