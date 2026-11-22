
var $template_obj : Object
Case of 
	: (Form event code=On Load)
		
		$template_obj:=New object("templateName";"set background color")
		Form.btnBgWhite:=New AJUI_Button ($template_obj)
		Form.btnBgWhite.OnClick("Lab_setBgColor_btn";New object("value";0x00FFFFFF;"setColorbtnBgOther";False))
		Form.btnBgWhite.Name("btnBgWhite")
		
		  //default
		Form.btnBgWhite.BGColor(AJUI_btn_default;"white")
		
End case 

Form.btnBgWhite.Draw()