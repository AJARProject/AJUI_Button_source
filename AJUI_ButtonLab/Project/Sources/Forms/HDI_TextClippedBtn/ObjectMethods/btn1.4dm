
Case of 
	: (Form event code=On Load)
		Form.btn1:=New AJUI_Button 
		Form.btn1.Name("btn1")
		Form.btn1.Composition("text")
		
		
		  //default
		Form.btn1.BGColor(AJUI_btn_default;"lightgray")
		Form.btn1.Label(AJUI_btn_default;"Text clipped when it's too long")
		Form.btn1.FontColor(AJUI_btn_default;"black")
		Form.btn1.CornerRadius(AJUI_btn_default;15)
		
		  //hover
		Form.btn1.BGColor(AJUI_btn_hover;"darkgray")
		
		  //active
		Form.btn1.BGColor(AJUI_btn_active;"gray")
		
		
		
		
End case 



Form.btn1.Draw()