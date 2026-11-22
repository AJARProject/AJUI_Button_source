
Case of 
	: (Form event code=On Load)
		Form.btn6:=New AJUI_Button 
		Form.btn6.Name("btn6")
		Form.btn6.Composition("picture")
		
		  //default
		Form.btn6.PicturePath(AJUI_btn_default;"4D_v16_60px.png")
		Form.btn6.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form.btn6.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form.btn6.BGColor(AJUI_btn_active;"gray")
		
End case 

Form.btn6.Draw()