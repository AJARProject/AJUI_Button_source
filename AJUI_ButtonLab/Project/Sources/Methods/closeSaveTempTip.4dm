//%attributes = {}
  // closeSaveTempTip ( param1 ) 
  //
  // param1 : (boolean) save  template
  //
  // Save the template if validate 

#DECLARE($param1 : Boolean)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.11.19, 16:29:23
	  // ----------------------------------------------------
	  // Method: closeSaveTempTip
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
var $file; $folder : Object
var $templates_ptr : Pointer
var $icon; $templateName : Text
var $pos : Integer


If ($param1)
	
	$templates_ptr:=OBJECT Get pointer(Object named;"templates_list")
	$icon:=Form.tip_sf_details.tempIcon
	$templateName:=Form.btn1.templateName
	
	  //save template
	  //check picture
	If (Form.btn1.PicturePath(AJUI_btn_default)="") & (Form.btn1.PicturePath(AJUI_btn_hover)="") & (Form.btn1.PicturePath(AJUI_btn_active)="") & (Form.btn1.PicturePath(AJUI_btn_disable)="") & (Form.btn1.PicturePath(AJUI_btn_focus)="")
		  //Form.btn1.Export($templateName;getTlocPath ($icon))
		  //$folder:=Folder(getTlocPath ($icon)+$templateName+Folder separator;fk platform path)
		  //If ($folder.exists)
		  //$folder.delete(Delete with contents)
		  //End if 
	Else 
		$folder:=Folder(Form.tip_sf_details.currentTemplatePath+$templateName+Folder separator;fk platform path)
		If ($folder.exists)
			copyPictToFolderTemp (getTlocPath ($icon)+$templateName+Folder separator;$folder.platformPath)
		Else 
			copyPictToFolderTemp (getTlocPath ($icon)+$templateName+Folder separator;Form.tip_sf_details.currentTemplatePath)
		End if 
		
		Form.btn1.Export($templateName;getTlocPath ($icon)+$templateName+Folder separator)
		$file:=File(getTlocPath ($icon)+$templateName+".json";fk platform path)
		If ($file.exists)
			$file.delete()
		End if 
	End if 
	
	$pos:=Find in array($templates_ptr->;$templateName+$icon)
	If ($pos>0)
		  //nothing to do
	Else 
		APPEND TO ARRAY($templates_ptr->;$templateName+$icon)
		SORT ARRAY($templates_ptr->)
		$pos:=Find in array($templates_ptr->;$templateName+$icon)
		$templates_ptr->:=$pos
	End if 
	
	
	Form.currentBtn:=OB Copy(Form.btn1)
	templatesButtonsEnable (True;"btnSave")
	
	SET TIMER(-1)
Else 
	templatesButtonsEnable (True)
End if 

Form.tipSaveTemplateSubform.Hide()