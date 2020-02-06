//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetBoxHeight ( $state { ; $height } ) -> return
  //
  // $state : (text) button state
  // $height : (longint) (optional) box height
  // return : (longint) (return) current box height
  //
  // Getter and setter for the box height of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:07:40
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetBoxHeight
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$state)
C_LONGINT:C283($0;$2;$height)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.box.height#Null:C1517)
		$0:=$current_obj.box.height
	Else 
		$0:=This:C1470.btn.box.height
	End if 
	
Else 
	$height:=$2
	If ($height>=0)
		$current_obj.box.height:=$height
	Else 
		$current_obj.box.height:=-1
	End if 
End if 