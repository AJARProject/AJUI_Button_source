//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetFontColor ( $state { ; $color } ) -> return
  //
  // $state : (text) button state
  // $color : (text) (optional) color
  // return : (text) (return) current font color
  //
  // Getter and setter for the font color of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:01:04
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetFontColor
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
	
	If ($current_obj.text.fontColor#Null:C1517)
		$0:=$current_obj.text.fontColor
	Else 
		$0:=This:C1470.btn.text.fontColor
	End if 
	
Else 
	$color:=$2
	If ($color#"")
		$current_obj.text.fontColor:=$color
	Else 
		$current_obj.text.fontColor:="none"
	End if 
End if 