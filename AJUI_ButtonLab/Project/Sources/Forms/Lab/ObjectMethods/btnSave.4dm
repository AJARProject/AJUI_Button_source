

var $nameTemplate : Text
var $templates_ptr : Pointer
var $templates_pos : Integer
Case of 
	: (Form event code=On Load)
		Form.btnSave:=newTemplateButton 
		Form.btnSave.Name("btnSave")
		Form.btnSave.Label(AJUI_btn_default;"Save")
		Form.btnSave.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994423---checkmark-complete-correct-done-yes.svg")
		Form.btnSave.Enable(False)
		
		Tip_SaveTempSubform 
		Form.tipSaveTemp:=tip_templatesButtons ("btnSave";"Save template")
		
	: (Form event code=On Mouse Enter)
		
		If (OBJECT Get enabled(*;"btnSave"))
			Form.tipSaveTemp.TextLabel("Save template")
			Form.tipSaveTemp.Show()
		End if 
		
	: (Form event code=On Mouse Leave)
		
		Form.tipSaveTemp.Hide()
		
	: (Form event code=On Clicked) & (Macintosh option down)  // alt+clic (Mac) OR Option+clic (Windows)
		
		If (OBJECT Get enabled(*;"btnSave"))
			Form.tipSaveTemp.Hide()
			
			templatesButtonsEnable (False)
			$templates_ptr:=OBJECT Get pointer(Object named;"templates_list")
			Form.tip_sf_details.templateLocPref:=OB Copy(Form.templateLocPref)
			$templates_pos:=$templates_ptr->
			Form.tip_sf_details.currentTemplatePath:=getTlocPath (getTLocIcon ($templates_ptr->{$templates_pos}))
			Form.tip_sf_details.tempIcon:=getTLocIcon ($templates_ptr->{$templates_pos})
			closeSaveTempTip (True)
		End if 
		
	: (Form event code=On Clicked)
		
		If (OBJECT Get enabled(*;"btnSave"))
			Form.tipSaveTemp.Hide()
			
			templatesButtonsEnable (False)
			$templates_ptr:=OBJECT Get pointer(Object named;"templates_list")
			Form.tip_sf_details.templateLocPref:=OB Copy(Form.templateLocPref)
			$templates_pos:=$templates_ptr->
			Form.tip_sf_details.currentTemplatePath:=getTlocPath (getTLocIcon ($templates_ptr->{$templates_pos}))
			Form.tip_sf_details.tempIcon:=getTLocIcon ($templates_ptr->{$templates_pos})
			Form.tipSaveTemplateSubform.TargetName("btnSave")
			Form.tipSaveTemplateSubform.Show()
			
		End if 
		
		
End case 


Form.btnSave.Draw()