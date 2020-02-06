//%attributes = {"invisible":true}
  // AJUI_Btn_animSetCoordinates ( $coordinates_obj ) 
  //
  // $coordinates_obj : (object) new form object coordinates
  //
  // Used with a call form to move the form object with the FAB animation

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.01.20, 10:18:52
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_animSetCoordinates
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($1;$coordinates_obj)

$coordinates_obj:=$1

OBJECT SET COORDINATES:C1248(*;$coordinates_obj.target;$coordinates_obj.left;$coordinates_obj.top;$coordinates_obj.right;$coordinates_obj.bottom)