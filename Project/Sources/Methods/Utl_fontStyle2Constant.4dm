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



C_TEXT:C284($1; $fontStyle)
C_LONGINT:C283($0; $svgStyle)
C_COLLECTION:C1488($styles)
$fontStyle:=$1
$svgStyle:=0

$styles:=Split string:C1554($fontStyle; ","; sk ignore empty strings:K86:1+sk trim spaces:K86:2)

For each ($style; $styles)
	Case of 
		: ($style="Bold")
			$svgStyle:=$svgStyle+1
		: ($style="Italic")
			$svgStyle:=$svgStyle+2
		: ($style="Underline")
			$svgStyle:=$svgStyle+4
		: ($style="Strikethrough")
			$svgStyle:=$svgStyle+8
	End case 
End for each 

$0:=$svgStyle