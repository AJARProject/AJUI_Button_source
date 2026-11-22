
Case of 
	: (Form event code=On Load)
		
		Form.btn6:=New AJUI_Button 
		Form.btn6.Name("btn6")
		
		  //default
		Form.btn6.BGColor(AJUI_btn_default;"white")
		Form.btn6.Label(AJUI_btn_default;"AJUI Button Lab")
		Form.btn6.FontColor(AJUI_btn_default;"white")
		Form.btn6.BorderSize(AJUI_btn_default;1)
		Form.btn6.BorderColor(AJUI_btn_default;"#D1D0D0")
		Form.btn6.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-1.svg")
		Form.btn6.BorderSize(AJUI_btn_default;3)
		
		
		
		Form.btn6.Enable(False)
		
		
End case 


Form.btn6.Draw()