//%attributes = {}
  // bannerProtectRibbon (  ) 
  //
  //
  // Init banner 

var $left; $top; $right; $bottom : Real
If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.08.19, 14:38:40
	  // ----------------------------------------------------
	  // Method: bannerProtectRibbon
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

Form.btnProtectBanner:=New AJUI_Banner 
Form.btnProtectBanner.BannerType("cornerRibbon")
Form.btnProtectBanner.BannerName("protect")
Form.btnProtectBanner.Message("Locked")
Form.btnProtectBanner.BannerPosition("bottom-left")
Form.btnProtectBanner.TextColor("White")
Form.btnProtectBanner.TextFontSize(50)
Form.btnProtectBanner.TextFontWeight("bold")
Form.btnProtectBanner.BannerBGColor("red:70")
Form.btnProtectBanner.BorderColor("red")
Form.btnProtectBanner.BorderSize(2)

OBJECT GET COORDINATES(*;"AJUI_Banner";$left;$top;$right;$bottom)
Form.btnProtectBanner.BannerHeight(200)
Form.btnProtectBanner.BannerWidth(600)