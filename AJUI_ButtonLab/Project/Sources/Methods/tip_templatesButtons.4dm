//%attributes = {}
  // tip_templatesButtons ( $tip_obj ; $tipTargetName ; $tipLabel ) -> return
  //
  // $tip_obj : (object) tip object
  // $tipTargetName : (text) button name
  // $tipLabel : (text) label button
  //
  // Init Tip for template buttons

#DECLARE($param1 : Text; $param2 : Text) -> $result : Object

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 15:24:10
	  // ----------------------------------------------------
	  // Method: tip_templatesButtons
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $tip_obj : Object
var $tipTargetName; $tipLabel : Text


$tipTargetName:=$param1
$tipLabel:=$param2

$tip_obj:=New AJUI_Tip 

  // ----------------------
  // Global
  // ----------------------
$tip_obj.TipName("AJUI_Tip_sf")
$tip_obj.TipDuration(5000)
$tip_obj.AutoRebuild(False)


  // ----------------------
  //Text
  // ----------------------
$tip_obj.TextLabel($tipLabel)
$tip_obj.TextRotation("")
$tip_obj.TextFontSize(13)
$tip_obj.TextFontName("Arial,Helvetica,MS Sans Serif")
$tip_obj.TextFontColor("#FFFFFF")
$tip_obj.TextOpacity(100)


  // ----------------------
  // Target
  // ----------------------
$tip_obj.TipPosition("bottom")
$tip_obj.TargetName($tipTargetName)
$tip_obj.TargetOffset(0)
$tip_obj.TargetMargin(0)


  // ----------------------
  // Container
  // ----------------------
$tip_obj.CornerRadius(5)
$tip_obj.TipboxMaxWidth(110)
$tip_obj.TipboxMaxHeight(0)
$tip_obj.Padding(10)
$tip_obj.BorderSize(2)
$tip_obj.BorderColor("#005EA8")
$tip_obj.BorderOpacity(100)
$tip_obj.BackgroundColor("#076BFF")
$tip_obj.BackgroundOpacity(90)
$tip_obj.ActivateShadow(False)
$tip_obj.ShadowOffset(2)


  // ----------------------
  // Arrow
  // ----------------------
$tip_obj.ArrowWidth(20)
$tip_obj.ArrowHeight(10)
$tip_obj.ArrowPosition("middle")
$tip_obj.ArrowOffset(10)




$result:=$tip_obj