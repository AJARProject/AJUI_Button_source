
Case of 
	: (Form event code=On Load)
		
		
		Form.btnResetPersonal:=TLoc_btn_pref_init 
		Form.btnResetPersonal.Name("btnResetPersonal")
		Form.btnResetPersonal.Type("circle")
		Form.btnResetPersonal.Composition("picture")
		Form.btnResetPersonal.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994435---ban-banned-block-disabled-stop.svg")
		
	: (Form event code=On Mouse Enter)
		Form.subInfoTip.TextLabel("Clear personal folder path")
		Form.subInfoTip.Show()
	: (Form event code=On Mouse Leave)
		Form.subInfoTip.Hide()
		
		
	: (Form event code=On Mouse Up)
		Form.path_personal:=""
		
End case 

Form.btnResetPersonal.Draw()
