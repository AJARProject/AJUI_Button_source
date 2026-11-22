
var $template_obj : Object
Case of 
	: (Form event code=On Load)
		Form.toggle:=False
		
		
		  // Switch ON
		$template_obj:=New object("templateName";"switch_on_custom.json")
		Form.btn7:=New AJUI_Button ($template_obj)
		Form.btn7.Name("btn_switch_4")
		
		  // Switch OFF
		$template_obj.templateName:="switch_off_custom.json"
		Form.btn8:=New AJUI_Button ($template_obj)
		Form.btn8.Name("btn_switch_4")
		
		Form.btn_switch_4:=Form.btn7
		
	: (Form event code=On Clicked)
		
		Form.toggle:=Not(Form.toggle)
		
		If (Form.toggle)
			Form.btn_switch_4:=Form.btn8
		Else 
			Form.btn_switch_4:=Form.btn7
		End if 
		
End case 


Form.btn_switch_4.Draw()