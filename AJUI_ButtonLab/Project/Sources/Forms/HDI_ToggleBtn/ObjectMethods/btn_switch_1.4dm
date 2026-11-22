
var $template_obj : Object
Case of 
	: (Form event code=On Load)
		Form.toggle:=False
		
		
		  // Switch ON
		$template_obj:=New object("templateName";"switch_on.json")
		Form.btn1:=New AJUI_Button ($template_obj)
		Form.btn1.Name("btn_switch_1")
		
		  // Switch OFF
		$template_obj.templateName:="switch_off.json"
		Form.btn2:=New AJUI_Button ($template_obj)
		Form.btn2.Name("btn_switch_1")
		
		Form.btn_switch_1:=Form.btn1
		
	: (Form event code=On Clicked)
		
		Form.toggle:=Not(Form.toggle)
		
		If (Form.toggle)
			Form.btn_switch_1:=Form.btn2
		Else 
			Form.btn_switch_1:=Form.btn1
		End if 
		
End case 


Form.btn_switch_1.Draw()