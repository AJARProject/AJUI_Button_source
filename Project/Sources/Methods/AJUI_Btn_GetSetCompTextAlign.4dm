//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetCompTextAlign ( $state { ; $textAlign } ) -> return
  //
  // $state : (text) button state
  // $textAlign : (text) (optional) text align
  // return : (text) (return) current text align
  //
  // Getter and setter for the text align in a composite button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:53:48
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetCompTextAlign
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$state)
C_TEXT:C284($0;$2;$textAlign)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.composite.textAlign#Null:C1517)
		$0:=$current_obj.composite.textAlign
	Else 
		$0:=This:C1470.btn.composite.textAlign
	End if 
	
Else 
	$textAlign:=$2
	If ($textAlign#"")
		$current_obj.composite.textAlign:=$textAlign
	End if 
End if 