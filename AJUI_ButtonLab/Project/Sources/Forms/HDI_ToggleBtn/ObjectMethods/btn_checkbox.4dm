
var $template_obj : Object
Case of 
	: (Form event code=On Load)
		Form.toggle_checkbox:=False
		
		
		  // Checkbox ON
		$template_obj:=New object("templateName";"Checkbox-mac-on.json")
		Form.btn_checkbox_on:=New AJUI_Button ($template_obj)
		Form.btn_checkbox_on.Name("btn_checkbox")
		Form.btn_checkbox_on.Label(AJUI_btn_default;"Disable switch button")
		
		  // Checkbox OFF
		$template_obj.templateName:="Checkbox-mac-off.json"
		Form.btn_checkbox_off:=New AJUI_Button ($template_obj)
		Form.btn_checkbox_off.Name("btn_checkbox")
		Form.btn_checkbox_off.Label(AJUI_btn_default;"Disable switch button")
		
		Form.btn_checkbox:=Form.btn_checkbox_off
		
	: (Form event code=On Clicked)
		
		Form.toggle_checkbox:=Not(Form.toggle_checkbox)
		
		If (Form.toggle_checkbox)
			Form.btn_checkbox:=Form.btn_checkbox_on
			Form.btn_switch_1.Enable(False)
			Form.btn_switch_2.Enable(False)
			Form.btn_switch_3.Enable(False)
			Form.btn_switch_4.Enable(False)
		Else 
			Form.btn_checkbox:=Form.btn_checkbox_off
			Form.btn_switch_1.Enable(True)
			Form.btn_switch_2.Enable(True)
			Form.btn_switch_3.Enable(True)
			Form.btn_switch_4.Enable(True)
		End if 
		
End case 


Form.btn_checkbox.Draw()