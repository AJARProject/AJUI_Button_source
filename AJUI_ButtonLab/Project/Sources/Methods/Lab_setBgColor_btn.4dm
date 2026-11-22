//%attributes = {"shared":true}
  // Lab_setBgColor_btn ( $params ) -> return
  //
  // $params : (object) update background color
  //
  // This method is used to update the background color of the lab

#DECLARE($param1 : Object)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:16:26
	  // ----------------------------------------------------
	  // Method: Lab_setBgColor_btn
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $bgcolor_l : Integer
var $params : Object
var $bgcolor_t : Text

$params:=$param1

$bgcolor_l:=$params.value


OBJECT SET RGB COLORS(*;"bgTestZone@";$bgcolor_l;$bgcolor_l)

  // Switch text comment color 
If (getLuminance ($bgcolor_l)>150)
	OBJECT SET RGB COLORS(*;"bgz_@";0x0000;Background color none)  // black text (Black is a palette index, not an RGB value)
Else 
	OBJECT SET RGB COLORS(*;"bgz_@";0x00FFFFFF;Background color none)  // white text (was _O_OBJECT SET COLOR)
End if 

If ($params.setColorbtnBgOther)
	$bgcolor_t:=Replace string(String($bgcolor_l;"&$");"$";"")
	$bgcolor_t:=(6-Length($bgcolor_t)*"0"+$bgcolor_t)
	$bgcolor_t:="#"+$bgcolor_t
	Form.btnBgOther.BGColor(AJUI_btn_default;$bgcolor_t)
	Form.btnBgOther.BorderColor(AJUI_btn_default;"white")
	Form.btnBgOther.Draw()
End if 

