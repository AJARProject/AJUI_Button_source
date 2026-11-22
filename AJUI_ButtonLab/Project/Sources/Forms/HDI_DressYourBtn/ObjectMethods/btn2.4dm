
Case of 
	: (Form event code=On Load)
		Form.btn2:=New AJUI_Button 
		Form.btn2.Name("btn2")
		
		  //default
		Form.btn2.BGColor(AJUI_btn_default;"lightgrey")
		Form.btn2.Label(AJUI_btn_default;"BTN 2")
		Form.btn2.BorderSize(AJUI_btn_default;2)
		
		  //hover
		Form.btn2.BGColor(AJUI_btn_hover;"darkgrey")
		Form.btn2.Label(AJUI_btn_hover;"On Hover")
		
		
		
End case 


Form.btn2.Draw()