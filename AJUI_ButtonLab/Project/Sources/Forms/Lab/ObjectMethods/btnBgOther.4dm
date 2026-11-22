
var $template_obj : Object
Case of 
	: (Form event code=On Load)
		
		tip_bgSelectBgColorOther 
		
		$template_obj:=New object("templateName";"set background color")
		Form.btnBgOther:=New AJUI_Button ($template_obj)
		Form.btnBgOther.Name("btnBgOther")
		Form.btnBgOtherParams:=New object("value";3100495;"setColorbtnBgOther";True)
		Form.btnBgOther.OnClick("Lab_setBgColor_btn";Form.btnBgOtherParams)
		  //default
		Form.btnBgOther.BGColor(AJUI_btn_default;"darkslategray")
		
	: (Form event code=On Mouse Up) & (Macintosh option down)  // alt+clic (Mac) OR Option+clic (Windows)
		
		Lab_SetBgColorOther 
		
	: (Form event code=On Mouse Enter)
		
		Form.tipBgColorOther.Show()
		
	: (Form event code=On Mouse Leave)
		
		Form.tipBgColorOther.Hide()
		
		  // https://doc.4d.com/4Dv17R5/4D/17-R5/SVG-Colors-RGB.302-4277201.en.html
End case 

Form.btnBgOther.Draw()