
Case of 
	: (Form event code=On Load)
		Form.btn6:=New AJUI_Button 
		Form.btn6.Name("btn6")
		
		  //default
		Form.btn6.BGColor(AJUI_btn_default;"magenta")
		Form.btn6.Label(AJUI_btn_default;"BTN 6")
		Form.btn6.BorderSize(AJUI_btn_default;2)
		
		  //hover
		Form.btn6.BGColor(AJUI_btn_hover;"violet")
		Form.btn6.Label(AJUI_btn_hover;"On Hover")
		Form.btn6.FontColor(AJUI_btn_hover;"brown")
		Form.btn6.FontName(AJUI_btn_hover;"MS Sans Sherif")
		Form.btn6.FontStyle(AJUI_btn_hover;"italic")
		Form.btn6.BorderColor(AJUI_btn_hover;"lawngreen")
		
		  //active
		Form.btn6.BGColor(AJUI_btn_active;"darkviolet")
		Form.btn6.Label(AJUI_btn_active;"On Click")
		Form.btn6.FontColor(AJUI_btn_active;"aquamarine")
		Form.btn6.FontStyle(AJUI_btn_active;"bold")
		
		
End case 


Form.btn6.Draw()