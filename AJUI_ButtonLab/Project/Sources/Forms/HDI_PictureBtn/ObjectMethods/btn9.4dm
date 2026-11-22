  // Ratio = rapport à la largeur et à la hauteur de l'image avec
  // comme valeur max la taille du bouton

Case of 
	: (Form event code=On Load)
		
		Form.btn9:=New AJUI_Button 
		Form.btn9.Name("btn9")
		Form.btn9.Composition("picture")
		
		  //default
		Form.btn9.PicturePath(AJUI_btn_default;"4D_v16_60px.png")
		Form.btn9.PictureRatio(AJUI_btn_default;0.15)
		Form.btn9.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form.btn9.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form.btn9.BGColor(AJUI_btn_active;"gray")
		
End case 

Form.btn9.Draw()