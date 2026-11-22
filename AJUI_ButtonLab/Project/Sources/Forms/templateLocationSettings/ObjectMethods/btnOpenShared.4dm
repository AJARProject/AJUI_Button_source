
Case of 
	: (Form event code=On Load)
		
		
		Form.btnOpenShared:=TLoc_btn_pref_init 
		Form.btnOpenShared.Name("btnOpenShared")
		Form.btnOpenShared.Type("circle")
		Form.btnOpenShared.Composition("picture")
		Form.btnOpenShared.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994406---eye-on-show-view-visible.svg")
		
	: (Form event code=On Mouse Enter)
		Form.subInfoTip.TextLabel("Open shared folder ")
		Form.subInfoTip.Show()
	: (Form event code=On Mouse Leave)
		Form.subInfoTip.Hide()
		
	: (Form event code=On Mouse Up)
		If (Form.path_shared#"")
			SHOW ON DISK(Form.path_shared;*)
		End if 
		
		
		
End case 

Form.btnOpenShared.Draw()
