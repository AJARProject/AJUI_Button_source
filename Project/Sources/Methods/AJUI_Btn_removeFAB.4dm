//%attributes = {"invisible":true}
  // AJUI_Btn_removeFAB ( $btnName  ) 
  //
  // $btnName : (text) name form object

  //
  // remove an item in the FAB colleciton

#DECLARE($param1 : Text)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.12.19, 09:36:35
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_removeFAB
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $btnName : Text
var $pos : Real

$btnName:=$param1

$pos:=This.btn.fab.btnCol.indexOf($btnName)
If ($pos#-1)
	This.btn.fab.btnCol.remove($pos)
End if 