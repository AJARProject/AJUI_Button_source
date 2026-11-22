//%attributes = {}
  // closeNewNameTip ( param1 ) 
  //
  // param1 : (boolean) add new template
  //
  // Add the new template if validate and update the form objects

#DECLARE($param1 : Boolean)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 14.08.19, 09:19:41
	  // ----------------------------------------------------
	  // Method: closeNewNameTip
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
var $nameTemplate; $newNameTemplate; $icon; $fileName; $pathName : Text
var $file; $folder : Object
var $templates_ptr : Pointer
var $pos : Integer
var $templates_pos : Integer

If ($param1)
	$templates_ptr:=OBJECT Get pointer(Object named;"templates_list")
	
	  //check it's a rename or a new template
	If (Form.tip_sf_details.rename)
		$templates_pos:=$templates_ptr->
		$icon:=getTLocIcon ($templates_ptr->{$templates_pos})
		$pos:=Find in array($templates_ptr->;Form.btn1.templateName+$icon)
		If ($pos>0)
			$fileName:=Form.btn1.templateName
			
			If ($fileName#"")
				If ($fileName="@.json")
					  //do nothing
				Else 
					$fileName:=$fileName+".json"
				End if 
				$pathName:=getTlocPath (Form.btn1.templateName+$icon)
				$file:=File($pathName+$fileName;fk platform path)
				
				  //replace the old template with the new one
				If ($file.exists)  //check file
					$newNameTemplate:=Form.tip_sf_details.templateName
					$file:=$file.rename($newNameTemplate+".json")
					If ($file.exists)
						
						Form.btn1.templateName:=$newNameTemplate
						Form.btn1.Export($newNameTemplate;$pathName)
						
						$folder:=Folder($pathName;fk platform path)
						If ($folder.name=(Replace string($fileName;".json";"")))
							$folder:=$folder.rename($newNameTemplate)
							If (Not($folder.exists))
								ALERT("File renamed correctly, but the renaming of the folder failed")
							End if 
						End if 
						
						
						
						$templates_pos:=$templates_ptr->
						$templates_ptr->{$templates_pos}:=$newNameTemplate+$icon
						
						
						SORT ARRAY($templates_ptr->)
						$pos:=Find in array($templates_ptr->;Form.btn1.templateName+$icon)
						$templates_ptr->:=$pos
					Else 
						ALERT("Unknow error : can't rename the template")
					End if 
				Else 
					ALERT("File not found"+"\r\r"+$pathName+$fileName)
				End if 
			End if 
		Else 
			ALERT("No template selected")
		End if 
	Else 
		
		  //create new template
		Form.btn1:=New AJUI_Button 
		Form.btn1.Name("btn1")
		Form.btn1.BGColor(AJUI_btn_hover;"#4791C7")
		Form.btn1.BGColor(AJUI_btn_active;"#4388BB")
		Form.btn1.BGColor(AJUI_btn_disable;"#4d9ad4:50")
		Form.btn1.BorderSize(AJUI_btn_focus;3)
		Form.btn1.templateName:=Form.tip_sf_details.templateName
		Form.btn2:=New AJUI_Button 
		Form.btn2.Name("btn2")
		Form.btn3:=New AJUI_Button 
		Form.btn3.Name("btn3")
		Form.btn3.BGColor(AJUI_btn_default;"#4791C7")
		Form.btn4:=New AJUI_Button 
		Form.btn4.Name("btn4")
		Form.btn4.BGColor(AJUI_btn_default;"#4388BB")
		Form.btn5:=New AJUI_Button 
		Form.btn5.Name("btn5")
		Form.btn5.BGColor(AJUI_btn_disable;"#4d9ad4:50")
		Form.btn6:=New AJUI_Button 
		Form.btn6.Name("btn6")
		Form.btn6.BorderSize(AJUI_btn_default;3)
		
		  //save new template
		$icon:=Form.tip_sf_details.tempIcon
		$nameTemplate:=Form.btn1.templateName
		Form.btn1.Export($nameTemplate;getTlocPath ($icon))
		$nameTemplate:=$nameTemplate+$icon
		$pos:=Find in array($templates_ptr->;$nameTemplate)
		If ($pos>0)
			  //nothing to do
		Else 
			APPEND TO ARRAY($templates_ptr->;$nameTemplate)
			SORT ARRAY($templates_ptr->)
			$pos:=Find in array($templates_ptr->;$nameTemplate)
			$templates_ptr->:=$pos
		End if 
		LISTBOX SELECT ROW(*;"StatesLB";1)
		Form.currentState:=AJUI_btn_default
		formulasGetValues 
		
		REDRAW(OBJECT Get pointer(Object named;"LB_properties")->)
		refresh 
		
		Form.btnSave.Enable(False)
		Form.btnSave.Draw()
		
		redrawBtn 
		
		
	End if 
	Form.currentBtn:=OB Copy(Form.btn1)
	  //enable/disable template buttons
	templatesButtonsEnable (True;"btnSave")
Else 
	  //enable/disable template buttons
	If (Form.btnSaveActive)
		templatesButtonsEnable (True)
	Else 
		templatesButtonsEnable (True;"btnSave")
	End if 
End if 

Form.tipNewTemplate.Hide()

