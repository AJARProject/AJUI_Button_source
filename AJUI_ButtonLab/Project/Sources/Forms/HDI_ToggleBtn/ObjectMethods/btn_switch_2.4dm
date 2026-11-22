
var $template_obj : Object
Case of 
	: (Form event code=On Load)
		Form.toggle:=False
		
		
		  // Switch ON
		$template_obj:=New object("templateName";"switch_on_model_1")
		Form.btn3:=New AJUI_Button ($template_obj)
		Form.btn3.Name("btn_switch_2")
		
		  // Switch OFF
		$template_obj.templateName:="switch_off_model_1"
		Form.btn4:=New AJUI_Button ($template_obj)
		Form.btn4.Name("btn_switch_2")
		
		Form.btn_switch_2:=Form.btn3
		
	: (Form event code=On Clicked)
		
		Form.toggle:=Not(Form.toggle)
		
		If (Form.toggle)
			Form.btn_switch_2:=Form.btn4
		Else 
			Form.btn_switch_2:=Form.btn3
		End if 
		
End case 


Form.btn_switch_2.Draw()