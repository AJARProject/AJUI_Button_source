//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetFontStyle ( $state { ; $style } ) -> return
  //
  // $state : (text) button state
  // $style : (text) (optional) font style
  // return : (text) (return) current font style
  //
  // Getter and setter for the font style of the button


If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:04:24
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetFontStyle
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$state)
C_TEXT:C284($0;$2;$style)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.text.fontStyle#Null:C1517)
		$0:=$current_obj.text.fontStyle
	Else 
		$0:=This:C1470.btn.text.fontStyle
	End if 
	
Else 
	$style:=$2
	$current_obj.text.fontStyle:=$style
End if 