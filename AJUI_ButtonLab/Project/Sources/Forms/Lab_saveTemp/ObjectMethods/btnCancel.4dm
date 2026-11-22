
Case of 
	: (Form event code=On Load)
		
		
		Form.btnCancel:=btn_subform 
		Form.btnCancel.Name("btnCancel")
		Form.btnCancel.Label(AJUI_btn_default;"Cancel")
		
		
		
	: (Form event code=On Clicked)
		
		CALL FORM(Current form window;"closeSaveTempTip";False)
		
End case 

Form.btnCancel.Draw()
