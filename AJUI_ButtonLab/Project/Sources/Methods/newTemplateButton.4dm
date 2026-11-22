//%attributes = {}
  // newTemplateButton (  ) 
  //
  //
  // Init a template button

#DECLARE() -> $result : Object

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.08.19, 15:28:00
	  // ----------------------------------------------------
	  // Method: newTemplateButton
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $newButton_obj : Object

$newButton_obj:=New AJUI_Button 

  //global
$newButton_obj.Type("circle")
$newButton_obj.Composition("picture")

  //box
$newButton_obj.Resizable(True)
$newButton_obj.Height(AJUI_btn_default;30)
$newButton_obj.Width(AJUI_btn_default;30)
$newButton_obj.BGColor(AJUI_btn_default;"#4d9ad4")
$newButton_obj.BGColor(AJUI_btn_hover;"#005EA8")
$newButton_obj.BGColor(AJUI_btn_active;"white")
$newButton_obj.BGColor(AJUI_btn_disable;"lightgray")
$newButton_obj.BGColor(AJUI_btn_focus;"#9fddf9")

  //border
$newButton_obj.BorderColor(AJUI_btn_default;"#0a509e")
$newButton_obj.BorderSize(AJUI_btn_default;0)

  //picture
$newButton_obj.PictureHeight(AJUI_btn_default;15)
$newButton_obj.PictureWidth(AJUI_btn_default;15)
$newButton_obj.ColorToReplace(AJUI_btn_default;"#434343")
$newButton_obj.ReplacingColor(AJUI_btn_default;"white")
$newButton_obj.ReplacingColor(AJUI_btn_active;"#005EA8")
$newButton_obj.ReplacingColor(AJUI_btn_disable;"gray")


$result:=$newButton_obj