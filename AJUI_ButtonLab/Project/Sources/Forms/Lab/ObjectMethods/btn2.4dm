
Case of 
	: (Form event code=On Load)
		Form.btn2:=New AJUI_Button 
		Form.btn2.Name("btn2")
		
		  //default
		Form.btn2.BGColor(AJUI_btn_default;"white")
		Form.btn2.Label(AJUI_btn_default;"AJUI Button Lab")
		Form.btn2.FontColor(AJUI_btn_default;"#3498DB")
		Form.btn2.BorderSize(AJUI_btn_default;1)
		Form.btn2.BorderColor(AJUI_btn_default;"#3498DB")
		Form.btn2.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-1.svg")
		
		
		
		
End case 


Form.btn2.Draw()