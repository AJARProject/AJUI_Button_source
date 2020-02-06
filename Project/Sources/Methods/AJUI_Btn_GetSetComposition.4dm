//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetComposition ({  $composition }) -> return
  //
  // $composition : (text) (optional) button composition
  // return : (text) (return) current composition
  //
  // Getter and setter for the composition of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.07.19, 10:50:37
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetComposition
	  // Description
	  // Compositions : text, picture, composite
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($0;$1;$composition)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.global.composition
Else 
	$composition:=$1
	If ($composition#"")
		This:C1470.btn.global.composition:=$composition
	End if 
End if 

