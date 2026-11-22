
Case of 
	: (Form event code=On Load)
		Form.btn7:=New AJUI_Button 
		Form.btn7.Name("btn7")
		Form.btn7.Type("circle")
		
		  //default
		Form.btn7.BGColor(AJUI_btn_default;"palegreen")
		Form.btn7.Label(AJUI_btn_default;"BTN 7")
		Form.btn7.BorderSize(AJUI_btn_default;2)
		Form.btn7.FontColor(AJUI_btn_default;"blue")
		
		
		
End case 


Form.btn7.Draw()