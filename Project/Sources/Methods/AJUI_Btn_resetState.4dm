//%attributes = {"invisible":true}
  // AJUI_Btn_resetState ( $state ) 
  //
  // $state : (text) button state
  //
  // Clean/Reset state exceptions

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 14:03:37
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_resetState
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$state)

$state:=$1


Case of 
	: ($state="hover")
		OB REMOVE:C1226(This:C1470.btn;"hover")
		
		If (This:C1470.btn.hover=Null:C1517)
			This:C1470.btn.hover:=New object:C1471
			This:C1470.btn.hover.box:=New object:C1471
			This:C1470.btn.hover.border:=New object:C1471
			This:C1470.btn.hover.text:=New object:C1471
			This:C1470.btn.hover.picture:=New object:C1471
			This:C1470.btn.hover.composite:=New object:C1471
		End if 
		
	: ($state="active")
		OB REMOVE:C1226(This:C1470.btn;"active")
		
		If (This:C1470.btn.activ=Null:C1517)
			This:C1470.btn.active:=New object:C1471
			This:C1470.btn.active.box:=New object:C1471
			This:C1470.btn.active.border:=New object:C1471
			This:C1470.btn.active.text:=New object:C1471
			This:C1470.btn.active.picture:=New object:C1471
			This:C1470.btn.active.composite:=New object:C1471
		End if 
		
	: ($state="disable")
		OB REMOVE:C1226(This:C1470.btn;"disable")
		
		If (This:C1470.btn.disable=Null:C1517)
			This:C1470.btn.disable:=New object:C1471
			This:C1470.btn.disable.box:=New object:C1471
			This:C1470.btn.disable.border:=New object:C1471
			This:C1470.btn.disable.text:=New object:C1471
			This:C1470.btn.disable.picture:=New object:C1471
			This:C1470.btn.disable.composite:=New object:C1471
		End if 
		
	: ($state="focus")
		OB REMOVE:C1226(This:C1470.btn;"focus")
		
		If (This:C1470.btn.focus=Null:C1517)
			This:C1470.btn.focus:=New object:C1471
			This:C1470.btn.focus.box:=New object:C1471
			This:C1470.btn.focus.border:=New object:C1471
			This:C1470.btn.focus.text:=New object:C1471
			This:C1470.btn.focus.picture:=New object:C1471
			This:C1470.btn.focus.composite:=New object:C1471
		End if 
		
End case 
