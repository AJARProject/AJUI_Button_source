
Case of 
	: (Form event code=On Load)
		Form.btn_minus:=New AJUI_Button 
		Form.btn_minus.Name("btn_minus")
		Form.btn_minus.Composition("picture")
		Form.btn_minus.OnClick("minusOne_cb")
		Form.btn_minus.ColorToReplace("#434343")
		
		  //default
		Form.btn_minus.PicturePath(AJUI_btn_default;"svg/si-glyph-arrow-thick-down.svg")
		Form.btn_minus.PictureHeight(AJUI_btn_default;40)
		Form.btn_minus.PictureWidth(AJUI_btn_default;40)
		Form.btn_minus.ReplacingColor(AJUI_btn_default;"#3498DB")
		Form.btn_minus.BGColor(AJUI_btn_default;"white")
		Form.btn_minus.BorderSize(AJUI_btn_default;3)
		Form.btn_minus.BorderColor(AJUI_btn_default;"#3498DB")
		
		  //hover
		Form.btn_minus.BGColor(AJUI_btn_hover;"#3498DB")
		Form.btn_minus.ReplacingColor(AJUI_btn_hover;"#FFFFFF")
		
		  //active
		Form.btn_minus.BGColor(AJUI_btn_active;"#275DA3")
		Form.btn_minus.BorderColor(AJUI_btn_active;"#275DA3")
		Form.btn_minus.PicturePath(AJUI_btn_active;"svg/si-glyph-arrow-thick-down-white.svg")
		
		  //disable
		Form.btn_minus.BGColor(AJUI_btn_disable;"#CBCBCB")
		Form.btn_minus.BorderColor(AJUI_btn_disable;"#CBCBCB")
		Form.btn_minus.PicturePath(AJUI_btn_disable;"svg/si-glyph-arrow-thick-down-white.svg")
		
		
End case 

If (Form.number<=1) & (Form event code=On Mouse Up)
	Form.btn_minus.Enable(False)
End if 

Form.btn_minus.Draw()