var $evt : Integer
$evt:=Form event code

Case of 
	: ($evt=On Load)
		OBJECT Get pointer(Object current)->:=1
		
	: ($evt=On Clicked)
		FAB_setMainPosition 
End case 