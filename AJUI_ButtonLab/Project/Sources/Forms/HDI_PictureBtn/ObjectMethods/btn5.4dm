  // Ratio = rapport à la largeur et à la hauteur de l'image avec
  // comme valeur max la taille du bouton

Case of 
	: (Form event code=On Load)
		
		Form.btn5:=New AJUI_Button 
		Form.btn5.Name("btn5")
		Form.btn5.Composition("picture")
		
		  //default
		Form.btn5.PicturePath(AJUI_btn_default;"4D_V16_596px.png")
		Form.btn5.PictureRatio(AJUI_btn_default;0.15)
		Form.btn5.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form.btn5.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form.btn5.BGColor(AJUI_btn_active;"gray")
		
End case 

Form.btn5.Draw()