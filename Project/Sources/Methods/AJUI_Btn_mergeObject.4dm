//%attributes = {"invisible":true}
// AJUI_Btn_mergeObject ( $toDraw_obj ; $state_obj ) 
//
// $toDraw_obj : (object) copy of instance object
// $state_obj : (object) state object
//
// this method will control the exceptions related to the state and synchronize them with the default properties of the instance copy

#DECLARE($param1 : Object; $param2 : Object)

If (False)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 19.07.19, 13:57:03
	// ----------------------------------------------------
	// Method: AJUI_Btn_mergeObject
	// Description
	// 
	//
	// ----------------------------------------------------
End if 


var $toDraw_obj; $state_obj : Object

$toDraw_obj:=$param1
$state_obj:=$param2

// ----------------------
// Button Box
// ----------------------
If (Not(OB Is empty($state_obj.box)))
	If ($state_obj.box.width#Null)
		$toDraw_obj.btn.box.width:=$state_obj.box.width
	End if 
	If ($state_obj.box.height#Null)
		$toDraw_obj.btn.box.height:=$state_obj.box.height
	End if 
	If ($state_obj.box.padding#Null)
		$toDraw_obj.btn.box.padding:=$state_obj.box.padding
	End if 
	If ($state_obj.box.cornerRadius#Null)
		$toDraw_obj.btn.box.cornerRadius:=$state_obj.box.cornerRadius
	End if 
	If ($state_obj.box.backgroundColor#Null)
		$toDraw_obj.btn.box.backgroundColor:=$state_obj.box.backgroundColor
	End if 
End if 

// ----------------------
// Border
// ----------------------
If (Not(OB Is empty($state_obj.border)))
	If ($state_obj.border.color#Null)
		$toDraw_obj.btn.border.color:=$state_obj.border.color
	End if 
	If ($state_obj.border.size#Null)
		$toDraw_obj.btn.border.size:=$state_obj.border.size
	End if 
End if 

// ----------------------
// Text
// ----------------------
If (Not(OB Is empty($state_obj.text)))
	If ($state_obj.text.label#Null)
		$toDraw_obj.btn.text.label:=$state_obj.text.label
	End if 
	If ($state_obj.text.fontName#Null)
		$toDraw_obj.btn.text.fontName:=$state_obj.text.fontName
	End if 
	If ($state_obj.text.fontSize#Null)
		$toDraw_obj.btn.text.fontSize:=$state_obj.text.fontSize
	End if 
	If ($state_obj.text.fontColor#Null)
		$toDraw_obj.btn.text.fontColor:=$state_obj.text.fontColor
	End if 
	If ($state_obj.text.fontStyle#Null)
		$toDraw_obj.btn.text.fontStyle:=$state_obj.text.fontStyle
	End if 
	If ($state_obj.text.align#Null)
		$toDraw_obj.btn.text.align:=$state_obj.text.align
	End if 
	If ($state_obj.text.horizontalMargin#Null)
		$toDraw_obj.btn.text.horizontalMargin:=$state_obj.text.horizontalMargin
	End if 
End if 

// ----------------------
// Composite
// ----------------------
If (Not(OB Is empty($state_obj.composite)))
	If ($state_obj.composite.spaceBetween#Null)
		$toDraw_obj.btn.composite.spaceBetween:=$state_obj.composite.spaceBetween
	End if 
	If ($state_obj.composite.pictSizeAllocation#Null)
		$toDraw_obj.btn.composite.pictSizeAllocation:=$state_obj.composite.pictSizeAllocation
	End if 
	If ($state_obj.composite.picturePosition#Null)
		$toDraw_obj.btn.composite.picturePosition:=$state_obj.composite.picturePosition
	End if 
	If ($state_obj.composite.backgroundSecondaryColor#Null)
		$toDraw_obj.btn.composite.backgroundSecondaryColor:=$state_obj.composite.backgroundSecondaryColor
	End if 
End if 


// ----------------------
// Picture
// ----------------------
If (Not(OB Is empty($state_obj.picture)))
	If ($state_obj.picture.path#Null)
		$toDraw_obj.btn.picture.path:=$state_obj.picture.path
	End if 
	If ($state_obj.picture.pict#Null)
		$toDraw_obj.btn.picture.pict:=$state_obj.picture.pict
	End if 
	If ($state_obj.picture.height#Null)
		$toDraw_obj.btn.picture.height:=$state_obj.picture.height
	End if 
	If ($state_obj.picture.width#Null)
		$toDraw_obj.btn.picture.width:=$state_obj.picture.width
	End if 
	If ($state_obj.picture.replacingColor#Null)
		$toDraw_obj.btn.picture.replacingColor:=$state_obj.picture.replacingColor
	End if 
	If ($state_obj.picture.colorToReplace#Null)
		$toDraw_obj.btn.picture.colorToReplace:=$state_obj.picture.colorToReplace
	End if 
	If ($state_obj.picture.opacity#Null)
		$toDraw_obj.btn.picture.opacity:=$state_obj.picture.opacity
	End if 
	If ($state_obj.picture.ratio#Null)
		$toDraw_obj.btn.picture.ratio:=$state_obj.picture.ratio
	End if 
	If ($state_obj.picture.scale#Null)
		$toDraw_obj.btn.picture.scale:=$state_obj.picture.scale
	End if 
End if 

