
var $templates_ptr : Pointer
Case of 
	: (Form event code=On Load)
		Form.btnReload:=newTemplateButton 
		Form.btnReload.Name("btnReload")
		Form.btnReload.Label(AJUI_btn_default;"Reload")
		Form.btnReload.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994399---refresh-reload-repeat-rotate-sync.svg")
		
		Form.tipReload:=tip_templatesButtons ("btnReload";"Reload template")
		
	: (Form event code=On Mouse Enter)
		
		If (OBJECT Get enabled(*;"btnReload"))
			Form.tipReload.TextLabel("Reload template")
			Form.tipReload.Show()
		End if 
		
	: (Form event code=On Mouse Leave)
		
		Form.tipReload.Hide()
		
	: (Form event code=On Clicked) & (Macintosh option down)  // alt+clic (Mac) OR Option+clic (Windows)
		
		  // to do
		
	: (Form event code=On Clicked)
		
		  //reload currentBtn
		Form.btn1:=OB Copy(Form.currentBtn)
		Form.btn1.Name("btn1")
		formulasGetValues 
		formulasSetValues 
		
		
		REDRAW(OBJECT Get pointer(Object named;"LB_properties")->)
		refresh 
		
		Form.btnSave.Enable(False)
		Form.btnSave.Draw()
		
		redrawBtn 
		
End case 


Form.btnReload.Draw()