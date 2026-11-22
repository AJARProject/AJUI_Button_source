var $callback : Text
var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Data Change)
		$callback:=OBJECT Get pointer(Object current)->
		Form.btn1.OnClick($callback)
		
		Form.btnSave.Enable(True)
		Form.btnSave.Draw()
End case 