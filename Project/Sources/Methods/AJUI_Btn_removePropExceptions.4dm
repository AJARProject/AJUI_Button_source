//%attributes = {"invisible":true}
  // AJUI_Btn_removePropExceptions ( $property ; $CategoryName ) 
  //
  // $formula : (text) formula name
  //
  // This method remove all the exceptions for a property
  // short_description

#DECLARE($param1 : Text)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 20.11.19, 15:06:12
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_removePropExceptions
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $formula; $category; $property : Text
var $pos; $separator_pos : Integer
var $properties_col : Collection

$formula:=$param1

$properties_col:=AJUI_Btn_PropertyCol 

$pos:=$properties_col.extract("formula").indexOf($formula)
$category:=$properties_col[$pos].category
$property:=$properties_col[$pos].property

If (This.btn.hover[$category]#Null)
	OB REMOVE(This.btn.hover[$category];$property)
End if 

If (This.btn.active[$category]#Null)
	OB REMOVE(This.btn.active[$category];$property)
End if 

If (This.btn.disable[$category]#Null)
	OB REMOVE(This.btn.disable[$category];$property)
End if 

If (This.btn.focus[$category]#Null)
	OB REMOVE(This.btn.focus[$category];$property)
End if 