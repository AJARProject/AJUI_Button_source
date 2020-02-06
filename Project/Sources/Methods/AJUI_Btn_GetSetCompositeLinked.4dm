//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetCompositeLinked ({ $linked } ) -> return
  //
  // $linked : (boolean) (optional) linked composite
  // return : (boolean) (return) current composite linked option
  //
  // Getter and setter to switch the linked option for the composite button

If (False:C215)
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


C_BOOLEAN:C305($0;$1;$linked)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.composite.linked
Else 
	$linked:=$1
	This:C1470.btn.composite.linked:=$linked
End if 