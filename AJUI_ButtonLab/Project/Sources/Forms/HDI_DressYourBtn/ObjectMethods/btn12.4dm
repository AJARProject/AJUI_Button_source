
Case of 
	: (Form event code=On Load)
		Form.btn12:=New AJUI_Button 
		Form.btn12.Name("btn12")
		Form.btn12.Type("circle")
		
		  //default
		Form.btn12.BGColor(AJUI_btn_default;"palegreen")
		Form.btn12.Label(AJUI_btn_default;"BTN 9")
		Form.btn12.BorderSize(AJUI_btn_default;2)
		Form.btn12.FontColor(AJUI_btn_default;"blue")
		
		  //hover
		Form.btn12.BGColor(AJUI_btn_hover;"lime")
		Form.btn12.Label(AJUI_btn_hover;"On Hover")
		Form.btn12.BorderSize(AJUI_btn_hover;4)
		Form.btn12.FontSize(AJUI_btn_hover;18)
		
		  //active
		Form.btn12.BGColor(AJUI_btn_active;"green")
		Form.btn12.Label(AJUI_btn_active;"On Click")
		Form.btn12.BorderSize(AJUI_btn_active;6)
		Form.btn12.FontSize(AJUI_btn_active;24)
		Form.btn12.FontColor(AJUI_btn_active;"lightblue")
		
		
End case 


Form.btn12.Draw()