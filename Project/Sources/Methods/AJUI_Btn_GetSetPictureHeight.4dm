//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictureHeight ( $state { ; $height } ) -> return
  //
  // $state : (text) button state
  // $height : (longint) (optional) picture height
  // return : (longint) (return) current picture height
  //
  // Getter and setter for the picture height of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.07.19, 11:49:40
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPictureHeight
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
	
	If ($current_obj.picture.height#Null:C1517)
		$0:=$current_obj.picture.height
	Else 
		$0:=This:C1470.btn.picture.height
	End if 
	
Else 
	$height:=$2
	If ($height>=0)
		$current_obj.picture.height:=$height
	Else 
		$current_obj.picture.height:=-1
	End if 
End if 

