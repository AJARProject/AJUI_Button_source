//%attributes = {}
  // Tip_NewButtonName (  ) 
  //
  // Init an AJUI Tip for the new template button

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:07:43
	  // ----------------------------------------------------
	  // Method: Tip_NewButtonName
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


Form.tipSaveTemplateSubform:=New AJUI_Tip ()

  // ----------------------
  // Global
  // ----------------------
Form.tipSaveTemplateSubform.TipName("AJUI_Tip_form")
Form.tipSaveTemplateSubform.TipDuration(0)
Form.tipSaveTemplateSubform.AutoRebuild(False)


  // ----------------------
  //Text
  // ----------------------
Form.tipSaveTemplateSubform.TextLabel("Lorem ipsum dolor sit amet.")
Form.tipSaveTemplateSubform.TextRotation("")
Form.tipSaveTemplateSubform.TextFontSize(11)
Form.tipSaveTemplateSubform.TextFontName("Arial,Helvetica,MS Sans Serif")
Form.tipSaveTemplateSubform.TextFontColor("#808080")
Form.tipSaveTemplateSubform.TextOpacity(100)


  // ----------------------
  // Target
  // ----------------------
Form.tipSaveTemplateSubform.TipPosition("bottom-center")
Form.tipSaveTemplateSubform.TargetName("btnSave")
Form.tipSaveTemplateSubform.TargetOffset(0)
Form.tipSaveTemplateSubform.TargetMargin(0)


  // ----------------------
  // Container
  // ----------------------
Form.tipSaveTemplateSubform.CornerRadius(5)
Form.tipSaveTemplateSubform.TipboxMaxWidth(0)
Form.tipSaveTemplateSubform.TipboxMaxHeight(0)
Form.tipSaveTemplateSubform.Padding(0)
Form.tipSaveTemplateSubform.BorderSize(3)
Form.tipSaveTemplateSubform.BorderColor("#808080")
Form.tipSaveTemplateSubform.BorderOpacity(100)
Form.tipSaveTemplateSubform.BackgroundColor("#C0C0C0")
Form.tipSaveTemplateSubform.BackgroundOpacity(100)
Form.tipSaveTemplateSubform.ActivateShadow(False)
Form.tipSaveTemplateSubform.ShadowOffset(2)


  // ----------------------
  // Arrow
  // ----------------------
Form.tipSaveTemplateSubform.ArrowWidth(20)
Form.tipSaveTemplateSubform.ArrowHeight(10)
Form.tipSaveTemplateSubform.ArrowPosition("center")
Form.tipSaveTemplateSubform.ArrowOffset(10)


  // ----------------------
  // Close Box
  // ----------------------
Form.tipSaveTemplateSubform.CloseBoxDisplay(False)
Form.tipSaveTemplateSubform.CloseBoxSize(5)


  // ----------------------
  // SubForm
  // ----------------------
Form.tipSaveTemplateSubform.SubformName("Lab_saveTemp")

