//%attributes = {"invisible":true}
  // AJUI_Btn_removePropExceptions ( $property ; $CategoryName ) 
  //
  // $property : (text) property name
  // $CategoryName : (text) name of the category associated to the property
  //
  // This method remove all the exceptions for a property
  // short_description

If (False:C215)
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

C_TEXT:C284($1;$formula)
C_LONGINT:C283($pos)
C_TEXT:C284($category;$property)
C_LONGINT:C283($separator_pos)
C_COLLECTION:C1488($properties_col)

$formula:=$1

$properties_col:=AJUI_Btn_PropertyCol 

$pos:=$properties_col.extract("formula").indexOf($formula)
$category:=$properties_col[$pos].category
$property:=$properties_col[$pos].property

If (This:C1470.btn.hover[$category]#Null:C1517)
	OB REMOVE:C1226(This:C1470.btn.hover[$category];$property)
End if 

If (This:C1470.btn.active[$category]#Null:C1517)
	OB REMOVE:C1226(This:C1470.btn.active[$category];$property)
End if 

If (This:C1470.btn.disable[$category]#Null:C1517)
	OB REMOVE:C1226(This:C1470.btn.disable[$category];$property)
End if 

If (This:C1470.btn.focus[$category]#Null:C1517)
	OB REMOVE:C1226(This:C1470.btn.focus[$category];$property)
End if 