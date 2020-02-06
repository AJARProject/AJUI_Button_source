//%attributes = {"invisible":true}
  // AJUI_Btn_removeFAB ( $btnName  ) 
  //
  // $btnName : (text) name form object

  //
  // remove an item in the FAB colleciton

If (False:C215)
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

C_TEXT:C284($1;$btnName)

$btnName:=$1

$pos:=This:C1470.btn.fab.btnCol.indexOf($btnName)
If ($pos#-1)
	This:C1470.btn.fab.btnCol.remove($pos)
End if 