

Case of 
	: (Form event code=On Load)
		Form.btnProtect:=newTemplateButton 
		Form.btnProtect.Name("btnProtect")
		Form.btnProtect.Label(AJUI_btn_default;"Protect")
		
		bannerProtectRibbon 
		
		  //check template protect
		If (Form.btn1.protect)
			Form.btnProtect.Label(AJUI_btn_default;"Unprotect")
			Form.btnProtectBanner.DrawBanner()
			OBJECT SET VISIBLE(*;"RectProtect";True)
			Form.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994412---key-lock-open-password-unlock.svg")
		Else 
			Form.btnProtect.Label(AJUI_btn_default;"Protect")
			Form.btnProtectBanner.HideBanner()
			OBJECT SET VISIBLE(*;"RectProtect";False)
			Form.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994379---lock-padlock-privacy-protection-security.svg")
		End if 
		
		Form.tipProtect:=tip_templatesButtons ("btnProtect";"")
		
	: (Form event code=On Mouse Enter)
		
		If (OBJECT Get enabled(*;"btnProtect"))
			Form.tipProtect.TextLabel(Form.btnProtect.Label(AJUI_btn_default))
			Form.tipProtect.Show()
		End if 
		
	: (Form event code=On Mouse Leave)
		
		Form.tipProtect.Hide()
		
	: (Form event code=On Clicked) & (Macintosh option down)  // alt+clic (Mac) OR Option+clic (Windows)
		
	: (Form event code=On Clicked)
		Form.tipProtect.Hide()
		
		  //activate/inactive protect
		If (Form.btn1.protect)
			Form.btnProtect.Label(AJUI_btn_default;"Protect")
			Form.btn1.protect:=False
			Form.btnProtectBanner.HideBanner()
			OBJECT SET VISIBLE(*;"RectProtect";False)
			Form.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994379---lock-padlock-privacy-protection-security.svg")
			
		Else 
			Form.btnProtect.Label(AJUI_btn_default;"Unprotect")
			Form.btn1.protect:=True
			Form.btnProtectBanner.DrawBanner()
			OBJECT SET VISIBLE(*;"RectProtect";True)
			Form.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994412---key-lock-open-password-unlock.svg")
			GOTO OBJECT(*;"")
		End if 
		
		Form.btnSave.Enable(True)
		Form.btnSave.Draw()
End case 

Form.btnProtect.Draw()