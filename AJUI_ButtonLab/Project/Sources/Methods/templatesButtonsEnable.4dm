//%attributes = {}
  // templatesButtonsEnable ( $enable { ; $name } ) -> return
  //
  // $enable : (boolean) enable/disable
  // $name : (text) (optional) description
  //
  // Disable/Enable buttons, you can specify in the second parameter a button that will be in the opposite status

#DECLARE($param1 : Boolean; $param2 : Text)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.08.19, 13:49:17
	  // ----------------------------------------------------
	  // Method: templatesButtonsEnable
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $enable : Boolean
var $name : Text

$enable:=$param1

Form.btnRename.Enable($enable)
Form.btnNew.Enable($enable)
Form.btnSave.Enable($enable)
Form.btnDelete.Enable($enable)
Form.btnReload.Enable($enable)
Form.btnReset.Enable($enable)
Form.btnProtect.Enable($enable)
Form.btnDuplicate.Enable($enable)

If (Count parameters=2)
	$name:=$param2
	Form[$name].Enable(Not($enable))
End if 

Form.btnRename.Draw()
Form.btnNew.Draw()
Form.btnSave.Draw()
Form.btnDelete.Draw()
Form.btnReload.Draw()
Form.btnReset.Draw()
Form.btnProtect.Draw()
Form.btnDuplicate.Draw()