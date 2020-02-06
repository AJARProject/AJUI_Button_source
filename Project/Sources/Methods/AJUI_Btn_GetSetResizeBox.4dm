//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetResizeBox ( {  param2 } ) -> return
  //
  // $resize : (boolean) (optional) resize box
  // return : (boolean) (return) return resized box?
  //
  // Getter and setter method to activate the resizing of the box

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 25.07.19, 14:23:40
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetResizeBox
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_BOOLEAN:C305($0;$1;$resize)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.box.resize
Else 
	$resize:=$1
	This:C1470.btn.box.resize:=$resize
End if 