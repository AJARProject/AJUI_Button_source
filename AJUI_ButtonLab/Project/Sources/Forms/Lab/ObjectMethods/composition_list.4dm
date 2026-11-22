
var $composition_ptr : Pointer
var $composite : Text
var $evt : Integer
var $composition_pos : Integer
$evt:=Form event code
$composition_ptr:=OBJECT Get pointer(Object current)
Case of 
	: ($evt=On Load)
		APPEND TO ARRAY($composition_ptr->;"text")
		APPEND TO ARRAY($composition_ptr->;"picture")
		APPEND TO ARRAY($composition_ptr->;"composite")
		$composition_ptr->:=1
	: ($evt=On Data Change)
		$composition_pos:=$composition_ptr->
		$composite:=$composition_ptr->{$composition_pos}
		If ($composition_ptr->=3)
			OBJECT SET VISIBLE(*;"linked";True)
			OBJECT SET VISIBLE(*;"secondColor";True)
		Else 
			OBJECT SET VISIBLE(*;"linked";False)
			OBJECT SET VISIBLE(*;"secondColor";False)
		End if 
		
		Form.btn1.Composition($composite)
		Form.btn2.Composition($composite)
		Form.btn3.Composition($composite)
		Form.btn4.Composition($composite)
		Form.btn5.Composition($composite)
		Form.btn6.Composition($composite)
		
		Form.btnSave.Enable(True)
		Form.btnSave.Draw()
		
		redrawBtn 
		
End case 