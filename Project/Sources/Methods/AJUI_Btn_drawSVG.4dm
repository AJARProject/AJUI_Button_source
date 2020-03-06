//%attributes = {"invisible":true}
  // AJUI_Btn_drawSVG ( $toDraw_obj ) -> return
  //
  // $toDraw_obj : (object) instance of a button
  // return : (picture) (return) button picture
  //
  // This method draw the SVG based on the properties of an instance and return the picture of the SVG

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:35:53
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_drawSVG
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($1;$toDraw_obj;$resultResize;$resultClip;$file)
C_PICTURE:C286($0;$pict;$btn_pict)
C_TEXT:C284($label;$fontName;$fontColor;$label;$fontStyle;$svgRef)
C_TEXT:C284($pictPosition;$image_txt;$name;$importPath)
C_TEXT:C284($btn_composition;$btn_type)
C_LONGINT:C283($fontSize;$borderSize;$boxPadding;$compTextPadding;$rotation;$textMarginHorizontal)
C_REAL:C285($startX;$startY;$pictSizeAllocation;$textSizeAllocation;$pictureOpacity;$pictScaleWidth;$pictScaleHeight;$pictureRatio;$percentLinearGradient;$fontOpacityNum)
C_BOOLEAN:C305($linked)
C_BLOB:C604($pict_blob)

$toDraw_obj:=$1

$btn_type:=$toDraw_obj.btn.global.type
$btn_composition:=$toDraw_obj.btn.global.composition
$name:=$toDraw_obj.btn.global.name

  //box
$boxWidth:=$toDraw_obj.btn.box.width
$boxHeight:=$toDraw_obj.btn.box.height
$cornerRadius:=$toDraw_obj.btn.box.cornerRadius
$bgPrimaryColor:=$toDraw_obj.btn.box.bgPrimaryColor
$boxPadding:=1

  //border
$borderColor:=$toDraw_obj.btn.border.color
$borderSize:=$toDraw_obj.btn.border.size

  //SIZE TEXT AREA
