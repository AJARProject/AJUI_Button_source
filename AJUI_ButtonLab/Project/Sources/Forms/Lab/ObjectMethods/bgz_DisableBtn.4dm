var $currentValue : Integer
$currentValue:=OBJECT Get pointer(Object current)->

If ($currentValue=1)
	Form.btn1.Enable(False)
Else 
	Form.btn1.Enable(True)
End if 
