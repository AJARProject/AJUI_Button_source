//%attributes = {"invisible":true}
  // AJUI_Btn_clipTextToFit ( $label ; $widthCalculated ; $widthAvailable) -> return
  //
  // $label : (text) button label
  // $widthCalculated : (real) calculated size of the text area
  // $widthAvailable : (real) size available
  // return : (text) (return)  clipped label
  //
  // This method will clip the label if the text is longer than the width available

#DECLARE($param1 : Object; $param2 : Real; $param3 : Real) -> $result : Object

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:27:29
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_clipTextToFit
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $toDraw_obj; $result_obj : Object
var $widthCalculated; $widthAvailable; $currentLengthText; $idealLengthText; $textWidth; $textHeight : Real
var $fontColor; $fontName; $fontStyle; $label; $truncatedLabel; $svgCalcRef; $style_definition; $textCalcID : Text
var $lengthText; $fontSize : Integer
var $pict : Picture

$toDraw_obj:=$param1
$widthCalculated:=$param2
$widthAvailable:=$param3

$label:=$toDraw_obj.btn.text.label

$currentLengthText:=Length($label)

$result_obj:=New object

$idealLengthText:=$currentLengthText-4  //-4 is for ... + we remove a letter

Repeat 
	
	
	
	If ($idealLengthText>=0)
		$truncatedLabel:=Delete string($label;$idealLengthText+1;$currentLengthText-$idealLengthText)
		
		  //remove white space
		While ($truncatedLabel="@ ")
			$truncatedLabel:=Delete string($truncatedLabel;Length($truncatedLabel);1)
		End while 
		$truncatedLabel:=$truncatedLabel+"..."
		
		$fontName:=$toDraw_obj.btn.text.fontName
		$fontSize:=$toDraw_obj.btn.text.fontSize
		$fontColor:=$toDraw_obj.btn.text.fontColor
		$fontStyle:=$toDraw_obj.btn.text.fontStyle
		
		  //text size calculation
		$svgCalcRef:=SVG_New 
		$style_definition:="{font-size:"+String($fontSize)+";fill:"+$fontColor+";font-family:"+$fontName+"}"
		$textCalcID:=SVG_New_textArea ($svgCalcRef;$truncatedLabel;0;0;0;0;$style_definition)
		SVG_SET_FONT_STYLE ($svgCalcRef;Utl_fontStyle2Constant ($fontStyle))
		
		If (False)
			SVGTool_SHOW_IN_VIEWER ($svgCalcRef)
		End if 
		
		$pict:=SVG_Export_to_picture ($svgCalcRef)
		PICTURE PROPERTIES($pict;$textWidth;$textHeight)
		
		SVG_CLEAR ($svgCalcRef)
		
		
		$result_obj.label:=$truncatedLabel
		$result_obj.width:=$textWidth
		
		
	Else 
		$result_obj.label:=""
		$result_obj.width:=0
		
	End if 
	
	$idealLengthText:=$idealLengthText-1
	
Until (($result_obj.label="") | ($result_obj.width<=$widthAvailable))

$result:=$result_obj