var $evt : Integer
$evt:=Form event code

Case of 
	: ($evt=On Data Change)
		Form.primary_btn.FABMainPosition("")
		Form.primary_btn.Draw()
End case 
