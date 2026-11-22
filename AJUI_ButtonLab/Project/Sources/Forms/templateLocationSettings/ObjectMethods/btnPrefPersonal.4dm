
var $folder : Object
var $newPath : Text
Case of 
	: (Form event code=On Load)
		
		Form.btnPrefPersonal:=TLoc_btn_pref_init 
		Form.btnPrefPersonal.Name("btnPrefPersonal")
		Form.btnPrefPersonal.Label(AJUI_btn_default;"Personal (P)")
		
	: (Form event code=On Mouse Enter)
		Form.subInfoTip.TextLabel("Select a personal folder ")
		Form.subInfoTip.Show()
	: (Form event code=On Mouse Leave)
		Form.subInfoTip.Hide()
		
	: (Form event code=On Mouse Up)
		If (Form.path_personal="")
			$folder:=Folder(fk documents folder)
			$newPath:=Select folder("Select a shared folder Path";Convert path POSIX to system($folder.path))
		Else 
			$newPath:=Select folder("Select a shared folder Path";Form.path_personal)
		End if 
		If ($newPath#"")
			Form.path_personal:=$newPath
		End if 
End case 

Form.btnPrefPersonal.Draw()

