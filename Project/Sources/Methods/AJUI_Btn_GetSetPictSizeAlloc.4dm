//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictSizeAlloc ( $state { ; $percent } ) -> return
  //
  // $state : (text) button state
  // $percent : (longint) (optional) percent
  // return : (longint) (return) current percent
  //
  // Getter and setter for the size allocated to the picture for a composite button. This will also help to resize the picture if necessary

If (False:C215)
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


C_TEXT:C284($1;$state)
C_LONGINT:C283($0;$2;$percent)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.composite.pictSizeAllocation#Null:C1517)
		$0:=$current_obj.composite.pictSizeAllocation
	Else 
		$0:=This:C1470.btn.composite.pictSizeAllocation
	End if 
	
Else 
	$percent:=$2
	If ($percent>=0)
		$current_obj.composite.pictSizeAllocation:=$percent
	End if 
End if 