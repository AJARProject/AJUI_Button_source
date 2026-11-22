//%attributes = {"invisible":true}
  // AJUI_Btn_removePropException ( $formula  ; $state  ) 
  //
  // $formula : (text) formula name
  // $state : (text) state to target
  //
  // This method remove an exception

#DECLARE($param1 : Text; $param2 : Text)

If (False)
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

var $formula; $state; $category; $property : Text
var $pos; $separator_pos : Integer
var $properties_col : Collection

$formula:=$param1
$state:=$param2

$properties_col:=AJUI_Btn_PropertyCol 

$pos:=$properties_col.extract("formula").indexOf($formula)
$category:=$properties_col[$pos].category
$property:=$properties_col[$pos].property


If ($state#AJUI_btn_default)
	If (This.btn[$state][$category]#Null)
		OB REMOVE(This.btn[$state][$category];$property)
	End if 
End if 