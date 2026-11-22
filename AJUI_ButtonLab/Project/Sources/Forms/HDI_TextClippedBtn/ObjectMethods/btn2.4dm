
Case of 
	: (Form event code=On Load)
		Form.btn2:=New AJUI_Button 
		Form.btn2.Name("btn2")
		Form.btn2.Composition("composite")
		Form.btn2.CompActiveSecondColor(True)
		
		
		  //default
		Form.btn2.PicturePath(AJUI_btn_default;"svg/si-glyph-call.svg")
		Form.btn2.PictureHeight(AJUI_btn_default;30)
		Form.btn2.PictureWidth(AJUI_btn_default;30)
		Form.btn2.BGColor(AJUI_btn_default;"lightgray")
		Form.btn2.BGSecondaryColor(AJUI_btn_default;"salmon")
		Form.btn2.CornerRadius(AJUI_btn_default;15)
		Form.btn2.Label(AJUI_btn_default;"Text clipped when it's too long")
		Form.btn2.FontColor(AJUI_btn_default;"black")
		Form.btn2.CompPicturePosition(AJUI_btn_default;"left")
		Form.btn2.CompPictSizeAllocation(AJUI_btn_default;30)
		
		  //hover
		Form.btn2.BGColor(AJUI_btn_hover;"darkgray")
		
		  //active
		Form.btn2.BGColor(AJUI_btn_active;"gray")
		
		
		
		
		
End case 



Form.btn2.Draw()