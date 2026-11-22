
Case of 
	: (Form event code=On Load)
		Form.btn1:=New AJUI_Button 
		Form.btn1.Name("btn1")
		
		  //default
		Form.btn1.BGColor(AJUI_btn_default;"white")
		Form.btn1.Label(AJUI_btn_default;"AJUI Button Lab")
		Form.btn1.FontColor(AJUI_btn_default;"#3498DB")
		Form.btn1.BorderSize(AJUI_btn_default;1)
		Form.btn1.BorderColor(AJUI_btn_default;"#3498DB")
		Form.btn1.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-1.svg")
		
		  //hover
		
		Form.btn1.FontColor(AJUI_btn_hover;"white")
		Form.btn1.PicturePath(AJUI_btn_hover;"svg/si-glyph-dice-2.svg")
		Form.btn1.BGColor(AJUI_btn_hover;"#4791C7")
		
		
		
		  //active
		Form.btn1.PicturePath(AJUI_btn_active;"svg/si-glyph-dice-3.svg")
		Form.btn1.FontColor(AJUI_btn_active;"white")
		Form.btn1.BGColor(AJUI_btn_active;"#4388BB")
		
		  //disable
		Form.btn1.FontColor(AJUI_btn_disable;"white")
		Form.btn1.BorderColor(AJUI_btn_disable;"#D1D0D0")
		Form.btn1.BGColor(AJUI_btn_disable;"#4d9ad4:50")
		
		  //focus
		Form.btn1.BorderSize(AJUI_btn_focus;3)
		
		Form.currentBtn:=New object()
		Form.currentBtn:=OB Copy(Form.btn1)
		
End case 




Form.btn1.Draw()




