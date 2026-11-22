//%attributes = {"shared":true}
  // Lab_SetBgColorOther (  ) 
  //
  // open the color picker

var $bgcolor_l : Integer
If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:14:30
	  // ----------------------------------------------------
	  // Method: Lab_SetBgColorOther
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


$bgcolor_l:=Select RGB color(16777215;"Select the Background Color")
Form.btnBgOtherParams.value:=$bgcolor_l

