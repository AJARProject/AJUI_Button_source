
Case of 
	: (Form event code=On Load)
		
		Form.btn3:=New AJUI_Button 
		Form.btn3.Name("btn3")
		
		  //default
		Form.btn3.BGColor(AJUI_btn_default;"lightgrey")
		Form.btn3.Label(AJUI_btn_default;"BTN 3")
		Form.btn3.BorderSize(AJUI_btn_default;2)
		
		  //hover
		Form.btn3.BGColor(AJUI_btn_hover;"darkgrey")
		Form.btn3.Label(AJUI_btn_hover;"On Hover")
		
		  //active
		Form.btn3.BGColor(AJUI_btn_active;"grey")
		Form.btn3.Label(AJUI_btn_active;"On Click")
		
		
End case 


Form.btn3.Draw()