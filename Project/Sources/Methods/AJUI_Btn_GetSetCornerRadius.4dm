//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetCornerRadius ( $state { ; $radius } ) -> return
  //
  // $state : (text) button state
  // $radius : (longint) (optional) radius size
  // return : (longint) (return) current radius size
  //
  // Getter and setter for the radius size of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:58:25
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetCornerRadius
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$state)
C_LONGINT:C283($0;$2;$radius)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.box.cornerRadius#Null:C1517)
		$0:=$current_obj.box.cornerRadius
	Else 
		$0:=This:C1470.btn.box.cornerRadius
	End if 
	
Else 
	$radius:=$2
	If ($radius>=0)
		$current_obj.box.cornerRadius:=$radius
	End if 
End if 