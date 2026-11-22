
Case of 
	: (Form event code=On Load)
		Form.btn10:=New AJUI_Button 
		Form.btn10.Name("btn10")
		Form.btn10.Type("circle")
		
		  //default
		Form.btn10.BGColor(AJUI_btn_default;"palegreen")
		Form.btn10.Label(AJUI_btn_default;"BTN 7")
		Form.btn10.BorderSize(AJUI_btn_default;2)
		Form.btn10.FontColor(AJUI_btn_default;"blue")
		
		
		
End case 


Form.btn10.Draw()