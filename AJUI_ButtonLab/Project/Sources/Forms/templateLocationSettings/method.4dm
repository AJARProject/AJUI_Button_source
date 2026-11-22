var $evt : Integer
$evt:=Form event code

Case of 
	: ($evt=On Load)
		Form.subInfoTip:=New AJUI_Tip 
		
		  // ----------------------
		  // Global
		  // ----------------------
		Form.subInfoTip.TipName("AJUI_subInfoTip")
		Form.subInfoTip.AutoRebuild(False)
		
		
		  // ----------------------
		  //Text
		  // ----------------------
		Form.subInfoTip.TextLabel("")
		Form.subInfoTip.TextFontColor("blue")
		Form.subInfoTip.TextFontSize(16)
		
		
		
		  // ----------------------
		  // Target
		  // ----------------------
		Form.subInfoTip.TipPosition("right")
		Form.subInfoTip.TargetName("infoTip")
		Form.subInfoTip.TargetMargin(0)
		
		
		
		
		  // ----------------------
		  // Container
		  // ----------------------
		Form.subInfoTip.CornerRadius(0)
		Form.subInfoTip.TipboxMaxWidth(250)
		Form.subInfoTip.TipboxMaxHeight(0)
		Form.subInfoTip.Padding(10)
		Form.subInfoTip.BorderSize(0)
		Form.subInfoTip.BorderColor("lightblue")
		Form.subInfoTip.BackgroundColor("lightblue:60")
		Form.subInfoTip.ActivateShadow(False)
		
		
		  // ----------------------
		  // Arrow
		  // ----------------------
		Form.subInfoTip.ArrowWidth(0)
		Form.subInfoTip.ArrowHeight(0)
		
		
End case 
