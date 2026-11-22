
Case of 
	: (Form event code=On Load)
		Form.btn2:=New AJUI_Button 
		Form.btn2.Name("btn2")
		Form.btn2.Composition("picture")
		
		  //default
		Form.btn2.PicturePath(AJUI_btn_default;"4D_V16_596px.png")
		Form.btn2.PictureHeight(AJUI_btn_default;120)
		Form.btn2.PictureWidth(AJUI_btn_default;100)
		Form.btn2.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form.btn2.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form.btn2.BGColor(AJUI_btn_active;"gray")
		
End case 

Form.btn2.Draw()