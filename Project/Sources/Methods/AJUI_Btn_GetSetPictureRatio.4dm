//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictureRatio ( $state { ; $ratio } ) -> return
  //
  // $state : (text) state
  // $ratio : (real) (optional) ratio to resize picture
  // return : (real) (return) current ratio
  //
  // Getter and setter for the size of the picture with a ratio

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 12.08.19, 13:41:48
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPictureRatio
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$state)
C_REAL:C285($0;$2;$ratio)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.picture.ratio#Null:C1517)
		$0:=$current_obj.picture.ratio
	Else 
		$0:=This:C1470.btn.picture.ratio
	End if 
	
Else 
	$ratio:=$2
	If ($ratio>=0)
		$current_obj.picture.ratio:=$ratio
	End if 
End if 