//%attributes = {"shared":true}
  // Lab_SetBgColorWhite (  )
  //
  // Set background color to white

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:18:43
	  // ----------------------------------------------------
	  // Method: Lab_SetBgColorWhite
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


// was _O_OBJECT SET COLOR (palette White/White): white foreground and background
OBJECT SET RGB COLORS(*;"bgTestZone";0x00FFFFFF;0x00FFFFFF)
// was _O_OBJECT SET COLOR (palette Black/Black): black text, no background as in Lab_setBgColor_btn
OBJECT SET RGB COLORS(*;"bgz_@";0x0000;Background color none)
