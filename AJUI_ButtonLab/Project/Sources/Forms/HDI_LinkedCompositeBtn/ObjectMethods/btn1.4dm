
Case of 
	: (Form event code=On Load)
		Form.btn1:=New AJUI_Button 
		Form.btn1.Name("btn1")
		Form.btn1.Composition("composite")
		Form.btn1.CompLinked(True)
		Form.btn1.ColorToReplace("#434343")
		
		  //default
		Form.btn1.PicturePath(AJUI_btn_default;"svg/si-glyph-call.svg")
		Form.btn1.PictureHeight(AJUI_btn_default;20)
		Form.btn1.PictureWidth(AJUI_btn_default;20)
		Form.btn1.BGColor(AJUI_btn_default;"lightgray")
		Form.btn1.Label(AJUI_btn_default;"Padding 0")
		Form.btn1.FontColor(AJUI_btn_default;"black")
		Form.btn1.CompPicturePosition(AJUI_btn_default;"left")
		Form.btn1.CompPictSizeAllocation(AJUI_btn_default;30)
		Form.btn1.CompPadding(AJUI_btn_default;0)
		
		  //hover
		Form.btn1.BGColor(AJUI_btn_hover;"darkgray")
		
		  //active
		Form.btn1.BGColor(AJUI_btn_active;"gray")
		Form.btn1.FontStyle(AJUI_btn_active;"bold")
		Form.btn1.FontColor(AJUI_btn_active;"white")
		Form.btn1.PictureHeight(AJUI_btn_active;30)
		Form.btn1.PictureWidth(AJUI_btn_active;30)
		Form.btn1.ReplacingColor(AJUI_btn_active;"white")
		
End case 

Form.btn1.Draw()