//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetFontSize ( $state { ; $size } ) -> return
  //
  // $state : (text) button state
  // $size : (longint) (optional) font size
  // return : (longint) (return) current font size
  //
  // Getter and setter for the font size of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:02:51
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetFontSize
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



C_TEXT:C284($1;$state)
C_LONGINT:C283($0;$2;$size)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.text.fontSize#Null:C1517)
		$0:=$current_obj.text.fontSize
	Else 
		$0:=This:C1470.btn.text.fontSize
	End if 
	
Else 
	$size:=$2
	If ($size>0)
		$current_obj.text.fontSize:=$size
	End if 
End if 