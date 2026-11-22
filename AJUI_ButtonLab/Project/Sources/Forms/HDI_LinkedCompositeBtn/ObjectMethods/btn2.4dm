
Case of 
	: (Form event code=On Load)
		Form.btn2:=New AJUI_Button 
		Form.btn2.Name("btn2")
		Form.btn2.Composition("composite")
		Form.btn2.CompLinked(True)
		Form.btn2.ColorToReplace("#434343")
		
		  //default
		Form.btn2.PicturePath(AJUI_btn_default;"svg/si-glyph-call.svg")
		Form.btn2.PictureHeight(AJUI_btn_default;20)
		Form.btn2.PictureWidth(AJUI_btn_default;20)
		Form.btn2.BGColor(AJUI_btn_default;"lightgray")
		Form.btn2.Label(AJUI_btn_default;"Padding 10")
		Form.btn2.FontColor(AJUI_btn_default;"black")
		Form.btn2.CompPicturePosition(AJUI_btn_default;"left")
		Form.btn2.CompPictSizeAllocation(AJUI_btn_default;30)
		Form.btn2.CompPadding(AJUI_btn_default;10)
		
		  //hover
		Form.btn2.BGColor(AJUI_btn_hover;"darkgray")
		
		  //active
		Form.btn2.BGColor(AJUI_btn_active;"gray")
		Form.btn2.FontStyle(AJUI_btn_active;"bold")
		Form.btn2.FontColor(AJUI_btn_active;"white")
		Form.btn2.PictureHeight(AJUI_btn_active;30)
		Form.btn2.PictureWidth(AJUI_btn_active;30)
		Form.btn2.ReplacingColor(AJUI_btn_active;"white")
		
End case 

Form.btn2.Draw()