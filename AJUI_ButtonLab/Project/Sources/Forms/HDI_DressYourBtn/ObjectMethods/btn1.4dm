
Case of 
	: (Form event code=On Load)
		Form.btn1:=New AJUI_Button 
		Form.btn1.Name("btn1")
		
		  //default
		Form.btn1.BGColor(AJUI_btn_default;"lightgrey")
		Form.btn1.Label(AJUI_btn_default;"BTN 1")
		Form.btn1.BorderSize(AJUI_btn_default;2)
		
		
		
End case 


Form.btn1.Draw()