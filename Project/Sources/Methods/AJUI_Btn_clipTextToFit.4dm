//%attributes = {"invisible":true}
  // AJUI_Btn_clipTextToFit ( $label ; $widthCalculated ; $widthAvailable) -> return
  //
  // $label : (text) button label
  // $widthCalculated : (real) calculated size of the text area
  // $widthAvailable : (real) size available
  // return : (text) (return)  clipped label
  //
  // This method will clip the label if the text is longer than the width available

If (False:C215)
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

C_OBJECT:C1216($1;$0;$toDraw_obj;$result_obj)
C_REAL:C285($2;$widthCalculated)
C_REAL:C285($3;$widthAvailable)
C_TEXT:C284($fontColor;$fontName;$fontStyle;$label)
C_LONGINT:C283($lengthText;$fontSize)

$toDraw_obj:=$1
$widthCalculated:=$2
$widthAvailable:=$3

$label:=$toDraw_obj.btn.text.label

$currentLengthText:=Length:C16($label)

$result_obj:=New object:C1471

$idealLengthText:=$currentLengthText-4  //-4 is for ... + we remove a letter

Repeat 
	
	
	
	If ($idealLengthText>=0)
		$truncatedLabel:=Delete string:C232($label;$idealLengthText+1;$currentLengthText-$idealLengthText)
		
		  //remove white space
		While ($truncatedLabel="@ ")
			$truncatedLabel:=Delete string:C232($truncatedLabel;Length:C16($truncatedLabel);1)
		End while 
		$truncatedLabel:=$truncatedLabel+"..."
		
		$fontName:=$toDraw_obj.btn.text.fontName
		$fontSize:=$toDraw_obj.btn.text.fontSize
		$fontColor:=$toDraw_obj.btn.text.fontColor
		$fontStyle:=$toDraw_obj.btn.text.fontStyle
		
		  //text size calculation
		$svgCalcRef:=SVG_New 
		$style_definition:="{font-size:"+String:C10($fontSize)+";fill:"+$fontColor+";font-family:"+$fontName+"}"
		$textCalcID:=SVG_New_textArea ($svgCalcRef;$truncatedLabel;0;0;0;0;$style_definition)
		SVG_SET_FONT_STYLE ($svgCalcRef;Utl_fontStyle2Constant ($fontStyle))
		
		If (False:C215)
			SVGTool_SHOW_IN_VIEWER ($svgCalcRef)
		End if 
		
		$pict:=SVG_Export_to_picture ($svgCalcRef)
		PICTURE PROPERTIES:C457($pict;$textWidth;$textHeight)
		
		SVG_CLEAR ($svgCalcRef)
		
		
		$result_obj.label:=$truncatedLabel
		$result_obj.width:=$textWidth
		
		
	Else 
		$result_obj.label:=""
		$result_obj.width:=0
		
	End if 
	
	$idealLengthText:=$idealLengthText-1
	
Until (($result_obj.label="") | ($result_obj.width<=$widthAvailable))

$0:=$result_obj