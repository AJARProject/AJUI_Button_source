//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictureScale ( $state { ; $percent } ) -> return
  //
  // $state : (text) state
  // $percent : (real) (optional) scale in percent
  // return : (text) (return) current scale
  //
  // Getter and setter for the size of the picture, scale with the size of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 12.08.19, 13:42:07
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPictureScale
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
	
	If ($current_obj.picture.scale#Null:C1517)
		$0:=$current_obj.picture.scale
	Else 
		$0:=This:C1470.btn.picture.scale
	End if 
	
Else 
	$percent:=$2
	If ($percent>=0) & ($percent<=100)
		$current_obj.picture.scale:=$percent
	End if 
End if 