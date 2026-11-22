
Case of 
	: (Form event code=On Load)
		Form.btn3:=New AJUI_Button 
		Form.btn3.Name("btn3")
		Form.btn3.Composition("composite")
		Form.btn3.CompLinked(True)
		Form.btn3.ColorToReplace("#434343")
		
		  //default
		Form.btn3.PicturePath(AJUI_btn_default;"svg/si-glyph-call.svg")
		Form.btn3.PictureHeight(AJUI_btn_default;20)
		Form.btn3.PictureWidth(AJUI_btn_default;20)
		Form.btn3.BGColor(AJUI_btn_default;"lightgray")
		Form.btn3.Label(AJUI_btn_default;"Padding 20")
		Form.btn3.FontColor(AJUI_btn_default;"black")
		Form.btn3.CompPicturePosition(AJUI_btn_default;"left")
		Form.btn3.CompPictSizeAllocation(AJUI_btn_default;30)
		Form.btn3.CompPadding(AJUI_btn_default;20)
		Form.btn3.ReplacingColor(AJUI_btn_active;"#434343")
		
		  //hover
		Form.btn3.BGColor(AJUI_btn_hover;"darkgray")
		
		  //active
		Form.btn3.BGColor(AJUI_btn_active;"gray")
		Form.btn3.FontStyle(AJUI_btn_active;"bold")
		Form.btn3.FontColor(AJUI_btn_active;"white")
		Form.btn3.PictureHeight(AJUI_btn_active;30)
		Form.btn3.PictureWidth(AJUI_btn_active;30)
		Form.btn3.ReplacingColor(AJUI_btn_active;"white")
		
End case 

Form.btn3.Draw()