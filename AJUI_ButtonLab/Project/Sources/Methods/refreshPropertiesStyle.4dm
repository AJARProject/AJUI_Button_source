//%attributes = {}
  // refreshPropertiesStyle (  ) 
  //
  //
  // Set the background style array for the properties in the listbox

var $i : Integer
If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.01.20, 10:06:07
	  // ----------------------------------------------------
	  // Method: refreshPropertiesStyle
	  // Description
	  // 
	  // bold : current value # default value
	  // italic : state exception
	  //
	  // ----------------------------------------------------
End if 


ARRAY LONGINT(bgStylesValue;0)

For ($i;0;Form.properties.length-1)
	
	If (Form.currentState#AJUI_btn_default)
		If (Form.btn1[Form.properties[$i].formula](AJUI_btn_default)#Form.btn1[Form.properties[$i].formula](Form.currentState))
			APPEND TO ARRAY(bgStylesValue;Bold)
		Else 
			APPEND TO ARRAY(bgStylesValue;0)
		End if 
	Else 
		If (Form.defaultValues[Form.properties[$i].formula](AJUI_btn_default)#Form.btn1[Form.properties[$i].formula](AJUI_btn_default))
			APPEND TO ARRAY(bgStylesValue;Bold)
		Else 
			APPEND TO ARRAY(bgStylesValue;0)
		End if 
	End if 
	
End for 