
Case of 
	: (Form event code=On Load)
		
		
		Form.btnOpenGlobal:=TLoc_btn_pref_init 
		Form.btnOpenGlobal.Name("btnOpenGlobal")
		Form.btnOpenGlobal.Type("circle")
		Form.btnOpenGlobal.Composition("picture")
		Form.btnOpenGlobal.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994406---eye-on-show-view-visible.svg")
		
		
	: (Form event code=On Mouse Enter)
		Form.subInfoTip.TextLabel("Open global folder ")
		Form.subInfoTip.Show()
	: (Form event code=On Mouse Leave)
		Form.subInfoTip.Hide()
		
	: (Form event code=On Mouse Up)
		If (Form.path_global#"")
			SHOW ON DISK(Form.path_global;*)
		End if 
		
		
End case 

Form.btnOpenGlobal.Draw()
