
Case of 
	: (Form event code=On Load)
		Form.btn9:=New AJUI_Button 
		Form.btn9.Name("btn9")
		Form.btn9.Type("circle")
		
		  //default
		Form.btn9.BGColor(AJUI_btn_default;"palegreen")
		Form.btn9.Label(AJUI_btn_default;"BTN 9")
		Form.btn9.BorderSize(AJUI_btn_default;2)
		Form.btn9.FontColor(AJUI_btn_default;"blue")
		
		  //hover
		Form.btn9.BGColor(AJUI_btn_hover;"lime")
		Form.btn9.Label(AJUI_btn_hover;"On Hover")
		Form.btn9.BorderSize(AJUI_btn_hover;4)
		Form.btn9.FontSize(AJUI_btn_hover;18)
		
		  //active
		Form.btn9.BGColor(AJUI_btn_active;"green")
		Form.btn9.Label(AJUI_btn_active;"On Click")
		Form.btn9.BorderSize(AJUI_btn_active;6)
		Form.btn9.FontSize(AJUI_btn_active;24)
		Form.btn9.FontColor(AJUI_btn_active;"lightblue")
		
		
End case 


Form.btn9.Draw()