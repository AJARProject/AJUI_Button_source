var $currentValue : Integer
$currentValue:=OBJECT Get pointer(Object current)->

If ($currentValue=1)
	Form.btn1.CompActiveSecondColor(True)
	Form.btn2.CompActiveSecondColor(True)
	Form.btn3.CompActiveSecondColor(True)
	Form.btn4.CompActiveSecondColor(True)
	Form.btn5.CompActiveSecondColor(True)
	Form.btn6.CompActiveSecondColor(True)
	
	
Else 
	Form.btn1.CompActiveSecondColor(False)
	Form.btn2.CompActiveSecondColor(False)
	Form.btn3.CompActiveSecondColor(False)
	Form.btn4.CompActiveSecondColor(False)
	Form.btn5.CompActiveSecondColor(False)
	Form.btn6.CompActiveSecondColor(False)
End if 
Form.btnSave.Enable(True)
Form.btnSave.Draw()

redrawBtn 