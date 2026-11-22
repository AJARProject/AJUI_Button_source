//%attributes = {"invisible":true}
// Utl_fontStyle2Constant ( $fontStyle  ) -> return
//
// $fontStyle : (text) description
// return : (longint) (return) return value
//
// Convert a font style into the corresponding constant

#DECLARE($param1 : Text) -> $result : Integer

If (False)
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



var $fontStyle; $style : Text
var $svgStyle : Integer
var $styles : Collection
$fontStyle:=$param1
$svgStyle:=0

$styles:=Split string($fontStyle; ","; sk ignore empty strings+sk trim spaces)

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

$result:=$svgStyle