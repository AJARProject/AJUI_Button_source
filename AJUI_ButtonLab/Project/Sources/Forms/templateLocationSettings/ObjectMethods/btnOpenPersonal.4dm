
Case of 
	: (Form event code=On Load)
		
		
		Form.btnOpenPersonal:=TLoc_btn_pref_init 
		Form.btnOpenPersonal.Name("btnOpenPersonal")
		Form.btnOpenPersonal.Type("circle")
		Form.btnOpenPersonal.Composition("picture")
		Form.btnOpenPersonal.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994406---eye-on-show-view-visible.svg")
		
	: (Form event code=On Mouse Enter)
		Form.subInfoTip.TextLabel("Open personal folder ")
		Form.subInfoTip.Show()
	: (Form event code=On Mouse Leave)
		Form.subInfoTip.Hide()
		
	: (Form event code=On Mouse Up)
		If (Form.path_personal#"")
			SHOW ON DISK(Form.path_personal;*)
		End if 
		
		
End case 

Form.btnOpenPersonal.Draw()
