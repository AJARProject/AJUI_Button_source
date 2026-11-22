
var $currentBtnName : Text
var $template : Object
var $evt : Integer
$currentBtnName:=OBJECT Get name(Object current)

$evt:=Form event code

Case of 
	: ($evt=On Load)
		Form.FABisActive:=False
		
		  // Load the primary button template 
		$template:=New object("templateName";"Blog4D_FAB")
		Form[$currentBtnName]:=New AJUI_Button ($template)
		Form[$currentBtnName].Name($currentBtnName)
		Form[$currentBtnName].Height(AJUI_btn_default;40)
		Form[$currentBtnName].Width(AJUI_btn_default;40)
		Form[$currentBtnName].FABIsMainButton(True)
		Form[$currentBtnName].FABIsAnimated(True)
		FAB_refreshCollection (3)
		
		
	: ($evt=On Mouse Up)
		If (Form.FABisActive)
			Form.FABisActive:=False
			FAB_enableObject (True)
		Else 
			Form.FABisActive:=True
			FAB_enableObject (False)
		End if 
		
		
		
	: (Form event code=On Getting Focus)
		OBJECT SET SHORTCUT(*;"clickButton";" ")  // set a space as a shortcut
		
	: (Form event code=On Losing Focus)
		OBJECT SET SHORTCUT(*;"clickButton";"")  // remove the shortcut
		
End case 

Form[$currentBtnName].Draw()
