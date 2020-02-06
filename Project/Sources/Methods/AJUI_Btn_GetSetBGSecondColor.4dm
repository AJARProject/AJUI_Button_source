//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetBGSecondColor ( $state { ; param2 } ) -> return
  //
  // $state : (text) button state
  // $color : (text) (optional) color
  // return : (text) (return) current BG secondary color
  //
  // Getter and setter for the background secondary color of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:42:26
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetBGSecondColor
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
	
	If ($current_obj.composite.bgSecondaryColor#Null:C1517)
		$0:=$current_obj.composite.bgSecondaryColor
	Else 
		$0:=This:C1470.btn.composite.bgSecondaryColor
	End if 
	
Else 
	$color:=$2
	
	If ($color#"")
		$current_obj.composite.bgSecondaryColor:=$color
	Else 
		$current_obj.composite.bgSecondaryColor:="none"
	End if 
	
End if 