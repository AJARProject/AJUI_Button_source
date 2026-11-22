var $btns_fab_ptr : Pointer
var $evt : Integer
var $btns_fab_pos : Integer
$evt:=Form event code

Case of 
	: ($evt=On Data Change)
		$btns_fab_ptr:=OBJECT Get pointer(Object current)
		$btns_fab_pos:=$btns_fab_ptr->
		FAB_refreshCollection (Num($btns_fab_ptr->{$btns_fab_pos}))
		Form.primary_btn.Draw()
End case 