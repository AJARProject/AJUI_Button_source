//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictSizeAlloc ( $state { ; $percent } ) -> return
  //
  // $state : (text) button state
  // $percent : (longint) (optional) percent
  // return : (longint) (return) current percent
  //
  // Getter and setter for the size allocated to the picture for a composite button. This will also help to resize the picture if necessary

#DECLARE($param1 : Text; $param2 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:26:18
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPictSizeAlloc
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $state : Text
var $percent : Integer
var $current_obj : Object

$state:=$param1

If ($state="default")
	$current_obj:=This.btn
Else 
	$current_obj:=This.btn[$state]
End if 

If (Count parameters=1)
	
	If ($current_obj.composite.pictSizeAllocation#Null)
		$result:=$current_obj.composite.pictSizeAllocation
	Else 
		$result:=This.btn.composite.pictSizeAllocation
	End if 
	
Else 
	$percent:=$param2
	If ($percent>=0)
		$current_obj.composite.pictSizeAllocation:=$percent
	End if 
End if 