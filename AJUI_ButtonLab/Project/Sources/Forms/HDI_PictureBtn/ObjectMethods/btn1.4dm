
Case of 
	: (Form event code=On Load)
		Form.btn1:=New AJUI_Button 
		Form.btn1.Name("btn1")
		Form.btn1.Composition("picture")
		
		  //default
		Form.btn1.PicturePath(AJUI_btn_default;"4D_V16_596px.png")
		Form.btn1.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form.btn1.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form.btn1.BGColor(AJUI_btn_active;"gray")
		
End case 

Form.btn1.Draw()