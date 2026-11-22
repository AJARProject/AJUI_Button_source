  // scale = Proportionnel à la taille maximale de l'image 
  // rapportée à la taille disponible du bouton moins un 
  // padding de 5 et la taille de la bordure
  // valeur max est égale à 100 soit la taille du bouton




Case of 
	: (Form event code=On Load)
		Form.btn4:=New AJUI_Button 
		Form.btn4.Name("btn4")
		Form.btn4.Composition("picture")
		
		  //default
		Form.btn4.PicturePath(AJUI_btn_default;"4D_V16_596px.png")
		Form.btn4.PictureScale(AJUI_btn_default;30)
		Form.btn4.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form.btn4.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form.btn4.BGColor(AJUI_btn_active;"gray")
		
End case 

Form.btn4.Draw()