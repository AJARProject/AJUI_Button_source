//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetBorderSize ( $state { ; $size } ) -> return
  //
  // $state : (text) button state
  // $size : (longint) (optional) size
  // return : (longint) (return) current border size
  //
  // Getter and setter for the border size of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:45:08
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetBorderSize
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$state)
C_LONGINT:C283($0;$2;$size)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.border.size#Null:C1517)
		$0:=$current_obj.border.size
	Else 
		$0:=This:C1470.btn.border.size
	End if 
	
Else 
	$size:=$2
	If ($size>=0)
		$current_obj.border.size:=$size
	End if 
End if 