//%attributes = {"invisible":true}
  // AJUI_Btn_removePropException ( $property  ; $constant ; $CategoryName ) 
  //
  // $property : (text) property name
  // $CategoryName : (text) name of the category associated to the property
  // $constant : (text) state to target
  //
  // This method remove an exception

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 20.11.19, 13:56:13
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_removePropException
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$formula)
C_TEXT:C284($2;$state)
C_LONGINT:C283($pos)
C_TEXT:C284($category;$property)
C_LONGINT:C283($separator_pos)
C_COLLECTION:C1488($properties_col)

$formula:=$1
$state:=$2

$properties_col:=AJUI_Btn_PropertyCol 

$pos:=$properties_col.extract("formula").indexOf($formula)
$category:=$properties_col[$pos].category
$property:=$properties_col[$pos].property


If ($state#AJUI_btn_default)
	If (This:C1470.btn[$state][$category]#Null:C1517)
		OB REMOVE:C1226(This:C1470.btn[$state][$category];$property)
	End if 
End if 