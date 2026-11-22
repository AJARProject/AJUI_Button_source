
var $templates_ptr : Pointer
Case of 
	: (Form event code=On Load)
		
		Form.btnSave:=btn_subform 
		Form.btnSave.Name("btnSave")
		Form.btnSave.Label(AJUI_btn_default;"Validate")
		
	: (Form event code=On Clicked)
		
		CALL FORM(Current form window;"closeSaveTempTip";True)
		
		
		
End case 


Form.btnSave.Draw()





