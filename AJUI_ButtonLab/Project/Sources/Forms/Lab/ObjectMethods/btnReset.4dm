
var $templates_ptr : Pointer
Case of 
	: (Form event code=On Load)
		Form.btnReset:=newTemplateButton 
		Form.btnReset.Name("btnReset")
		Form.btnReset.Label(AJUI_btn_default;"Reset")
		Form.btnReset.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994435---ban-banned-block-disabled-stop.svg")
		
		Form.tipReset:=tip_templatesButtons ("btnReset";"Reset states exceptions")
		
	: (Form event code=On Mouse Enter)
		
		If (OBJECT Get enabled(*;"btnReset"))
			Form.tipReset.TextLabel("Reset states exceptions")
			Form.tipReset.Show()
		End if 
		
	: (Form event code=On Mouse Leave)
		
		Form.tipReset.Hide()
		
	: (Form event code=On Clicked) & (Macintosh option down)  // alt+clic (Mac) OR Option+clic (Windows)
		
		
	: (Form event code=On Clicked)
		  //reset states
		Form.btn1.ResetAllStates()
		
		Form.btnSave.Enable(True)
		Form.btnSave.Draw()
		
		formulasGetValues 
		formulasSetValues 
		REDRAW(OBJECT Get pointer(Object named;"LB_properties")->)
		redrawBtn 
End case 

Form.btnReset.Draw()