
Case of 
	: (Form event code=On Load)
		Form.btn_plus:=New AJUI_Button 
		Form.btn_plus.Name("btn_plus")
		Form.btn_plus.Composition("picture")
		Form.btn_plus.OnClick("AddOne_cb")
		Form.btn_plus.ColorToReplace("#434343")
		
		  //default
		Form.btn_plus.PicturePath(AJUI_btn_default;"svg/si-glyph-arrow-thick-up.svg")
		Form.btn_plus.PictureHeight(AJUI_btn_default;40)
		Form.btn_plus.PictureWidth(AJUI_btn_default;40)
		Form.btn_plus.ReplacingColor(AJUI_btn_default;"#3498DB")
		Form.btn_plus.BGColor(AJUI_btn_default;"white")
		Form.btn_plus.BorderSize(AJUI_btn_default;3)
		Form.btn_plus.BorderColor(AJUI_btn_default;"#3498DB")
		
		  //hover
		Form.btn_plus.BGColor(AJUI_btn_hover;"#3498DB")
		Form.btn_plus.ReplacingColor(AJUI_btn_hover;"#FFFFFF")
		
		  //active
		Form.btn_plus.BGColor(AJUI_btn_active;"#275DA3")
		Form.btn_plus.BorderColor(AJUI_btn_active;"#275DA3")
		Form.btn_plus.PicturePath(AJUI_btn_active;"svg/si-glyph-arrow-thick-up-white.svg")
		
		  //disable
		Form.btn_plus.BGColor(AJUI_btn_disable;"#CBCBCB")
		Form.btn_plus.BorderColor(AJUI_btn_disable;"#CBCBCB")
		Form.btn_plus.PicturePath(AJUI_btn_disable;"svg/si-glyph-arrow-thick-up-white.svg")
		
		Form.btn_plus.Enable(False)  // to be set related to the initial value
		
End case 

If (Form.number>=4) & (Form event code=On Mouse Up)
	Form.btn_plus.Enable(False)
End if 

Form.btn_plus.Draw()