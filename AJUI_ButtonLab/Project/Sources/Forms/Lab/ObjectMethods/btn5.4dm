
Case of 
	: (Form event code=On Load)
		
		Form.btn5:=New AJUI_Button 
		Form.btn5.Name("btn5")
		
		  //default
		Form.btn5.BGColor(AJUI_btn_disable;"#4d9ad4:50")
		Form.btn5.Label(AJUI_btn_default;"AJUI Button Lab")
		Form.btn5.FontColor(AJUI_btn_default;"white")
		Form.btn5.BorderSize(AJUI_btn_default;1)
		Form.btn5.BorderColor(AJUI_btn_default;"#D1D0D0")
		Form.btn5.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-1.svg")
		
		
		
		Form.btn5.Enable(False)
		
		
End case 


Form.btn5.Draw()