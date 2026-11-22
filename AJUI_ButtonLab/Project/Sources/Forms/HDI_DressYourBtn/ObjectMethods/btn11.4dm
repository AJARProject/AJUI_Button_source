
Case of 
	: (Form event code=On Load)
		Form.btn11:=New AJUI_Button 
		Form.btn11.Name("btn11")
		Form.btn11.Type("circle")
		
		  //default
		Form.btn11.BGColor(AJUI_btn_default;"palegreen")
		Form.btn11.Label(AJUI_btn_default;"BTN 8")
		Form.btn11.BorderSize(AJUI_btn_default;2)
		Form.btn11.FontColor(AJUI_btn_default;"blue")
		
		  //hover
		Form.btn11.BGColor(AJUI_btn_hover;"lime")
		Form.btn11.Label(AJUI_btn_hover;"On Hover")
		Form.btn11.BorderSize(AJUI_btn_hover;4)
		Form.btn11.FontSize(AJUI_btn_hover;18)
		
		
		
End case 


Form.btn11.Draw()