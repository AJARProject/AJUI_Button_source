var $currentValue : Integer
$currentValue:=OBJECT Get pointer(Object current)->

If ($currentValue=1)
	Form.btn1.Resizable(True)
	Form.btn2.Resizable(True)
	Form.btn3.Resizable(True)
	Form.btn4.Resizable(True)
	Form.btn5.Resizable(True)
	Form.btn6.Resizable(True)
	
	
Else 
	Form.btn1.Resizable(False)
	Form.btn2.Resizable(False)
	Form.btn3.Resizable(False)
	Form.btn4.Resizable(False)
	Form.btn5.Resizable(False)
	Form.btn6.Resizable(False)
	OBJECT SET COORDINATES(*;"btn1";Form.originCoordBtn1.left;Form.originCoordBtn1.top;Form.originCoordBtn1.right;Form.originCoordBtn1.bottom)
	OBJECT SET COORDINATES(*;"btn2";Form.originCoordBtn2.left;Form.originCoordBtn2.top;Form.originCoordBtn2.right;Form.originCoordBtn2.bottom)
	OBJECT SET COORDINATES(*;"btn3";Form.originCoordBtn3.left;Form.originCoordBtn3.top;Form.originCoordBtn3.right;Form.originCoordBtn3.bottom)
	OBJECT SET COORDINATES(*;"btn4";Form.originCoordBtn4.left;Form.originCoordBtn4.top;Form.originCoordBtn4.right;Form.originCoordBtn4.bottom)
	OBJECT SET COORDINATES(*;"btn5";Form.originCoordBtn5.left;Form.originCoordBtn5.top;Form.originCoordBtn5.right;Form.originCoordBtn5.bottom)
	OBJECT SET COORDINATES(*;"btn6";Form.originCoordBtn6.left;Form.originCoordBtn6.top;Form.originCoordBtn6.right;Form.originCoordBtn6.bottom)
End if 

Form.btnSave.Enable(True)
Form.btnSave.Draw()

redrawBtn 