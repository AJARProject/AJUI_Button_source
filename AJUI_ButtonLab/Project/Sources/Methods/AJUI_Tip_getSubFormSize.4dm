//%attributes = {"shared":true}
  // AJUI_Tip_getSubFormSize ( formName ; width_ptr ; height_ptr ) -> return
  //
  // formName : (text) Form name
  // width_ptr : (ptr) form width
  // height_ptr : (ptr) form height
  // return : (text) (return) return value
  //
  // short_description

#DECLARE($param1 : Text; $param2 : Pointer; $param3 : Pointer)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 14.03.19, 09:39:05
	  // ----------------------------------------------------
	  // Method: AJUI_Tip_getSubFormSize
	  // Description
	  // This method returns the width and height of the form 
	  //
	  // ----------------------------------------------------
End if 

var $formName_t : Text
var $widthSF_ptr; $heightSF_ptr : Pointer
$formName_t:=$param1
$widthSF_ptr:=$param2
$heightSF_ptr:=$param3

FORM GET PROPERTIES($formName_t;$widthSF_ptr->;$heightSF_ptr->)