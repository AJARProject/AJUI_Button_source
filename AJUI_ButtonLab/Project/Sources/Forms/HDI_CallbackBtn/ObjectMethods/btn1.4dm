
Case of 
	: (Form event code=On Load)
		Form.btn1:=New AJUI_Button 
		Form.btn1.Name("btn1")
		Form.btn1.OnClick("onClick_cb")
		
		  //default
		Form.btn1.BGColor(AJUI_btn_default;"white")
		Form.btn1.Label(AJUI_btn_default;"Click")
		Form.btn1.FontColor(AJUI_btn_default;"#3498DB")
		Form.btn1.BorderSize(AJUI_btn_default;1)
		Form.btn1.BorderColor(AJUI_btn_default;"#3498DB")
		
		  //hover
		Form.btn1.BGColor(AJUI_btn_hover;"#3498DB")
		Form.btn1.FontColor(AJUI_btn_hover;"white")
		
		  //active
		Form.btn1.BGColor(AJUI_btn_active;"white")
		Form.btn1.Label(AJUI_btn_active;"Click in")
		
		
End case 


Form.btn1.Draw()