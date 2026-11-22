
Case of 
	: (Form event code=On Load)
		
		
		Form.btnPrefGlobal:=TLoc_btn_pref_init 
		Form.btnPrefGlobal.Name("btnPrefGlobal")
		Form.btnPrefGlobal.Label(AJUI_btn_default;"Global (G)")
		Form.btnPrefGlobal.Enable(False)
		
		
End case 

Form.btnPrefGlobal.Draw()
