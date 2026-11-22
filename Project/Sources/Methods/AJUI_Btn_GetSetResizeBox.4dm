//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetResizeBox ( {  param2 } ) -> return
  //
  // $resize : (boolean) (optional) resize box
  // return : (boolean) (return) return resized box?
  //
  // Getter and setter method to activate the resizing of the box

#DECLARE($param1 : Boolean) -> $result : Boolean

If (False)
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

var $resize : Boolean

If (Count parameters=0)
	$result:=This.btn.box.resize
Else 
	$resize:=$param1
	This.btn.box.resize:=$resize
End if 