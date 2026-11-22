//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetComposition ({  $composition }) -> return
  //
  // $composition : (text) (optional) button composition
  // return : (text) (return) current composition
  //
  // Getter and setter for the composition of the button

#DECLARE($param1 : Text) -> $result : Text

If (False)
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


var $composition : Text

If (Count parameters=0)
	$result:=This.btn.global.composition
Else 
	$composition:=$param1
	If ($composition#"")
		This.btn.global.composition:=$composition
	End if 
End if 

