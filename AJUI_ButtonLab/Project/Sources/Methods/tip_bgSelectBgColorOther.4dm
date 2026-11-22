//%attributes = {}
  // tip_bgSelectBgColorOther (  ) 
  //
  // Init an AJUI Button to indicate how to open the color picker for the button who select a background color

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:08:53
	  // ----------------------------------------------------
	  // Method: tip_bgSelectBgColorOther
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


Form.tipBgColorOther:=New AJUI_Tip ()

  // ----------------------
  // Global
  // ----------------------
Form.tipBgColorOther.TipName("AJUI_Tip_sf")
Form.tipBgColorOther.TipDuration(5000)
Form.tipBgColorOther.AutoRebuild(False)


  // ----------------------
  //Text
  // ----------------------
Form.tipBgColorOther.TextLabel("Alt+Clic (Windows) or Option+Clic (Mac) to display the colorPicker.")
Form.tipBgColorOther.TextRotation("")
Form.tipBgColorOther.TextFontSize(13)
Form.tipBgColorOther.TextFontName("Arial,Helvetica,MS Sans Serif")
Form.tipBgColorOther.TextFontColor("#FFFFFF")
Form.tipBgColorOther.TextOpacity(100)


  // ----------------------
  // Target
  // ----------------------
Form.tipBgColorOther.TipPosition("bottom")
Form.tipBgColorOther.TargetName("btnBgOther")
Form.tipBgColorOther.TargetOffset(0)
Form.tipBgColorOther.TargetMargin(0)


  // ----------------------
  // Container
  // ----------------------
Form.tipBgColorOther.CornerRadius(5)
Form.tipBgColorOther.TipboxMaxWidth(131)
Form.tipBgColorOther.TipboxMaxHeight(0)
Form.tipBgColorOther.Padding(10)
Form.tipBgColorOther.BorderSize(2)
Form.tipBgColorOther.BorderColor("#C0C0C0")
Form.tipBgColorOther.BorderOpacity(100)
Form.tipBgColorOther.BackgroundColor("#0000FF")
Form.tipBgColorOther.BackgroundOpacity(72)
Form.tipBgColorOther.ActivateShadow(False)
Form.tipBgColorOther.ShadowOffset(2)


  // ----------------------
  // Arrow
  // ----------------------
Form.tipBgColorOther.ArrowWidth(20)
Form.tipBgColorOther.ArrowHeight(10)
Form.tipBgColorOther.ArrowPosition("middle")
Form.tipBgColorOther.ArrowOffset(10)


  // ----------------------
  // Close Box
  // ----------------------
Form.tipBgColorOther.CloseBoxDisplay(False)
Form.tipBgColorOther.CloseBoxSize(5)
Form.tipBgColorOther.ActivateOnClickCB(False)


  // ----------------------
  // SubForm
  // ----------------------
Form.tipBgColorOther.SubformName("")


  // ----------------------
  // Animation
  // ----------------------
Form.tipBgColorOther.ActivateAnimation(True)
Form.tipBgColorOther.AnimationRefresh(20)


  // ----------------------
  // Blink
  // ----------------------
Form.tipBgColorOther.BlinkNumber(0)
Form.tipBgColorOther.BlinkDuration(1000)
Form.tipBgColorOther.BlinkOn(50)


  // ----------------------
  // Jump
  // ----------------------
Form.tipBgColorOther.JumpNumber(0)
Form.tipBgColorOther.JumpOn(50)
Form.tipBgColorOther.JumpDuration(1000)
Form.tipBgColorOther.JumpOffset(20)


  // ----------------------
  // Fade effect
  // ----------------------
Form.tipBgColorOther.ActivateFadeIn(True)
Form.tipBgColorOther.ActivateFadeOut(True)
Form.tipBgColorOther.TimerFadeIn(800)
Form.tipBgColorOther.TimerFadeOut(500)