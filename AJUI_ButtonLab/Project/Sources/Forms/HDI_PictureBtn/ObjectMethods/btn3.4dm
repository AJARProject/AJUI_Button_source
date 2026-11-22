
Case of 
	: (Form event code=On Load)
		Form.btn3:=New AJUI_Button 
		Form.btn3.Name("btn3")
		Form.btn3.Composition("picture")
		Form.btn3.ColorToReplace("#434343")
		
		  //default
		Form.btn3.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-1.svg")
		Form.btn3.PictureHeight(AJUI_btn_default;80)
		Form.btn3.PictureWidth(AJUI_btn_default;80)
		Form.btn3.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form.btn3.BGColor(AJUI_btn_hover;"darkgrey")
		Form.btn3.PicturePath(AJUI_btn_hover;"svg/si-glyph-dice-2.svg")
		Form.btn3.PictureOpacity(AJUI_btn_hover;60)
		Form.btn3.ReplacingColor(AJUI_btn_hover;"white")
		
		  //active
		Form.btn3.BGColor(AJUI_btn_active;"grey")
		Form.btn3.PicturePath(AJUI_btn_active;"svg/si-glyph-dice-3.svg")
		Form.btn3.PictureOpacity(AJUI_btn_active;100)
		Form.btn3.ReplacingColor(AJUI_btn_active;"white")
End case 

Form.btn3.Draw()