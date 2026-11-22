//%attributes = {}
  // HDI_Focus

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 20.11.19, 11:04:43
	  // ----------------------------------------------------
	  // Method: HDI_Focus
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

var $currentBtnName : Text
var $template : Object
$currentBtnName:=OBJECT Get name(Object current)

Case of 
	: (Form event code=On Load)
		  // Load the template 
		$template:=New object("templateName";"Blog4D_solidButton")
		Form[$currentBtnName]:=New AJUI_Button ($template)
		Form[$currentBtnName].Name($currentBtnName)
		Form[$currentBtnName].OnClick("onClick_cb")
		Form[$currentBtnName].Label(AJUI_btn_default;$currentBtnName)
		
	: (Form event code=On Getting Focus)
		OBJECT SET SHORTCUT(*;"clickButton";" ")  // set a space as a shortcut
		
	: (Form event code=On Losing Focus)
		OBJECT SET SHORTCUT(*;"clickButton";"")  // remove the shortcut
		
End case 

Form[$currentBtnName].Draw()

