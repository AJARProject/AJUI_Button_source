//%attributes = {}
  // refreshArrayColor (  ) -> return
  //
  //
  // Set the background color array for the values of the properties in listbox

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 22.10.19, 16:16:40
	  // ----------------------------------------------------
	  // Method: refreshArrayColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
var $value : Text
var $properties_col : Collection
var $i; $opacity_pos : Integer
ARRAY LONGINT(bgColorValue;0)
ARRAY LONGINT(bgFontColorValue;0)



$properties_col:=Form.properties

  //loop on each property to find color properties
For ($i;0;$properties_col.length-1)
	If ($properties_col[$i].property="@color@")
		
		$value:=Form.btn1[$properties_col[$i].formula](Form.currentState)
		
		If ($value="") | ($value="none")
			APPEND TO ARRAY(bgColorValue;16777215)
			APPEND TO ARRAY(bgFontColorValue;0)
		Else 
			
			If (Position("#";$value;1)=1)
				APPEND TO ARRAY(bgColorValue;hexa2dec ($value))
				
				If (getLuminance (hexa2dec ($value))>150)
					APPEND TO ARRAY(bgFontColorValue;0)
				Else 
					APPEND TO ARRAY(bgFontColorValue;12632256)
				End if 
				
			Else 
				If ($value="@:@")  //remove opacity to avoid beep from the SVG method
					$opacity_pos:=Position(":";$value)
					$value:=Substring($value;1;$opacity_pos-1)
				End if 
				
				APPEND TO ARRAY(bgColorValue;SVG_Get_named_color_value ($value))
				
				If (getLuminance (SVG_Get_named_color_value ($value))>150)
					APPEND TO ARRAY(bgFontColorValue;0)
				Else 
					APPEND TO ARRAY(bgFontColorValue;12632256)
				End if 
			End if 
		End if 
		
	Else 
		APPEND TO ARRAY(bgColorValue;16777215)
		APPEND TO ARRAY(bgFontColorValue;0)
	End if 
End for 
