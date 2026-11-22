
var $templates_ptr : Pointer
Case of 
	: (Form event code=On Load)
		Form.btnNew:=newTemplateButton 
		Form.btnNew.Name("btnNew")
		Form.btnNew.Label(AJUI_btn_default;"New")
		Form.btnNew.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994437---add-create-new-plus-positive.svg")
		
		Tip_NewButtonName 
		
		Form.tipNew:=tip_templatesButtons ("btnNew";"New template")
		
	: (Form event code=On Mouse Enter)
		
		If (OBJECT Get enabled(*;"btnNew"))
			Form.tipNew.TextLabel("New template")
			Form.tipNew.Show()
		End if 
		
	: (Form event code=On Mouse Leave)
		
		Form.tipNew.Hide()
		
	: (Form event code=On Clicked) & (Macintosh option down)  // alt+clic (Mac) OR Option+clic (Windows)
		
	: (Form event code=On Clicked)
		
		If (OBJECT Get enabled(*;"btnNew"))
			Form.tipNew.Hide()
			Form.btnSaveActive:=OBJECT Get enabled(*;"btnSave")
			templatesButtonsEnable (False;"btnNew")
			Form.tip_sf_details.templateName:=""
			Form.tip_sf_details.rename:=False
			Form.tip_sf_details.templateLocPref:=OB Copy(Form.templateLocPref)
			Form.tipNewTemplate.TargetName("btnNew")
			Form.tipNewTemplate.Show()  // MI
			
		End if 
		
		
		
End case 

Form.btnNew.Draw()