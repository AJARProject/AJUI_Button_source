//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictureWidth ( $state { ; $width } ) -> return
  //
  // $state : (text) button state
  // $width : (longint) (optional) picture width
  // return : (longint) (return) current picture width
  //
  // Getter and setter for the picture width of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.07.19, 11:55:36
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPictureWidth
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



C_TEXT:C284($1;$state)
C_LONGINT:C283($0;$2;$width)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.picture.width#Null:C1517)
		$0:=$current_obj.picture.width
	Else 
		$0:=This:C1470.btn.picture.width
	End if 
	
Else 
	$width:=$2
	If ($width>=0)
		$current_obj.picture.width:=$width
	Else 
		$current_obj.picture.width:=-1
	End if 
End if 

