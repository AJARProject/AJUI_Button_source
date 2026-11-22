
var $templates_ptr : Pointer
var $isDeleted : Boolean
var $templateName; $icon; $fileName_t; $pathName_t; $checkFolder; $nameTemplate : Text
var $testPathName; $position; $pos : Integer
var $template_obj : Object
var $templates_pos : Integer
Case of 
	: (Form event code=On Load)
		Form.btnDelete:=newTemplateButton 
		Form.btnDelete.Name("btnDelete")
		Form.btnDelete.Label(AJUI_btn_default;"Delete")
		Form.btnDelete.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994410---delete-dustbin-garbage-recycle-bin-trash-can.svg")
		
		Form.tipDelete:=tip_templatesButtons ("btnDelete";"Delete template")
		
	: (Form event code=On Mouse Enter)
		
		If (OBJECT Get enabled(*;"btnDelete"))
			Form.tipDelete.TextLabel("Delete template")
			Form.tipDelete.Show()
		End if 
		
	: (Form event code=On Mouse Leave)
		
		Form.tipDelete.Hide()
		
	: (Form event code=On Clicked) & (Macintosh option down)  // alt+clic (Mac) OR Option+clic (Windows)
		
		  // to do
		
	: (Form event code=On Clicked)
		$templates_ptr:=OBJECT Get pointer(Object named;"templates_list")
		$templates_pos:=$templates_ptr->
		$icon:=getTLocIcon ($templates_ptr->{$templates_pos})
		$fileName_t:=Replace string($templates_ptr->{$templates_pos};$icon;"")
		
		CONFIRM("Are you sure that you want to delete\rthis template ?";"Yes just do it !";"Oups! Don't")
		If (OK=1)
			
			
			If ($fileName_t#"")
				If ($fileName_t="@.json")
					  //do nothing
				Else 
					$fileName_t:=$fileName_t+".json"
				End if 
				
				$pathName_t:=getTlocPath (Replace string($fileName_t;".json";"")+$icon)
				
				$testPathName:=Test path name($pathName_t+$fileName_t)
				
				  //delete template
				If ($testPathName=1)  //check file
					$checkFolder:="@"+Replace string($fileName_t;".json";Folder separator)
					If ($pathName_t=$checkFolder)
						DELETE FOLDER($pathName_t;Delete with contents)
					Else 
						DELETE DOCUMENT($pathName_t+$fileName_t)
					End if 
					If (OK=1)
						$templates_pos:=$templates_ptr->
						$position:=Find in array($templates_ptr->;$templates_ptr->{$templates_pos})
						If ($position>0)
							DELETE FROM ARRAY($templates_ptr->;$position)
							$templates_ptr->:=0
						End if 
						
						  //take first template if list not empty, else new template
						If (Size of array($templates_ptr->)>0)
							
							$templates_ptr->:=1
							$templateName:=$templates_ptr->{1}
							$templates_pos:=$templates_ptr->
							$icon:=getTLocIcon ($templates_ptr->{$templates_pos})
							$templateName:=Substring($templateName;1;Length($templateName)-4)
							$template_obj:=New object("templateName";$templateName;"templatePath";getTlocPath ($templateName+$icon))
							Form.btn1:=New AJUI_Button ($template_obj)
							Form.btn1.Name("btn1")
							Form.btn2:=OB Copy(Form.btn1)
							Form.btn2.ResetAllStates()
							Form.btn2.Name("btn2")
							Form.btn3:=OB Copy(Form.btn1)
							Form.btn3.ResetAllStates()
							Form.btn3.Name("btn3")
							Form.btn4:=OB Copy(Form.btn1)
							Form.btn4.ResetAllStates()
							Form.btn4.Name("btn4")
							Form.btn5:=OB Copy(Form.btn1)
							Form.btn5.ResetAllStates()
							Form.btn5.Name("btn5")
							Form.btn6:=OB Copy(Form.btn1)
							Form.btn6.ResetAllStates()
							Form.btn6.Name("btn6")
							Form.currentBtn:=OB Copy(Form.btn1)
							
						Else 
							
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
							$icon:=getTLocIcon 
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
							
						End if 
						
						LISTBOX SELECT ROW(*;"StatesLB";1)
						Form.currentState:=AJUI_btn_default
						formulasGetValues 
						REDRAW(OBJECT Get pointer(Object named;"LB_properties")->)
						refresh 
						redrawBtn 
						Form.currentBtn:=OB Copy(Form.btn1)
						Form.btnDelete.OnClick("alertDeleted")
						
						Form.btnSave.Enable(False)
						Form.btnSave.Draw()
						
					Else 
						ALERT("Unknow error : can't delete the template")
						Form.btnDelete.OnClick("")
					End if 
					
				Else 
					ALERT("File not found"+"\r\r"+$pathName_t+$fileName_t)
					Form.btnDelete.OnClick("")
				End if 
			End if 
			
		End if 
		
End case 


Form.btnDelete.Draw()

