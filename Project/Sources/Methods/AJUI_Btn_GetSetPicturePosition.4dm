//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPicturePosition ( $state { ; $position } ) -> return
  //
  // $state : (text) button state
  // $position : (text) (optional) position
  // return : (text) (return) current picture postion
  //
  // Getter and setter for the picture position in a composite button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:55:46
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPicturePosition
	  // Description
	  // posistions : top, bottom, left, right
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$state)
C_TEXT:C284($0;$2;$position)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.composite.picturePosition#Null:C1517)
		$0:=$current_obj.composite.picturePosition
	Else 
		$0:=This:C1470.btn.composite.picturePosition
	End if 
	
Else 
	$position:=$2
	If ($position#"")
		$current_obj.composite.picturePosition:=$position
	End if 
End if 
