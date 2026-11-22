
var $templates_ptr : Pointer
var $nameTemplate; $icon; $templatePath : Text
var $file; $folder; $folderPref : Object
var $folderNotFound; $file_copy : Boolean
var $pos : Integer
var $templates_pos : Integer
Case of 
	: (Form event code=On Load)
		Form.btnDuplicate:=newTemplateButton 
		Form.btnDuplicate.Name("btnDuplicate")
		Form.btnDuplicate.Label(AJUI_btn_default;"Duplicate")
		Form.btnDuplicate.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994425---camera-interface-lens-photo-photography.svg")
		
		Form.tipDuplicate:=tip_templatesButtons ("btnDuplicate";"Duplicate template")
		
	: (Form event code=On Mouse Enter)
		
		If (OBJECT Get enabled(*;"btnDuplicate"))
			Form.tipDuplicate.TextLabel("Duplicate template")
			Form.tipDuplicate.Show()
		End if 
		
	: (Form event code=On Mouse Leave)
		
		Form.tipDuplicate.Hide()
		
	: (Form event code=On Clicked) & (Macintosh option down)  // alt+clic (Mac) OR Option+clic (Windows)
		
		  // to do
		
	: (Form event code=On Clicked)
		$templates_ptr:=OBJECT Get pointer(Object named;"templates_list")
		
		  //no need to redraw since its the same AJUI Button. Just need to update the template name and create the copy
		$templates_pos:=$templates_ptr->
		$icon:=getTLocIcon ($templates_ptr->{$templates_pos})
		$nameTemplate:=Form.btn1.templateName+"_copy"
		
		
		
		  //save duplicate
		$templatePath:=getTlocPath (Form.btn1.templateName+$icon)
		$folder:=Folder($templatePath;fk platform path)
		
		If ($folder.name=Form.btn1.templateName)
			$folderPref:=Folder(getTlocPath ($icon);fk platform path)
			If ($folder.exists)
				$folder:=$folder.copyTo($folderPref;$nameTemplate)
				$templatePath:=Replace string($templatePath;Form.btn1.templateName;$nameTemplate)
			Else 
				$folderNotFound:=True
			End if 
		Else 
			$file_copy:=True
		End if 
		
		If (Not($folderNotFound))
			$file:=File($templatePath+Form.btn1.templateName+".json";fk platform path)
			If ($file.exists)
				If ($file_copy)
					$file:=$file.copyTo($folder;$nameTemplate+".json";fk overwrite)
				Else 
					$file:=$file.rename($nameTemplate+".json")
				End if 
				Form.btn1.templateName:=$nameTemplate
				Form.btn1.Export($nameTemplate;$templatePath)
				$nameTemplate:=$nameTemplate+$icon
				$pos:=Find in array($templates_ptr->;$nameTemplate)
				If ($pos>0)
					$templates_ptr->:=$pos
				Else 
					APPEND TO ARRAY($templates_ptr->;$nameTemplate)
					SORT ARRAY($templates_ptr->)
					$pos:=Find in array($templates_ptr->;$nameTemplate)
					$templates_ptr->:=$pos
				End if 
				
				Form.btnSave.Enable(False)
				Form.btnSave.Draw()
				
				Form.currentBtn:=OB Copy(Form.btn1)
			Else 
				ALERT("File not found")
			End if 
		Else 
			ALERT("Folder not found")
		End if 
		
End case 


Form.btnDuplicate.Draw()