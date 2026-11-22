var $currentValue : Integer
$currentValue:=OBJECT Get pointer(Object current)->

If ($currentValue=1)
	Form.btn1.CompLinked(True)
	Form.btn2.CompLinked(True)
	Form.btn3.CompLinked(True)
	Form.btn4.CompLinked(True)
	Form.btn5.CompLinked(True)
	Form.btn6.CompLinked(True)
	
	
Else 
	Form.btn1.CompLinked(False)
	Form.btn2.CompLinked(False)
	Form.btn3.CompLinked(False)
	Form.btn4.CompLinked(False)
	Form.btn5.CompLinked(False)
	Form.btn6.CompLinked(False)
	
End if 
Form.btnSave.Enable(True)
Form.btnSave.Draw()

redrawBtn 
