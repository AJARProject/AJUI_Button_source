
Case of 
	: (Form event code=On Load)
		
		
		Form.btnResetShared:=TLoc_btn_pref_init 
		Form.btnResetShared.Name("btnResetShared")
		Form.btnResetShared.Type("circle")
		Form.btnResetShared.Composition("picture")
		Form.btnResetShared.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994435---ban-banned-block-disabled-stop.svg")
		
	: (Form event code=On Mouse Enter)
		Form.subInfoTip.TextLabel("Clear shared folder path")
		Form.subInfoTip.Show()
	: (Form event code=On Mouse Leave)
		Form.subInfoTip.Hide()
		
	: (Form event code=On Mouse Up)
		Form.path_shared:=""
End case 

Form.btnResetShared.Draw()
