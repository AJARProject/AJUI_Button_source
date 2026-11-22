var $evt : Integer
$evt:=Form event code

Case of 
	: ($evt=On Data Change)
		Form.btnSave.Enable(True)
		Form.btnSave.Draw()
		
End case 
