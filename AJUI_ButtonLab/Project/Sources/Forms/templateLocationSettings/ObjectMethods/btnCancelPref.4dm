
Case of 
	: (Form event code=On Load)
		
		
		Form.btnCancelPref:=TLoc_btn_pref_init 
		Form.btnCancelPref.Name("btnCancelPref")
		Form.btnCancelPref.Label(AJUI_btn_default;"Cancel")
		
		
	: (Form event code=On Clicked)
		Form.subInfoTip.Hide()
		CALL FORM(Current form window;"TLoc_closePref")
		
End case 

Form.btnCancelPref.Draw()
