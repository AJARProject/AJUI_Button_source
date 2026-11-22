
Case of 
	: (Form event code=On Load)
		Form.btn3:=New AJUI_Button 
		Form.btn3.Name("btn3")
		
		  //default
		Form.btn3.Label(AJUI_btn_default;"AJUI Button Lab")
		Form.btn3.FontColor(AJUI_btn_default;"white")
		Form.btn3.BorderSize(AJUI_btn_default;1)
		Form.btn3.BorderColor(AJUI_btn_default;"#3498DB")
		Form.btn3.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-2.svg")
		Form.btn3.BGColor(AJUI_btn_default;"#4791C7")
		
		
		
		
		
		
End case 


Form.btn3.Draw()