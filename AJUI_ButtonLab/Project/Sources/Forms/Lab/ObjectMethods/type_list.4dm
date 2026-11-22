
var $type_ptr : Pointer
var $type : Text
var $evt : Integer
var $type_pos : Integer
$evt:=Form event code
$type_ptr:=OBJECT Get pointer(Object current)
Case of 
	: ($evt=On Load)
		
		APPEND TO ARRAY($type_ptr->;"rectangle")
		APPEND TO ARRAY($type_ptr->;"circle")
		$type_ptr->:=1
	: ($evt=On Data Change)
		$type_pos:=$type_ptr->
		$type:=$type_ptr->{$type_pos}
		Form.btn1.Type($type)
		Form.btn2.Type($type)
		Form.btn3.Type($type)
		Form.btn4.Type($type)
		Form.btn5.Type($type)
		Form.btn6.Type($type)
		
		Form.btnSave.Enable(True)
		Form.btnSave.Draw()
		
		redrawBtn 
End case 