If ($btn_composition#"picture")
	  //text
	$label:=$toDraw_obj.btn.text.label
	$fontName:=$toDraw_obj.btn.text.fontName
	$fontSize:=$toDraw_obj.btn.text.fontSize
	$fontColor:=$toDraw_obj.btn.text.fontColor
	$fontStyle:=$toDraw_obj.btn.text.fontStyle
	$textMarginHorizontal:=$toDraw_obj.btn.text.marginHorizontal
	
	$posOpacity:=Position:C15(":";$fontColor)
	If ($posOpacity>0)
		$fontOpacity:=Delete string:C232($fontColor;0;$posOpacity)
		$fontColor:=Delete string:C232($fontColor;$posOpacity;Length:C16($fontColor))
		$fontOpacityNum:=Num:C11($fontOpacity)/100
		$fontOpacity:=String:C10($fontOpacityNum)
	Else 
		$fontOpacity:="1"
	End if 
	
	  //text size calculation
	$svgCalcRef:=SVG_New 
	$style_definition:="{font-size:"+String:C10($fontSize)+";fill:"+$fontColor+";font-family:"+$fontName+";fill-opacity:"+$fontOpacity+"}"
	$textCalcID:=SVG_New_textArea ($svgCalcRef;$label;0;0;0;0;$style_definition)
	SVG_SET_FONT_STYLE ($svgCalcRef;Utl_fontStyle2Constant ($fontStyle))
	
	If (False:C215)
		SVGTool_SHOW_IN_VIEWER ($svgCalcRef)
	End if 
	
	$pict:=SVG_Export_to_picture ($svgCalcRef)
	PICTURE PROPERTIES:C457($pict;$textWidth;$textHeight)
	
	SVG_CLEAR ($svgCalcRef)
	
End if 

  //SIZE PICTURE
If ($btn_composition#"text")
	  //image
	$picturePath:=$toDraw_obj.btn.picture.path
	$pictureOpacity:=$toDraw_obj.btn.picture.opacity/100
	$importPath:=String:C10($toDraw_obj.btn.global.importPath)
	If ($picturePath="#@")
		If ($importPath="")
			$picturePath:=Replace string:C233($picturePath;"#";Get 4D folder:C485(Current resources folder:K5:16;*))
		Else 
			$picturePath:=Replace string:C233($picturePath;"#";$importPath)
		End if 
	Else 
		$picturePath:=Get 4D folder:C485(Current resources folder:K5:16;*)+$picturePath
	End if 
	$picturePath:=Replace string:C233($picturePath;"/";Folder separator:K24:12)
	  //$picturePath:=Get 4D folder(Current resources folder;*)+$picturePath
	$pictPosition:=$toDraw_obj.btn.composite.picturePosition
	
	
	If (Test path name:C476($picturePath)=Is a document:K24:1)
		$file:=File:C1566($picturePath;fk platform path:K87:2)
		If ($file.extension=".svg")
			$svg_txt:=Document to text:C1236($picturePath)
			
			$colorToReplace:=$toDraw_obj.btn.picture.colorToReplace
			$replacingColor:=$toDraw_obj.btn.picture.replacingColor
			
			  //replace color SVG
			If ($replacingColor#$colorToReplace) & ($replacingColor#"")
				$svg_txt:=Replace string:C233($svg_txt;"fill=\""+$colorToReplace;"fill=\""+$replacingColor)
				$svg_txt:=Replace string:C233($svg_txt;"fill:"+$colorToReplace;"fill:"+$replacingColor)
				$svg_txt:=Replace string:C233($svg_txt;"fill: "+$colorToReplace;"fill: "+$replacingColor)
				$svg_txt:=Replace string:C233($svg_txt;"stroke=\""+$colorToReplace;"stroke=\""+$replacingColor)
			End if 
			
			$dom_ref:=DOM Parse XML variable:C720($svg_txt)
			
			SVG EXPORT TO PICTURE:C1017($dom_ref;$btn_pict)
			DOM CLOSE XML:C722($dom_ref)
		Else 
			READ PICTURE FILE:C678($picturePath;$btn_pict)
		End if 
	Else 
		$btn_pict:=$btn_pict*0
	End if 
	$pictureScale:=$toDraw_obj.btn.picture.scale
	
	If ($pictureScale=0)
		PICTURE PROPERTIES:C457($btn_pict;$pictWidth;$pictHeight)
		$pictureRatio:=$toDraw_obj.btn.picture.ratio
		If ($pictureRatio=1)
			$pictureWidth:=$toDraw_obj.btn.picture.width
			$pictureHeight:=$toDraw_obj.btn.picture.height
			
			If ($pictureWidth=-1)
				$pictScaleWidth:=$pictWidth
			Else 
				$pictScaleWidth:=$pictureWidth
			End if 
			
			If ($pictureHeight=-1)
				$pictScaleHeight:=$pictHeight
			Else 
				$pictScaleHeight:=$pictureHeight
			End if 
			
		Else 
			$pictScaleWidth:=$pictWidth*$pictureRatio
			$pictScaleHeight:=$pictHeight*$pictureRatio
		End if 
	Else 
		$pictScaleWidth:=($boxWidth-$borderSize-($boxPadding*2))*$pictureScale/100
		$pictScaleHeight:=($boxHeight-$borderSize-($boxPadding*2))*$pictureScale/100
	End if 
	
End if 

  //composite
If ($btn_composition="composite")
	$pictSizeAllocation:=$toDraw_obj.btn.composite.pictSizeAllocation
	$linked:=$toDraw_obj.btn.composite.linked
	$compTextPadding:=$toDraw_obj.btn.composite.padding
	
	  //Size allocation between text and picture
	$compositeHeight:=$boxHeight-($borderSize)-($boxPadding*2)
	$compositeWidth:=$boxWidth-($borderSize)-($boxPadding*2)
	
	  //calc sizes allocation
	If ($pictPosition="top") | ($pictPosition="bottom")
		
		If ($pictSizeAllocation>$compositeHeight)
			$pictSizeAllocation:=$compositeHeight
		End if 
		
		$pictHeightAllocated:=$pictSizeAllocation
		$pictWidthAllocated:=$compositeWidth
		
		$textHeightAllocated:=$compositeHeight-$pictSizeAllocation
		$textWidthAllocated:=$compositeWidth
		
		If ($linked)
			$textHeightAllocated:=$textHeightAllocated-$compTextPadding
		Else 
			$textWidthAllocated:=$textWidthAllocated-($textMarginHorizontal*2)
		End if 
	Else 
		If ($pictSizeAllocation>$compositeWidth)
			$pictSizeAllocation:=$compositeWidth
		End if 
		
		$pictHeightAllocated:=$compositeHeight
		$pictWidthAllocated:=$pictSizeAllocation
		
		$textHeightAllocated:=$compositeHeight
		$textWidthAllocated:=$compositeWidth-$pictSizeAllocation
		
		If ($linked)
			$textWidthAllocated:=$textWidthAllocated-$compTextPadding
		Else 
			$textWidthAllocated:=$textWidthAllocated-($textMarginHorizontal*2)
		End if 
	End if 
End if 

  //DRAW SVG
$svgRef:=DOM Create XML Ref:C861("svg";"http://www.w3.org/2000/svg")
DOM SET XML ATTRIBUTE:C866($svgRef;"width";$boxWidth;"height";$boxHeight)  // svg area

$startX:=0+($borderSize/2)
$startY:=0+($borderSize/2)

  //check secondary color 
If ($toDraw_obj.btn.composite.activeSecondColor) & (Not:C34($linked)) & ($btn_composition="composite")
	
	$bgSecondaryColor:=$toDraw_obj.btn.composite.bgSecondaryColor
	
	  //percent pict size allocation
	If ($pictPosition="top") | ($pictPosition="bottom")
		If ($boxHeight<=0)
			$percentLinearGradient:=0
		Else 
			$percentLinearGradient:=($pictSizeAllocation+($borderSize/2)+$boxPadding)/$boxHeight
		End if 
	Else 
		If ($boxWidth<=0)
			$percentLinearGradient:=0
		Else 
			$percentLinearGradient:=($pictSizeAllocation+($borderSize/2)+$boxPadding)/$boxWidth
		End if 
	End if 
	
	If (Round:C94($percentLinearGradient;2)<$percentLinearGradient)
		$percentLinearGradient:=Round:C94($percentLinearGradient;2)+0.01
	Else 
		$percentLinearGradient:=Round:C94($percentLinearGradient;2)
	End if 
	
	Case of 
		: ($pictPosition="top")
			$rotation:=90
			
		: ($pictPosition="bottom")
			$rotation:=-90
			
		: ($pictPosition="left")
			$rotation:=0
			
		: ($pictPosition="right")
			$rotation:=-180
		Else 
			$rotation:=0
			
	End case 
	
	$colorID:=SVG_Define_linear_gradient ($svgRef;"composite";$bgSecondaryColor;$bgPrimaryColor;$rotation;"pad";$percentLinearGradient;$percentLinearGradient)
	$bgPrimaryColor:="url(#composite)"
	
End if 

  // DRAW TYPE OF BUTTON - Rectangel, Circle
Case of 
	: ($btn_type="rectangle")
		$btnID:=SVG_New_rect ($svgRef;$startX;$startY;$boxWidth-$borderSize;$boxHeight-$borderSize;$cornerRadius;$cornerRadius;$borderColor;$bgPrimaryColor;$borderSize)
		
	: ($btn_type="circle")
		$btnID:=SVG_New_ellipse_bounded ($svgRef;$startX;$startY;$boxWidth-$borderSize;$boxHeight-$borderSize;$borderColor;$bgPrimaryColor;$borderSize)
	Else 
		
End case 


  //CALC AND DRAW BUTTON COMPOSITION
Case of 
	: ($btn_composition="text")  // text composition
		
		$textX:=0+($borderSize/2)+$boxPadding+$textMarginHorizontal
		$textAlign:="center"
		
		  //calc position and reduce size if necessary
		If ($textWidth<($boxWidth-$borderSize-($boxPadding*2)-($textMarginHorizontal*2)))
			$textWidth:=$boxWidth-$borderSize-($boxPadding*2)-($textMarginHorizontal*2)
		Else 
			$resultClip:=AJUI_Btn_clipTextToFit ($toDraw_obj;$textWidth;$boxWidth-$borderSize-($boxPadding*2)-($textMarginHorizontal*2))
			$label:=$resultClip.label
			$textWidth:=$resultClip.width
		End if 
		
		If ($textHeight>($boxHeight-$borderSize))
			$textPaddingY:=(-$textHeight/2)+($boxHeight/2)+($borderSize/2)
			$textY:=0+($borderSize/2)+$textPaddingY
		Else 
			$textPaddingY:=(($boxHeight-$borderSize)-$textHeight)/2
			$textY:=0+($borderSize/2)+$textPaddingY
		End if 
		
		  //draw text area
		$style_definition:="{font-size:"+String:C10($fontSize)+";fill:"+$fontColor+";font-family:"+$fontName+";text-align:"+$textAlign+";fill-opacity:"+$fontOpacity+"}"
		$textID:=SVG_New_textArea ($svgRef;$label;$textX;$textY;$textWidth;$textHeight;$style_definition)
		SVG_SET_FONT_STYLE ($svgRef;Utl_fontStyle2Constant ($fontStyle))
		
		
	: ($btn_composition="picture")  // picture composition
		
		If (Test path name:C476($picturePath)=Is a document:K24:1)
			  //resize picture if necessary
			$resultResize:=AJUI_Btn_resizePicture ($boxWidth;$boxHeight;$pictScaleWidth;$pictScaleHeight)
			$pictScaleWidth:=$resultResize.width
			$pictScaleHeight:=$resultResize.height
			
			  //calc position
			$posX:=($boxWidth-$pictScaleWidth)/2
			$posY:=($boxHeight-$pictScaleHeight)/2
			
			  //draw picture
			If ($picturePath="")
				$btn_pict:=$btn_pict*0
			End if 
			
			
			PICTURE TO BLOB:C692($btn_pict;$pict_blob;$file.extension)
			BASE64 ENCODE:C895($pict_blob;$image_txt)
			$image_txt:="data:image/svg+xml;base64,"+$image_txt
			
			  //add picture to SVG
			$dom_image:=DOM Create XML element:C865($svgRef;"image";\
				"xlink:href";$image_txt;\
				"opacity";$pictureOpacity;\
				"x";$posX;\
				"y";$posY;\
				"width";$pictScaleWidth;\
				"height";$pictScaleHeight)
			
		End if 
		
		
	: ($btn_composition="composite")  // composite composition
		
		
		
		  //CALC PICTURE
		If ($pictureScale>0)
			$pictScaleWidth:=$pictWidthAllocated*$pictureScale/100
			$pictScaleHeight:=$pictHeightAllocated*$pictureScale/100
		Else 
			
			$resultResize:=AJUI_Btn_resizePicture ($pictWidthAllocated;$pictHeightAllocated;$pictScaleWidth;$pictScaleHeight)
			$pictScaleWidth:=$resultResize.width
			$pictScaleHeight:=$resultResize.height
			
		End if 
		
		$paddingPictX:=(($pictWidthAllocated-$pictScaleWidth)/2)
		$paddingPictY:=(($pictHeightAllocated-$pictScaleHeight)/2)
		
		  //CALC TEXT
		$textX:=($borderSize/2)+$boxPadding
		
		If ($textHeight>$textHeightAllocated)
			$textPaddingY:=(-$textHeight/2)+($textHeightAllocated/2)
			$textY:=($borderSize/2)+$textPaddingY+$boxPadding
		Else 
			$textPaddingY:=(($textHeightAllocated)-$textHeight)/2
			$textY:=$textPaddingY+($borderSize/2)+$boxPadding
		End if 
		
		  //calc global content size in case of linked (picture + text), Text is resize if necessary
		  //$global content size is apply in x or y depending on the position
		If ($linked)
			If ($pictPosition="top") | ($pictPosition="bottom")
				$globalContentSize:=$pictScaleHeight+$compTextPadding+$textHeight
				$contentSizetAllocated:=$boxHeight-$borderSize-($boxPadding*2)
				
				If ($globalContentSize<=$contentSizetAllocated)
					$linkedPadding:=($contentSizetAllocated-$globalContentSize)/2
				Else 
					$linkedPadding:=0
					$pictHeightAllocated:=$contentSizetAllocated-$textHeight-$compTextPadding
					
					$resultResize:=AJUI_Btn_resizePicture ($pictWidthAllocated;$pictHeightAllocated;$pictScaleWidth;$pictScaleHeight)
					$pictScaleWidth:=$resultResize.width
					$pictScaleHeight:=$resultResize.height
					
				End if 
				
			Else 
				$globalContentSize:=$pictScaleWidth+$compTextPadding+$textWidth
				$contentSizetAllocated:=$boxWidth-$borderSize-($boxPadding*2)
				
				If ($globalContentSize<=$contentSizetAllocated)
					$linkedPadding:=($contentSizetAllocated-$globalContentSize)/2
					$textWidthAllocated:=$textWidth
				Else 
					$linkedPadding:=0
					$textWidthAllocated:=$contentSizetAllocated-$pictScaleWidth-$compTextPadding
				End if 
			End if 
		End if 
		
		
		  //adapt positions x,y to picture position
		Case of 
			: ($pictPosition="top")
				$posX:=($borderSize/2)+$boxPadding+$paddingPictX
				$textX:=$textX+$textMarginHorizontal
				
				If ($linked)
					$posY:=($borderSize/2)+$boxPadding+$linkedPadding
					$textY:=$posY+$pictScaleHeight+$compTextPadding
				Else 
					$posY:=($borderSize/2)+($boxPadding/2)+$paddingPictY
					$textY:=$pictHeightAllocated+($borderSize/2)+($boxPadding*1.5)+$textPaddingY
				End if 
				
			: ($pictPosition="bottom")
				$posX:=($borderSize/2)+$boxPadding+$paddingPictX
				$textX:=$textX+$textMarginHorizontal
				
				If ($linked)
					$textY:=($borderSize/2)+$boxPadding+$linkedPadding
					$posY:=$textY+$textHeight+$compTextPadding
				Else 
					$textY:=($borderSize/2)-($boxPadding/2)+$textPaddingY
					$posY:=$paddingPictY+$textHeightAllocated+($boxPadding*1.5)+($borderSize/2)
				End if 
				
			: ($pictPosition="left")
				$posY:=$boxPadding+($borderSize/2)+$paddingPictY
				
				
				If ($linked)
					$posX:=($borderSize/2)+$boxPadding+$linkedPadding
					$textX:=$posX+$pictScaleWidth+$compTextPadding
				Else 
					$posX:=$paddingPictX+($boxPadding/2)+($borderSize/2)
					$textX:=$pictWidthAllocated+($borderSize/2)+($boxPadding*1.5)+$textMarginHorizontal
				End if 
				
			: ($pictPosition="right")
				$posY:=$boxPadding+($borderSize/2)+$paddingPictY
				
				If ($linked)
					$textX:=($borderSize/2)+$boxPadding+$linkedPadding
					$posX:=$textX+$textWidthAllocated+$compTextPadding+($textMarginHorizontal*2)
					
				Else 
					$posX:=$paddingPictX+$textWidthAllocated+($boxPadding*1.5)+($borderSize/2)+($textMarginHorizontal*2)
					$textX:=($borderSize/2)+($boxPadding/2)+$textMarginHorizontal
				End if 
				
		End case 
		
		
		  //draw picture and text area
		If ($picturePath="")
			$btn_pict:=$btn_pict*0
		End if 
		
		If (Test path name:C476($picturePath)=Is a document:K24:1)
			
			PICTURE TO BLOB:C692($btn_pict;$pict_blob;$file.extension)
			BASE64 ENCODE:C895($pict_blob;$image_txt)
			$image_txt:="data:image/svg+xml;base64,"+$image_txt
			
			  //add picture to SVG
			$dom_image:=DOM Create XML element:C865($svgRef;"image";\
				"xlink:href";$image_txt;\
				"opacity";$pictureOpacity;\
				"x";$posX;\
				"y";$posY;\
				"width";$pictScaleWidth;\
				"height";$pictScaleHeight)
		End if 
		
		  //clip text if necessary
		If ($textWidth>$textWidthAllocated)
			$resultClip:=AJUI_Btn_clipTextToFit ($toDraw_obj;$textWidth;$textWidthAllocated)
			$label:=$resultClip.label
			$textWidth:=$resultClip.width
		End if 
		
		$textWidth:=$textWidthAllocated
		$textAlign:=$toDraw_obj.btn.composite.textAlign
		$style_definition:="{font-size:"+String:C10($fontSize)+";fill:"+$fontColor+";font-family:"+$fontName+";text-align:"+$textAlign+";fill-opacity:"+$fontOpacity+"}"
		$textID:=SVG_New_textArea ($svgRef;$label;$textX;$textY;$textWidth;$textHeight;$style_definition)
		SVG_SET_FONT_STYLE ($svgRef;Utl_fontStyle2Constant ($fontStyle))
		
End case 


If (False:C215)  //for testing purpose
	SVGTool_SHOW_IN_VIEWER ($svgRef)
End if 

  //generate picture
$pict:=SVG_Export_to_picture ($svgRef)
SVG_CLEAR ($svgRef)

$0:=$pict
