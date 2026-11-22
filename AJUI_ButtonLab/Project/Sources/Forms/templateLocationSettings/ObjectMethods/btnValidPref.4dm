
Case of 
	: (Form event code=On Load)
		
		
		Form.btnValidPref:=TLoc_btn_pref_init 
		Form.btnValidPref.Name("btnValidPref")
		Form.btnValidPref.Label(AJUI_btn_default;"Save")
		
		
	: (Form event code=On Mouse Enter)
		Form.subInfoTip.TextLabel("Save preferences")
		Form.subInfoTip.Show()
	: (Form event code=On Mouse Leave)
		Form.subInfoTip.Hide()
		
		
		
	: (Form event code=On Clicked)
		Form.subInfoTip.Hide()
		CALL FORM(Current form window;"TLoc_closePref";True)
		
End case 

Form.btnValidPref.Draw()
