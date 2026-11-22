//%attributes = {}
  // btn_pref_init () -> return
  //
  // $subformButton_obj : (object) (return) AJUI Button instance
  //
  // Init a button (used in subforms location pref of the lab)
#DECLARE() -> $result : Object

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 13.11.19, 11:19:36
	  // ----------------------------------------------------
	  // Method: btn_pref_init
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $subformButton_obj : Object

$subformButton_obj:=New AJUI_Button 

  //global
$subformButton_obj.Type("rectangle")
$subformButton_obj.Composition("text")

  //box
$subformButton_obj.Resizable(False)
$subformButton_obj.BGColor(AJUI_btn_default;"#FFFFFF")
$subformButton_obj.BGColor(AJUI_btn_hover;"#076BFF")
$subformButton_obj.BGColor(AJUI_btn_active;"#005EA8")
$subformButton_obj.BGColor(AJUI_btn_disable;"#FFFFFF:80")

  //border
$subformButton_obj.BorderColor(AJUI_btn_default;"#B7B7B7")
$subformButton_obj.BorderColor(AJUI_btn_disable;"#DDDDDD")
$subformButton_obj.BorderSize(AJUI_btn_default;1)

  //text
$subformButton_obj.FontName(AJUI_btn_default;"Arial")
$subformButton_obj.FontColor(AJUI_btn_default;"black")
$subformButton_obj.FontColor(AJUI_btn_hover;"white")
$subformButton_obj.FontColor(AJUI_btn_active;"white")
$subformButton_obj.FontColor(AJUI_btn_disable;"grey")
$subformButton_obj.FontSize(AJUI_btn_default;15)
$subformButton_obj.FontSize(AJUI_btn_active;16)

  //picture
$subformButton_obj.PictureHeight(AJUI_btn_default;15)
$subformButton_obj.PictureWidth(AJUI_btn_default;15)
$subformButton_obj.ColorToReplace(AJUI_btn_default;"#434343")
$subformButton_obj.ReplacingColor(AJUI_btn_default;"black")
$subformButton_obj.ReplacingColor(AJUI_btn_hover;"white")
$subformButton_obj.ReplacingColor(AJUI_btn_active;"white")
$subformButton_obj.ReplacingColor(AJUI_btn_disable;"gray")

$result:=$subformButton_obj