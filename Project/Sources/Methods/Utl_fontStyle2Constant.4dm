//%attributes = {"invisible":true}
  // Utl_fontStyle2Constant ( $fontStyle  ) -> return
  //
  // $fontStyle : (text) description
  // return : (longint) (return) return value
  //
  // Convert a font style into the corresponding constant

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 14:21:46
	  // ----------------------------------------------------
	  // Method: Utl_fontStyle2Constant
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



C_TEXT:C284($1;$fontStyle)
C_LONGINT:C283($0)
$fontStyle:=$1

Case of 
	: ($fontStyle="none") | ($fontStyle="")
		$0:=0
	: ($fontStyle="Bold")
		$0:=1
	: ($fontStyle="Italic")
		$0:=2
	: ($fontStyle="Underline")
		$0:=4
	: ($fontStyle="Strikethrough")
		$0:=8
	Else 
		$0:=0
End case 