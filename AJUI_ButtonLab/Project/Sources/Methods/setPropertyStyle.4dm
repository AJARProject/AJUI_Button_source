//%attributes = {}
  // setPropertyStyle (  ) 
  //
  //
  // Set the background style array for the property in the current listbox line

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.01.20, 10:27:20
	  // ----------------------------------------------------
	  // Method: setPropertyStyle
	  // Description
	  // 
	  // bold : current value # default value
	  // italic : state exception
	  //
	  // ----------------------------------------------------
End if 

var $formula : Text
var $property_ptr : Pointer
var $property_pos : Integer

$property_ptr:=OBJECT Get pointer(Object named;"property_col")
$formula:=Form.properties[$property_ptr->-1].formula

If (Form.currentState#AJUI_btn_default)
	If (Form.btn1[$formula](AJUI_btn_default)#Form.btn1[$formula](Form.currentState))
		$property_pos:=$property_ptr->
		bgStylesValue{$property_pos}:=Bold
	Else 
		$property_pos:=$property_ptr->
		bgStylesValue{$property_pos}:=0
	End if 
Else 
	If (Form.defaultValues[$formula](AJUI_btn_default)#Form.btn1[$formula](AJUI_btn_default))
		$property_pos:=$property_ptr->
		bgStylesValue{$property_pos}:=Bold
	Else 
		$property_pos:=$property_ptr->
		bgStylesValue{$property_pos}:=0
	End if 
End if 

