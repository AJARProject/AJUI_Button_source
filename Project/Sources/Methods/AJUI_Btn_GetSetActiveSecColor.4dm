//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetActiveSecColor ({$active}) -> return
  //
  // $active : (boolean) (optional) activate
  // return : (boolean) (return) activation state
  //
  // Getter and setter to activate the use of the second color with a composite button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:20:09
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetActiveSecColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_BOOLEAN:C305($0;$1;$active)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.composite.activeSecondColor
Else 
	$active:=$1
	This:C1470.btn.composite.activeSecondColor:=$active
End if 