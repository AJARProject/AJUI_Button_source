//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPicturePath ( $state { ; $path } ) -> return
  //
  // $state : (text) button state
  // $path : (text) (optional) picture path
  // return : (text) (return) current picture path
  //
  // Getter and setter for the picture path

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.07.19, 11:51:23
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPicturePath
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



C_TEXT:C284($1;$state)
C_TEXT:C284($0;$2;$path)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	If ($current_obj.picture.path#Null:C1517)
		$0:=$current_obj.picture.path
	Else 
		$0:=This:C1470.btn.picture.path
	End if 
Else 
	$path:=$2
	$current_obj.picture.path:=$path
End if 