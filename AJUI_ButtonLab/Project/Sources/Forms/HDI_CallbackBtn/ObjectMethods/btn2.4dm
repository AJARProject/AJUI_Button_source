
Case of 
	: (Form event code=On Load)
		Form.btn2:=New AJUI_Button 
		Form.btn2.Name("btn2")
		Form.btn2.OnDoubleClick("onDoubleClick_cb")
		
		  //default
		Form.btn2.BGColor(AJUI_btn_default;"white")
		Form.btn2.Label(AJUI_btn_default;"Double Click")
		Form.btn2.FontColor(AJUI_btn_default;"#3498DB")
		Form.btn2.BorderSize(AJUI_btn_default;1)
		Form.btn2.BorderColor(AJUI_btn_default;"#3498DB")
		
		  //hover
		Form.btn2.BGColor(AJUI_btn_hover;"#3498DB")
		Form.btn2.FontColor(AJUI_btn_hover;"white")
		
		  //active
		Form.btn2.BGColor(AJUI_btn_active;"white")
		Form.btn2.Label(AJUI_btn_active;"Click in")
		
		
End case 


Form.btn2.Draw()