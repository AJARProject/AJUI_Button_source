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


Form.tipNewTemplate:=New AJUI_Tip ()

  // ----------------------
  // Global
  // ----------------------
Form.tipNewTemplate.TipName("AJUI_Tip_form")
Form.tipNewTemplate.AutoRebuild(False)


  // ----------------------
  //Text
  // ----------------------
Form.tipNewTemplate.TextLabel("Lorem ipsum dolor sit amet.")
Form.tipNewTemplate.TextRotation("")
Form.tipNewTemplate.TextFontSize(11)
Form.tipNewTemplate.TextFontName("Arial,Helvetica,MS Sans Serif")
Form.tipNewTemplate.TextFontColor("#808080")
Form.tipNewTemplate.TextOpacity(100)


  // ----------------------
  // Target
  // ----------------------
Form.tipNewTemplate.TipPosition("bottom-center")
Form.tipNewTemplate.TargetName("btnNew")
Form.tipNewTemplate.TargetOffset(0)
Form.tipNewTemplate.TargetMargin(0)


  // ----------------------
  // Container
  // ----------------------
Form.tipNewTemplate.CornerRadius(5)
Form.tipNewTemplate.TipboxMaxWidth(0)
Form.tipNewTemplate.TipboxMaxHeight(0)
Form.tipNewTemplate.Padding(0)
Form.tipNewTemplate.BorderSize(3)
Form.tipNewTemplate.BorderColor("#808080")
Form.tipNewTemplate.BorderOpacity(100)
Form.tipNewTemplate.BackgroundColor("#C0C0C0")
Form.tipNewTemplate.BackgroundOpacity(100)
Form.tipNewTemplate.ActivateShadow(False)
Form.tipNewTemplate.ShadowOffset(2)


  // ----------------------
  // Arrow
  // ----------------------
Form.tipNewTemplate.ArrowWidth(20)
Form.tipNewTemplate.ArrowHeight(10)
Form.tipNewTemplate.ArrowPosition("center")
Form.tipNewTemplate.ArrowOffset(10)


  // ----------------------
  // Close Box
  // ----------------------
Form.tipNewTemplate.CloseBoxDisplay(False)
Form.tipNewTemplate.CloseBoxSize(5)


  // ----------------------
  // SubForm
  // ----------------------
Form.tipNewTemplate.SubformName("Lab_newNameInput")


