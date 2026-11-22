var $animation_ptr : Pointer
var $evt : Integer
var $animation_pos : Integer
$evt:=Form event code

Case of 
	: ($evt=On Data Change)
		$animation_ptr:=OBJECT Get pointer(Object current)
		$animation_pos:=$animation_ptr->
		If ($animation_ptr->{$animation_pos}="True")
			Form.primary_btn.FABIsAnimated(True)
		Else 
			Form.primary_btn.FABIsAnimated(False)
		End if 
		Form.primary_btn.Draw()
End case 