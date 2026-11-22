//%attributes = {"invisible":true,"shared":true,"lang":"en"}
// AJUI_Btn_info (  ) -> return
//
// return : (text) (return) return current version
//
// This method return the current version of AJUI Button

#DECLARE() -> $result : Text

If (False)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 19.07.19, 12:02:07
	// ----------------------------------------------------
	// Method: AJUI_Btn_info
	// Description
	// 
	//
	// ----------------------------------------------------
End if 


var $version_t : Text

$version_t:="2.2.0"  // 22 Nov 2026 (4D 21 R4)

$result:="AJUI_Button (v21 R4) : "+$version_t
