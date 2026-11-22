//%attributes = {"invisible":true}
  // AJUI_Btn_resetState ( $state ) 
  //
  // $state : (text) button state
  //
  // Clean/Reset state exceptions

#DECLARE($param1 : Text)

If (False)
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


var $state : Text

$state:=$param1


Case of 
	: ($state="hover")
		OB REMOVE(This.btn;"hover")
		
		If (This.btn.hover=Null)
			This.btn.hover:=New object
			This.btn.hover.box:=New object
			This.btn.hover.border:=New object
			This.btn.hover.text:=New object
			This.btn.hover.picture:=New object
			This.btn.hover.composite:=New object
		End if 
		
	: ($state="active")
		OB REMOVE(This.btn;"active")
		
		If (This.btn.activ=Null)
			This.btn.active:=New object
			This.btn.active.box:=New object
			This.btn.active.border:=New object
			This.btn.active.text:=New object
			This.btn.active.picture:=New object
			This.btn.active.composite:=New object
		End if 
		
	: ($state="disable")
		OB REMOVE(This.btn;"disable")
		
		If (This.btn.disable=Null)
			This.btn.disable:=New object
			This.btn.disable.box:=New object
			This.btn.disable.border:=New object
			This.btn.disable.text:=New object
			This.btn.disable.picture:=New object
			This.btn.disable.composite:=New object
		End if 
		
	: ($state="focus")
		OB REMOVE(This.btn;"focus")
		
		If (This.btn.focus=Null)
			This.btn.focus:=New object
			This.btn.focus.box:=New object
			This.btn.focus.border:=New object
			This.btn.focus.text:=New object
			This.btn.focus.picture:=New object
			This.btn.focus.composite:=New object
		End if 
		
End case 
