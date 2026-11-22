
Case of 
	: (Form event code=On Load)
		Form.btn8:=New AJUI_Button 
		Form.btn8.Name("btn8")
		Form.btn8.Type("circle")
		
		  //default
		Form.btn8.BGColor(AJUI_btn_default;"palegreen")
		Form.btn8.Label(AJUI_btn_default;"BTN 8")
		Form.btn8.BorderSize(AJUI_btn_default;2)
		Form.btn8.FontColor(AJUI_btn_default;"blue")
		
		  //hover
		Form.btn8.BGColor(AJUI_btn_hover;"lime")
		Form.btn8.Label(AJUI_btn_hover;"On Hover")
		Form.btn8.BorderSize(AJUI_btn_hover;4)
		Form.btn8.FontSize(AJUI_btn_hover;18)
		
		
		
End case 


Form.btn8.Draw()