
Case of 
	: (Form event code=On Load)
		
		
		Form.btnResetGlobal:=TLoc_btn_pref_init 
		Form.btnResetGlobal.Name("btnResetGlobal")
		Form.btnResetGlobal.Type("circle")
		Form.btnResetGlobal.Composition("picture")
		Form.btnResetGlobal.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994435---ban-banned-block-disabled-stop.svg")
		Form.btnResetGlobal.Enable(False)
		
		
		
End case 

Form.btnResetGlobal.Draw()
