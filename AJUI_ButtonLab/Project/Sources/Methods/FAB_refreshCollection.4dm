//%attributes = {}
  // FAB_refreshCollection ( $nbBtn) 
  //
  // $nbBtn : (longint) number of buttons
  //
  // Add the correct number of button in the FAB collection (HDI_FAB)

#DECLARE($param1 : Integer)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 17.12.19, 14:04:48
	  // ----------------------------------------------------
	  // Method: FAB_refreshCollection
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
var $nbBtn : Integer

$nbBtn:=$param1

Form.primary_btn.FABClearCollection()

Form.primary_btn.FABAdd("btn_1")
Form.primary_btn.FABAdd("btn_2")
Form.primary_btn.FABAdd("btn_3")
If ($nbBtn>=4)
	Form.primary_btn.FABAdd("btn_4")
End if 
If ($nbBtn>=5)
	Form.primary_btn.FABAdd("btn_5")
End if 
If ($nbBtn=6)
	Form.primary_btn.FABAdd("btn_6")
End if 