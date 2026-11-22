//%attributes = {}
  // formulasGetValues (  )
  //
  //
  // Updating the lab's listbox values after a state or template change

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:29:01
	  // ----------------------------------------------------
	  // Method: formulasGetValues
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $current_col : Collection
var $value_ptr : Pointer
var $i : Integer


$value_ptr:=OBJECT Get pointer(Object named;"value_col")

  //Loop and execute the Getter
For ($i;0;Form.properties.length-1)
	
	$value_ptr->{$i+1}.value:=Form.btn1[Form.properties[$i].formula](Form.currentState)
	
End for 

refreshArrayColor 
refreshPropertiesStyle 

