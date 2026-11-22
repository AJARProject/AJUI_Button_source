
var $template_obj : Object
Case of 
	: (Form event code=On Load)
		
		$template_obj:=New object("templateName";"set background color")
		Form.btnBgDeeppink:=New AJUI_Button ($template_obj)
		Form.btnBgDeeppink.OnClick("Lab_setBgColor_btn";New object("value";0x00FF1493;"setColorbtnBgOther";False))
		Form.btnBgDeeppink.Name("btnBgDeeppink")
		
		  //default
		Form.btnBgDeeppink.BGColor(AJUI_btn_default;"deeppink")
		
End case 

Form.btnBgDeeppink.Draw()