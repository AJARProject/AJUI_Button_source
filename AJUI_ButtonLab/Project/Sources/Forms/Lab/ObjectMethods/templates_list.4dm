


var $templates_ptr : Pointer
var $template_obj; $folder : Object
var $templateName; $icon : Text
var $templates_col; $templates_col2 : Collection
var $i : Integer
var $templates_pos : Integer
$templates_ptr:=OBJECT Get pointer(Object named;"templates_list")

Case of 
	: (Form event code=On Load)
		
		
		CLEAR VARIABLE($templates_ptr->)
		
		If (Form.templateLocPref.path_global#"")
			$folder:=Folder(Form.templateLocPref.path_global;fk platform path)
			If ($folder.exists)
				$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
				
				For ($i;0;$templates_col.length-1)
					APPEND TO ARRAY($templates_ptr->;$templates_col[$i].templateName+" (G)")
				End for 
			End if 
		End if 
		
		If (Form.templateLocPref.path_personal#"")
			$folder:=Folder(Form.templateLocPref.path_personal;fk platform path)
			If ($folder.exists)
				
				$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
				
				For ($i;0;$templates_col.length-1)
					APPEND TO ARRAY($templates_ptr->;$templates_col[$i].templateName+" (P)")
				End for 
			End if 
		End if 
		
		If (Form.templateLocPref.path_shared#"")
			$folder:=Folder(Form.templateLocPref.path_shared;fk platform path)
			If ($folder.exists)
				
				$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
				
				For ($i;0;$templates_col.length-1)
					APPEND TO ARRAY($templates_ptr->;$templates_col[$i].templateName+" (S)")
				End for 
			End if 
		End if 
		
		SORT ARRAY($templates_ptr->)
		
		
	: (Form event code=On After Edit)  //after choosing another style
		
		
	: (Form event code=On Data Change)
		
		OBJECT SET ENABLED(*;"save_btn";True)
		
	: (Form event code=On Clicked)  //when the user select an element
		
		$templates_pos:=$templates_ptr->
		$templateName:=$templates_ptr->{$templates_pos}
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
		  // to do setup Lab bg color
		
		GOTO OBJECT(*;"")
		
		
		LISTBOX SELECT ROW(*;"StatesLB";1)
		Form.currentState:=AJUI_btn_default
		formulasSetValues 
		refresh 
		Form.btnSave.Enable(False)
		Form.btnSave.Draw()
		
		SET TIMER(-1)
		
		
		
End case 