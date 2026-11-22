
var $template_obj : Object
Case of 
	: (Form event code=On Load)
		
		$template_obj:=New object("templateName";"set background color")
		Form.btnBgDark:=New AJUI_Button ($template_obj)
		Form.btnBgDark.OnClick("Lab_setBgColor_btn";New object("value";0x0080;"setColorbtnBgOther";False))
		Form.btnBgDark.Name("btnBgDark")
		  //default
		Form.btnBgDark.BGColor(AJUI_btn_default;"navy")
		
End case 

Form.btnBgDark.Draw()