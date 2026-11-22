//%attributes = {}
  // getTLocIcon ( {$templateName} ) -> return
  //
  // $templateName : (text) (optionnal)  templateName
  // $icon : (text) (return) icon
  //
  // Get the icon to use in the template

#DECLARE($param1 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.11.19, 09:23:01
	  // ----------------------------------------------------
	  // Method: getTLocIcon
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $icon; $templateName : Text
var $locationTemp_ptr : Pointer
var $locationTemp_pos : Integer

If (Count parameters=1)
	$templateName:=$param1
	
	Case of 
		: ($templateName="@ (G)")
			$icon:=" (G)"
		: ($templateName="@ (P)")
			$icon:=" (P)"
		: ($templateName="@ (S)")
			$icon:=" (S)"
	End case 
	
Else 
	
	$locationTemp_ptr:=OBJECT Get pointer(Object named;"locationTemp_list")
	
	$locationTemp_pos:=$locationTemp_ptr->
	Case of 
		: ($locationTemp_ptr->{$locationTemp_pos}="Global")
			$icon:=" (G)"
		: ($locationTemp_ptr->{$locationTemp_pos}="Personal")
			$icon:=" (P)"
		: ($locationTemp_ptr->{$locationTemp_pos}="Shared")
			$icon:=" (S)"
	End case 
End if 

$result:=$icon