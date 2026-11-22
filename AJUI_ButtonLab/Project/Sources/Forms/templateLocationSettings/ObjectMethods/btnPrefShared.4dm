
var $folder : Object
var $newPath : Text
Case of 
	: (Form event code=On Load)
		
		
		Form.btnPrefShared:=TLoc_btn_pref_init 
		Form.btnPrefShared.Name("btnPrefShared")
		Form.btnPrefShared.Label(AJUI_btn_default;"Shared (S)")
		
	: (Form event code=On Mouse Enter)
		Form.subInfoTip.TextLabel("Select a shared folder ")
		Form.subInfoTip.Show()
	: (Form event code=On Mouse Leave)
		Form.subInfoTip.Hide()
		
	: (Form event code=On Mouse Up)
		If (Form.path_shared="")
			$folder:=Folder(fk documents folder)
			$newPath:=Select folder("Select a shared folder Path";Convert path POSIX to system($folder.path))
		Else 
			$newPath:=Select folder("Select a shared folder Path";Form.path_shared)
		End if 
		If ($newPath#"")
			Form.path_shared:=$newPath
		End if 
End case 

Form.btnPrefShared.Draw()

