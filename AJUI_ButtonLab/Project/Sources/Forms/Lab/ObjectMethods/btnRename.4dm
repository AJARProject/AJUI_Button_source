

Case of 
	: (Form event code=On Load)
		
		Form.btnRename:=newTemplateButton 
		Form.btnRename.Name("btnRename")
		Form.btnRename.Label(AJUI_btn_default;"Rename")
		Form.btnRename.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994395---edit-pen-pencil-stationery-write.svg")
		
		Tip_NewButtonName 
		
		Form.tipRename:=tip_templatesButtons ("btnRename";"Rename template")
		
	: (Form event code=On Mouse Enter)
		
		If (OBJECT Get enabled(*;"btnRename"))
			Form.tipRename.TextLabel("Rename template")
			Form.tipRename.Show()
		End if 
		
	: (Form event code=On Mouse Leave)
		
		Form.tipRename.Hide()
		
	: (Form event code=On Clicked) & (Macintosh option down)  // alt+clic (Mac) OR Option+clic (Windows)
		
	: (Form event code=On Clicked)
		
		If (OBJECT Get enabled(*;"btnRename"))
			Form.tipRename.Hide()
			Form.btnSaveActive:=OBJECT Get enabled(*;"btnSave")
			templatesButtonsEnable (False;"btnRename")
			Form.tip_sf_details.templateName:=Form.btn1.templateName
			Form.tip_sf_details.rename:=True
			Form.tipNewTemplate.TargetName("btnRename")
			Form.tipNewTemplate.Show()
		End if 
		
		
		
End case 

Form.btnRename.Draw()