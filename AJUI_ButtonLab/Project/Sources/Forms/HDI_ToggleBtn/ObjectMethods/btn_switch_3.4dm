
var $template_obj : Object
Case of 
	: (Form event code=On Load)
		Form.toggle:=False
		
		
		  // Switch ON
		$template_obj:=New object("templateName";"switch_on_model_2.json")
		Form.btn5:=New AJUI_Button ($template_obj)
		Form.btn5.Name("btn_switch_3")
		
		  // Switch OFF
		$template_obj.templateName:="switch_off_model_2.json"
		Form.btn6:=New AJUI_Button ($template_obj)
		Form.btn6.Name("btn_switch_3")
		
		Form.btn_switch_3:=Form.btn5
		
	: (Form event code=On Clicked)
		
		Form.toggle:=Not(Form.toggle)
		
		If (Form.toggle)
			Form.btn_switch_3:=Form.btn6
		Else 
			Form.btn_switch_3:=Form.btn5
		End if 
		
End case 


Form.btn_switch_3.Draw()