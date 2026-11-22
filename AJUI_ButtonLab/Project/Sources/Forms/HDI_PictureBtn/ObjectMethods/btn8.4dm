  // scale = Proportionnel à la taille maximale de l'image 
  // rapportée à la taille disponible du bouton moins un 
  // padding de 5 et la taille de la bordure
  // valeur max est égale à 100 soit la taille du bouton




Case of 
	: (Form event code=On Load)
		Form.btn8:=New AJUI_Button 
		Form.btn8.Name("btn8")
		Form.btn8.Composition("picture")
		
		  //default
		Form.btn8.PicturePath(AJUI_btn_default;"4D_v16_60px.png")
		Form.btn8.PictureScale(AJUI_btn_default;30)
		Form.btn8.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form.btn8.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form.btn8.BGColor(AJUI_btn_active;"gray")
		
End case 

Form.btn8.Draw()