
Case of 
	: (Form event code=On Load)
		Form.btn7:=New AJUI_Button 
		Form.btn7.Name("btn7")
		Form.btn7.Composition("picture")
		
		  //default
		Form.btn7.PicturePath(AJUI_btn_default;"4D_v16_60px.png")
		Form.btn7.PictureHeight(AJUI_btn_default;120)
		Form.btn7.PictureWidth(AJUI_btn_default;100)
		Form.btn7.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form.btn7.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form.btn7.BGColor(AJUI_btn_active;"gray")
		
End case 

Form.btn7.Draw()