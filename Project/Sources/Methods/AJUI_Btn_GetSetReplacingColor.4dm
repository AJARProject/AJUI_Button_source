//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetReplacingColor ( $state { ; $color } ) -> return
  //
  // $state : (text) button state
  // $color : (text) (optional) new color
  // return : (text) (return) current new color
  //
  // Getter and setter for the new Color to add in SVG instead of the old color

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 05.08.19, 13:44:26
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetReplacingColor
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
	
	If ($current_obj.picture.replacingColor#Null:C1517)
		$0:=$current_obj.picture.replacingColor
	Else 
		$0:=This:C1470.btn.picture.replacingColor
	End if 
	
Else 
	$color:=$2
	$current_obj.picture.replacingColor:=$color
End if 