//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetBGPrimaColor ( $state { ; param2 } ) -> return
  //
  // $state : (text) button state
  // $color : (text) (optional) color
  // return : (text) (return) current BG primary color
  //
  // Getter and setter for the background primary color of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:40:27
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetBGPrimaColor
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
	
	If ($current_obj.box.bgPrimaryColor#Null:C1517)
		$0:=$current_obj.box.bgPrimaryColor
	Else 
		$0:=This:C1470.btn.box.bgPrimaryColor
	End if 
	
Else 
	$color:=$2
	
	If ($color#"")
		$current_obj.box.bgPrimaryColor:=$color
	Else 
		$current_obj.box.bgPrimaryColor:="none"
	End if 
	
End if 