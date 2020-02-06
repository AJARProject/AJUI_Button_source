//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetFontName ( $state { ; $fontName } ) -> return
  //
  // $state : (text) button state
  // $fontName : (text) (optional) font name
  // return : (text) (return) current font name
  //
  // Getter and setter for the font name of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:01:45
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetFontName
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$state)
C_TEXT:C284($0;$2;$fontName)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.text.fontName#Null:C1517)
		$0:=$current_obj.text.fontName
	Else 
		$0:=This:C1470.btn.text.fontName
	End if 
	
Else 
	$fontName:=$2
	$current_obj.text.fontName:=$fontName
End if 