//%attributes = {}
  // reloadTemplateList ( ) 
  //
  //
  // Reload the template list to apply a filter or after a modification in the preference file.

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 20.11.19, 15:41:27
	  // ----------------------------------------------------
	  // Method: reloadTemplateList
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $templates_ptr; $locationTemp_ptr : Pointer
var $tempCat; $templateName; $icon : Text
var $folder; $template_obj : Object
var $templates_col : Collection
var $i : Integer
var $locationTemp_pos : Integer
var $templates_pos : Integer

$locationTemp_ptr:=OBJECT Get pointer(Object named;"locationTemp_list")
$templates_ptr:=OBJECT Get pointer(Object named;"templates_list")
CLEAR VARIABLE($templates_ptr->)
$locationTemp_pos:=$locationTemp_ptr->
$tempCat:=$locationTemp_ptr->{$locationTemp_pos}

  //load global file
If ($tempCat="All") | ($tempCat="Global")
	If (Form.templateLocPref.path_global#"")
		$folder:=Folder(Form.templateLocPref.path_global;fk platform path)
		If ($folder.exists)
			$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
			
			For ($i;0;$templates_col.length-1)
				APPEND TO ARRAY($templates_ptr->;$templates_col[$i].templateName+" (G)")
			End for 
		End if 
	End if 
End if 

  //load personal file
If ($tempCat="All") | ($tempCat="Personal")
	If (Form.templateLocPref.path_personal#"")
		$folder:=Folder(Form.templateLocPref.path_personal;fk platform path)
		If ($folder.exists)
			
			$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
			
			For ($i;0;$templates_col.length-1)
				APPEND TO ARRAY($templates_ptr->;$templates_col[$i].templateName+" (P)")
			End for 
		End if 
	End if 
End if 

  //load shared file
If ($tempCat="All") | ($tempCat="Shared")
	If (Form.templateLocPref.path_shared#"")
		$folder:=Folder(Form.templateLocPref.path_shared;fk platform path)
		If ($folder.exists)
			
			$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
			
			For ($i;0;$templates_col.length-1)
				APPEND TO ARRAY($templates_ptr->;$templates_col[$i].templateName+" (S)")
			End for 
		End if 
	End if 
End if 

SORT ARRAY($templates_ptr->)

  //redraw buttons with the first template of the list
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
End if 

LISTBOX SELECT ROW(*;"StatesLB";1)
Form.currentState:=AJUI_btn_default
formulasGetValues 
formulasSetValues 
REDRAW(OBJECT Get pointer(Object named;"LB_properties")->)
refresh 
redrawBtn 