//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetCompositeLinked ({ $linked } ) -> return
  //
  // $linked : (boolean) (optional) linked composite
  // return : (boolean) (return) current composite linked option
  //
  // Getter and setter to switch the linked option for the composite button

#DECLARE($param1 : Boolean) -> $result : Boolean

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:46:11
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetCompositeLinked
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $linked : Boolean

If (Count parameters=0)
	$result:=This.btn.composite.linked
Else 
	$linked:=$param1
	This.btn.composite.linked:=$linked
End if 