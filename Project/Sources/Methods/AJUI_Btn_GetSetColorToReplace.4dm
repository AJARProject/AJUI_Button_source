//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetColorToReplace ( { $color } ) -> return
  //
  // $state : (text) button state
  // $color : (text) (optional) color
  // return : (text) (return) current old color
  //
  // Getter and setter to specify the old color of a SVG, it will be replaced by the new color

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 05.08.19, 13:44:14
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetColorToReplace
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



C_TEXT:C284($1;$state)
C_TEXT:C284($0;$2;$color)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.picture.colorToReplace#Null:C1517)
		$0:=$current_obj.picture.colorToReplace
	Else 
		$0:=This:C1470.btn.picture.colorToReplace
	End if 
	
Else 
	$color:=$2
	$current_obj.picture.colorToReplace:=$color
End if 