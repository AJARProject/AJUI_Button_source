//%attributes = {}
  // TLoc_TipSubform_init ( $targetName  ) -> return
  //
  // $targetName : (text) tip target
  //
  // Init Tip for the template location settings subform

#DECLARE($param1 : Text)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 13.11.19, 14:11:19
	  // ----------------------------------------------------
	  // Method: TLoc_TipSubform_init
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $targetName : Text

$targetName:=$param1


Form.tLocTip:=New AJUI_Tip ()

  // ----------------------
  // Global
  // ----------------------
Form.tLocTip.TipName("tLocTip")
Form.tLocTip.AutoRebuild(False)



  // ----------------------
  // Target
  // ----------------------
Form.tLocTip.TipPosition("right-top")
Form.tLocTip.TargetName($targetName)
Form.tLocTip.TargetOffset(-18)
Form.tLocTip.TargetMargin(0)

  // ----------------------
  // Container
  // ----------------------
Form.tLocTip.CornerRadius(5)
Form.tLocTip.TipboxMaxWidth(0)
Form.tLocTip.TipboxMaxHeight(0)
Form.tLocTip.Padding(0)
Form.tLocTip.BorderSize(1)
Form.tLocTip.BorderColor("gray")
Form.tLocTip.BorderOpacity(100)
Form.tLocTip.BackgroundColor("lightblue:60")
Form.tLocTip.BackgroundOpacity(100)
Form.tLocTip.ActivateShadow(False)
Form.tLocTip.ShadowOffset(2)


  // ----------------------
  // Arrow
  // ----------------------
Form.tLocTip.ArrowWidth(20)
Form.tLocTip.ArrowHeight(10)
Form.tLocTip.ArrowOffset(10)


  // ----------------------
  // Close Box
  // ----------------------
Form.tLocTip.CloseBoxDisplay(False)


  // ----------------------
  // SubForm
  // ----------------------
Form.tLocTip.SubformName("templateLocationSettings")



