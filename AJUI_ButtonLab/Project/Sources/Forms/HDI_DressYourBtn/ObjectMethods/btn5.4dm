
Case of 
	: (Form event code=On Load)
		Form.btn5:=New AJUI_Button 
		Form.btn5.Name("btn5")
		
		  //default
		Form.btn5.BGColor(AJUI_btn_default;"magenta")
		Form.btn5.Label(AJUI_btn_default;"BTN 5")
		Form.btn5.BorderSize(AJUI_btn_default;2)
		
		  //hover
		Form.btn5.BGColor(AJUI_btn_hover;"violet")
		Form.btn5.Label(AJUI_btn_hover;"On Hover")
		Form.btn5.FontColor(AJUI_btn_hover;"brown")
		Form.btn5.FontName(AJUI_btn_hover;"MS Sans Sherif")
		Form.btn5.FontStyle(AJUI_btn_hover;"italic")
		Form.btn5.BorderColor(AJUI_btn_hover;"lawngreen")
		
		
		
End case 


Form.btn5.Draw()