//%attributes = {}
// loadPropertiesCollections ( ) -> return
//
// $lab : (object) (return) listbox content
//
// Init listbox structure and content

#DECLARE() -> $result : Object

If (False)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 14.08.19, 09:47:41
	// ----------------------------------------------------
	// Method: loadPropertiesCollections
	// Description
	//
	// this method initializes in a collection the structure of the listbox (advanced listbox) 
	// by associating the properties and their formulas associated with the states. The hierarchy is also defined via the category.
	//
	// With the advanced listbox options of 4D, we can define the type and the presentation of the content of each line. For example, we use the atlernative button for the color properties.
	// For more details see : https://doc.4d.com/4Dv17R5/4D/17-R5/List-box-advanced-features.200-4166715.en.html
	// ----------------------------------------------------
End if 


var $lab; $pictPos_obj; $textAlign_obj; $fontName_obj; $fontStyle_obj : Object

$lab:=New object
$lab.properties:=New collection()


//BORDER category
$lab.properties.push(New object("category";"Border";"property";"color";"formula";"BorderColor";"value_object";New object("value";"black";"valueType";"text";"alternateButton";True)))
$lab.properties.push(New object("category";"Border";"property";"size";"formula";"BorderSize";"value_object";New object("value";0;"valueType";"integer";"min";0)))


//BOX category
$lab.properties.push(New object("category";"Box";"property";"bgPrimaryColor";"formula";"BGColor";"value_object";New object("value";"black";"valueType";"text";"alternateButton";True)))
$lab.properties.push(New object("category";"Box";"property";"cornerRadius";"formula";"CornerRadius";"value_object";New object("value";0;"valueType";"integer";"min";0)))
$lab.properties.push(New object("category";"Box";"property";"height";"formula";"Height";"value_object";New object("value";0;"valueType";"integer";"min";-1)))
$lab.properties.push(New object("category";"Box";"property";"width";"formula";"Width";"value_object";New object("value";0;"valueType";"integer";"min";-1)))
$lab.properties.push(New object("category";"Box";"property";"padding";"formula";"padding";"value_object";New object("value";0;"valueType";"integer";"min";0)))

//COMPOSITE category
$lab.properties.push(New object("category";"Composite";"property";"bgSecondaryColor";"formula";"BGSecondaryColor";"value_object";New object("value";"black";"valueType";"text";"alternateButton";True)))
$lab.properties.push(New object("category";"Composite";"property";"padding";"formula";"CompPadding";"value_object";New object("value";0;"valueType";"integer";"min";0)))
ARRAY TEXT($_pictPos;0)
APPEND TO ARRAY($_pictPos;"left")
APPEND TO ARRAY($_pictPos;"right")
APPEND TO ARRAY($_pictPos;"top")
APPEND TO ARRAY($_pictPos;"bottom")
$pictPos_obj:=New object("value";"left";"valueType";"text")
OB SET ARRAY($pictPos_obj;"requiredList";$_pictPos)
$lab.properties.push(New object("category";"Composite";"property";"picturePosition";"formula";"CompPicturePosition";"value_object";$pictPos_obj))
$lab.properties.push(New object("category";"Composite";"property";"pictSizeAllocation";"formula";"CompPictSizeAllocation";"value_object";New object("value";0;"valueType";"integer";"min";0)))
ARRAY TEXT($_textAlign;0)
APPEND TO ARRAY($_textAlign;"left")
APPEND TO ARRAY($_textAlign;"center")
APPEND TO ARRAY($_textAlign;"right")
$textAlign_obj:=New object("value";"center";"valueType";"text")
OB SET ARRAY($textAlign_obj;"requiredList";$_textAlign)
$lab.properties.push(New object("category";"Composite";"property";"textAlign";"formula";"CompTextAlign";"value_object";$textAlign_obj))


//PICTURE category
$lab.properties.push(New object("category";"Picture";"property";"height";"formula";"PictureHeight";"value_object";New object("value";0;"valueType";"integer";"min";-1)))
$lab.properties.push(New object("category";"Picture";"property";"width";"formula";"PictureWidth";"value_object";New object("value";0;"valueType";"integer";"min";-1)))
$lab.properties.push(New object("category";"Picture";"property";"opacity";"formula";"PictureOpacity";"value_object";New object("value";100;"valueType";"integer";"min";0;"max";100)))
$lab.properties.push(New object("category";"Picture";"property";"path";"formula";"PicturePath";"value_object";New object("value";"";"valueType";"text";"alternateButton";True)))
$lab.properties.push(New object("category";"Picture";"property";"ratio";"formula";"PictureRatio";"value_object";New object("value";0;"valueType";"real";"min";0)))
$lab.properties.push(New object("category";"Picture";"property";"colorToReplace";"formula";"ColorToReplace";"value_object";New object("value";"";"valueType";"text";"alternateButton";True)))
$lab.properties.push(New object("category";"Picture";"property";"replacingColor";"formula";"ReplacingColor";"value_object";New object("value";"";"valueType";"text";"alternateButton";True)))
$lab.properties.push(New object("category";"Picture";"property";"scale";"formula";"PictureScale";"value_object";New object("value";0;"valueType";"integer";"min";0;"max";100)))



//TEXT category
$lab.properties.push(New object("category";"Text";"property";"fontColor";"formula";"FontColor";"value_object";New object("value";"black";"valueType";"text";"alternateButton";True)))
ARRAY TEXT($_fontName;0)
FONT LIST($_fontName)
$fontName_obj:=New object("value";"Arial";"valueType";"text")
OB SET ARRAY($fontName_obj;"choiceList";$_fontName)
$lab.properties.push(New object("category";"Text";"property";"fontName";"formula";"FontName";"value_object";$fontName_obj))
$lab.properties.push(New object("category";"Text";"property";"fontSize";"formula";"FontSize";"value_object";New object("value";12;"valueType";"integer";"min";1)))
ARRAY TEXT($_textStyle;0)
APPEND TO ARRAY($_textStyle;"none")
APPEND TO ARRAY($_textStyle;"bold")
APPEND TO ARRAY($_textStyle;"italic")
APPEND TO ARRAY($_textStyle;"underline")
APPEND TO ARRAY($_textStyle;"strikethrough")
$fontStyle_obj:=New object("value";"none";"valueType";"text")
OB SET ARRAY($fontStyle_obj;"requiredList";$_textStyle)
$lab.properties.push(New object("category";"Text";"property";"fontStyle";"formula";"FontStyle";"value_object";$fontStyle_obj))
$lab.properties.push(New object("category";"Text";"property";"label";"formula";"Label";"value_object";New object("value";"";"valueType";"text")))
$lab.properties.push(New object("category";"Text";"property";"align";"formula";"textAlign";"value_object";New object("value";"";"valueType";"text")))
$lab.properties.push(New object("category";"Text";"property";"marginHorizontal";"formula";"TextMarginHorizontal";"value_object";New object("value";0;"valueType";"integer")))

$lab.defaultValues:=New AJUI_Button

$result:=$lab