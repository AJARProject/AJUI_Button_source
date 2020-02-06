//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetPictureOpacity ( $state { ; $percent } ) -> return
  //
  // $state : (text) state
  // $percent : (longint) (optional) picture opacity in percent
  // return : (longint) (return) current opacity
  //
  // Getter and setter for picture opacity (percent)

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 12.08.19, 13:41:27
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetPictureOpacity
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
	
	If ($current_obj.picture.opacity#Null:C1517)
		$0:=$current_obj.picture.opacity
	Else 
		$0:=This:C1470.btn.picture.opacity
	End if 
	
Else 
	$percent:=$2
	If ($percent>=0) & ($percent<=100)
		$current_obj.picture.opacity:=$percent
	End if 
End if 