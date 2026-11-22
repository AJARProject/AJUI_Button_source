var $clockwise_ptr : Pointer
var $evt : Integer
var $clockwise_pos : Integer
$evt:=Form event code

Case of 
	: ($evt=On Data Change)
		$clockwise_ptr:=OBJECT Get pointer(Object current)
		$clockwise_pos:=$clockwise_ptr->
		If ($clockwise_ptr->{$clockwise_pos}="True")
			Form.primary_btn.FABIsClockwise(True)
		Else 
			Form.primary_btn.FABIsClockwise(False)
		End if 
		Form.primary_btn.Draw()
End case 