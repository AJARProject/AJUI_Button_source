// Declared so the 21 R4 compiler knows the properties set on This (4D 21 R4 classes).
// https://developer.4d.com/docs/21-R4/Concepts/classes
property btn : Object
property templateName; templatePath : Text

Class constructor($param1 : Object)
	
	var $template_obj : Object
	If (Count parameters=1)
		$template_obj:=$param1
		If ($template_obj.templatePath=Null)
			$template_obj:=AJUI_Btn_templateImport($template_obj.templateName)
		Else 
			$template_obj:=AJUI_Btn_templateImport($template_obj.templateName; $template_obj.templatePath)
		End if 
		
		If (This.btn.failImport)
			$template_obj:=New object()
		Else 
			This.btn:=$template_obj.btn
			This.templateName:=String($template_obj.templateName)
			This.templatePath:=String($template_obj.templatePath)
		End if 
	End if 
	
	AJUI_Btn_initAttributes(This)
	
Function onClick($param1 : Variant; $param2 : Object) -> $result : Variant
	// ----------------------
	// EventCallback
	// ----------------------
	// Getter and setter for the callback on the click event
	
	// $callback : (variant) (optional) callback
	// $params : (object) (optional) params
	// return : (variant) (return) current callback
	
	
	Case of 
		: (Count parameters=0)
			$result:=AJUI_Btn_GetSetOnClickCB
		: (Count parameters=1)
			AJUI_Btn_GetSetOnClickCB($param1)
		: (Count parameters=2)
			AJUI_Btn_GetSetOnClickCB($param1; $param2)
	End case 
	
Function onDoubleClick($param1 : Variant; $param2 : Object) -> $result : Variant
	// ----------------------
	// EventCallback
	// ----------------------
	// Getter and setter for the callback on the double click event
	
	// $callback : (variant) (optional) callback
	// $params : (object) (optional) params
	// return : (variant) (return) current callback
	
	
	Case of 
		: (Count parameters=0)
			$result:=AJUI_Btn_GetSetOnDoubleClickCB
		: (Count parameters=1)
			AJUI_Btn_GetSetOnDoubleClickCB($param1)
		: (Count parameters=2)
			AJUI_Btn_GetSetOnDoubleClickCB($param1; $param2)
	End case 
	
Function composition($param1 : Text) -> $result : Text
	// ----------------------
	// Button Definition
	// ----------------------
	// Getter and setter for the composition of the button
	
	// $1 : (text) (optional) button composition
	// $2 : (text) (return) current composition
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetComposition
	Else 
		AJUI_Btn_GetSetComposition($param1)
	End if 
	
Function name($param1 : Text) -> $result : Text
	// ----------------------
	// Button Definition
	// ----------------------
	// Getter and setter for name of the picture form object who will receive the button
	
	// $1 : (text) (optional) name 
	// $0 : (text) (return) value
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetName
	Else 
		AJUI_Btn_GetSetName($param1)
	End if 
	
Function type($param1 : Text) -> $result : Text
	// ----------------------
	// Button Definition
	// ----------------------
	// Getter and setter for the type of the button
	
	// $1 : (text) (optional) type 
	// $0 : (text) (return) current type
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetType
	Else 
		AJUI_Btn_GetSetType($param1)
	End if 
	
Function backgroundColor($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter for the background primary color of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) color
	// $0 : (text) (return) current BG primary color
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetBGPrimaColor($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetBGPrimaColor($param1)
	End if 
	
Function bgColor($param1 : Text; $param2 : Text) -> $result : Text
	// ALIAS for backgroundColor
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetBGPrimaColor($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetBGPrimaColor($param1)
	End if 
	
Function cornerRadius($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter for the radius size of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) radius size
	// $0 : (longint) (return) current radius size
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetCornerRadius($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetCornerRadius($param1)
	End if 
	
Function height($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter for the box height of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) box height
	// $0 : (longint) (return) current box height
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetBoxHeight($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetBoxHeight($param1)
	End if 
	
Function resizable($param1 : Boolean) -> $result : Boolean
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter method to activate the resizing of the box
	
	// $1 : (boolean) (optional) resize box
	// $0 : (boolean) (return) return resized box?
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetResizeBox
	Else 
		AJUI_Btn_GetSetResizeBox($param1)
	End if 
	
Function width($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter for the box width of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) box width
	// $0 : (longint) (return) current box width
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetBoxWidth($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetBoxWidth($param1)
	End if 
	
Function padding($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter for the padding of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) box padding
	// $0 : (longint) (return) current padding
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetBoxPadding($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetBoxPadding($param1)
	End if 
	
Function borderColor($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Border
	// ----------------------
	// Getter and setter for the border color of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) color
	// $0 : (text) (return) current border color
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetBorderColor($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetBorderColor($param1)
	End if 
	
Function borderSize($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Border
	// ----------------------
	// Getter and setter for the box width of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) size
	// $0 : (longint) (return) current border size
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetBorderSize($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetBorderSize($param1)
	End if 
	
Function fontColor($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the font color of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) font color
	// $0 : (text) (return) current font color
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetFontColor($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetFontColor($param1)
	End if 
	
Function fontName($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the font name of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) font name
	// $0 : (text) (return) current font name
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetFontName($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetFontName($param1)
	End if 
	
Function fontSize($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the font size of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) font size
	// $0 : (longint) (return) current font size
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetFontSize($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetFontSize($param1)
	End if 
	
Function fontStyle($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the font style of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) font style
	// $0 : (text) (return) current font style
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetFontStyle($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetFontStyle($param1)
	End if 
	
Function textAlign($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Text
	// ----------------------
	// $state : (text) button state
	// $textAlign : (text) (optional) text align (left, center or right)
	// return : (longint) (return) current font size
	//
	// Getter and setter for the text align of a button
	
	If (Count parameters=2)
		AJUI_Btn_GetSetTextAlign($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetTextAlign($param1)
	End if 
	
Function label($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the text area label of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) label
	// $0 : (text) (return) current label
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetLabel($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetLabel($param1)
	End if 
	
Function horizontalMargin($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the text margin horizontal
	
	// $1 : (text) button state
	// $2 : (longint) (optional) margin horizontal
	// $0 : (longint) (return) current margin horizontal
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetHorizontalMargin($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetHorizontalMargin($param1)
	End if 
	
Function colorToReplace($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter to specify the old color of a SVG, it will be replaced by the new color
	
	// $1 : (text) button state
	// $2 : (text) (optional) color
	// $0 : (text) (return) current old color
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetColorToReplace($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetColorToReplace($param1)
	End if 
	
Function pictureHeight($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the picture height of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) picture height
	// $0 : (longint) (return) current picture height
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetPictureHeight($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetPictureHeight($param1)
	End if 
	
Function picturePath($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the picture path
	
	// $1 : (text) button state
	// $2 : (text) (optional) picture path
	// $0 : (text) (return) current picture path
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetPicturePath($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetPicturePath($param1)
	End if 
	
/*
Allow to set the picture directly with a picture instead of a path
*/
Function picture($state : Text; $picture : Picture) : Picture
	var $current_obj : Object
	
	If ($state="default")
		$current_obj:=This.btn
	Else 
		$current_obj:=This.btn[$state]
	End if 
	
	If (Count parameters=1)
		If ($current_obj.picture.picture#Null)
			return $current_obj.picture.picture
		Else 
			return This.btn.picture.picture
		End if 
	Else 
		$current_obj.picture.picture:=$picture
	End if 
	
Function pictureOpacity($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for picture opacity (percent)
	
	// $1 : (text) button state
	// $2 : (longint) (optional) picture opacity in percent
	// $0 : (longint) (return) current opacity
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetPictureOpacity($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetPictureOpacity($param1)
	End if 
	
Function pictureRatio($param1 : Text; $param2 : Real) -> $result : Real
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the size of the picture with a ratio
	
	// $1 : (text) button state
	// $2 : (real) (optional) ratio to resize picture
	// $0 : (real) (return) current ratio
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetPictureRatio($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetPictureRatio($param1)
	End if 
	
Function pictureScale($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the size of the picture, scale with the size of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) scale in percent
	// $0 : (longint) (return) current scale
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetPictureScale($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetPictureScale($param1)
	End if 
	
Function pictureWidth($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the picture width of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) picture width
	// $0 : (longint) (return) current picture width
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetPictureWidth($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetPictureWidth($param1)
	End if 
	
Function replacingColor($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the new Color to add in SVG instead of the old color
	
	// $1 : (text) button state
	// $2 : (text) (optional) new color
	// $0 : (text) (return) current new color
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetReplacingColor($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetReplacingColor($param1)
	End if 
	
Function backgroundSecondaryColor($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter for the background secondary color of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) color
	// $0 : (text) (return) current BG secondary color
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetBGSecondColor($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetBGSecondColor($param1)
	End if 
	
Function bgSecondaryColor($param1 : Text; $param2 : Text) -> $result : Text
	// ALIAS for backgroundSecondaryColor
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetBGSecondColor($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetBGSecondColor($param1)
	End if 
	
Function activateSecondaryColor($param1 : Boolean) -> $result : Boolean
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter to activate the use of the second color with a composite button
	
	// $1 : (boolean) (optionnal) activate
	// $0 : (boolean) (return) activation state
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetActiveSecColor
	Else 
		AJUI_Btn_GetSetActiveSecColor($param1)
	End if 
	
Function linkTextToPicture($param1 : Boolean) -> $result : Boolean
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter to switch the linked option for the composite button
	
	// $1 : (boolean) (optionnal) linked composite
	// $0 : (boolean) (return) current composite linked option
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetCompositeLinked
	Else 
		AJUI_Btn_GetSetCompositeLinked($param1)
	End if 
	
Function spaceBetween($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter for the padding between text and picture when linked option is activate
	
	// $1 : (text) button state
	// $2 : (longint) (optional) padding size
	// $0 : (longint) (return) current padding
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetCompositePadding($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetCompositePadding($param1)
	End if 
	
Function pictureAllocation($param1 : Text; $param2 : Integer) -> $result : Integer
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter for the size allocated to the picture for a composite button. This will also help to resize the picture if necessary
	
	// $1 : (text) button state
	// $2 : (longint) (optional) percent
	// $0 : (longint) (return) current percent
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetPictSizeAlloc($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetPictSizeAlloc($param1)
	End if 
	
Function picturePosition($param1 : Text; $param2 : Text) -> $result : Text
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter for the picture position in a composite button
	
	// $1 : (text) button state
	// $2 : (text) (optional) position
	// $0 : (text) (return) current picture position
	
	
	If (Count parameters=2)
		AJUI_Btn_GetSetPicturePosition($param1; $param2)
	Else 
		$result:=AJUI_Btn_GetSetPicturePosition($param1)
	End if 
	
Function FAB_add($param1 : Text; $param2 : Integer)
	// ----------------------
	// FAB
	// ----------------------
	// Add an item in the FAB collection
	
	// $1 : (text) name form object
	// $2 : (longint) (optional) position
	
	
	If (Count parameters=2)
		AJUI_Btn_addFab($param1; $param2)
	Else 
		AJUI_Btn_addFab($param1)
	End if 
	
Function FAB_angle($param1 : Integer) -> $result : Integer
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter for the anglet to travel (FAB)
	
	// $1 : (longint) (optional) angle to travel
	// $0 : (longint) (return) current angle to travel
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetAngleToTravelFAB
	Else 
		AJUI_Btn_GetSetAngleToTravelFAB($param1)
	End if 
	
Function FAB_clearCollection
	// ----------------------
	// FAB
	// ----------------------
	// Clear FAB collection
	
	AJUI_Btn_clearFabCollection
	
Function FAB_animated($param1 : Boolean) -> $result : Boolean
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter to activate/inactivate the FAB animation
	
	// $1 : (boolean) (optional) activate/inactivate
	// $0 : (boolean) (return) animation executed ?
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetActivateAnim
	Else 
		AJUI_Btn_GetSetActivateAnim($param1)
	End if 
	
Function FAB_clockwise($param1 : Boolean) -> $result : Boolean
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter for the isClockwise display of the FAB
	
	// $1 : (boolean) (optional) isClockwise
	// $0 : (boolean) (return) current isClockwise
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetClockwiseFAB
	Else 
		AJUI_Btn_GetSetClockwiseFAB($param1)
	End if 
	
Function FAB_main($param1 : Boolean) -> $result : Boolean
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter to define this instace as a main FAB button
	
	// $1 : (boolean) (optional) isMain
	// $0 : (boolean) (return) value isMain
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetMainFab
	Else 
		AJUI_Btn_GetSetMainFab($param1)
	End if 
	
Function FAB_position($param1 : Text) -> $result : Text
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter for the position of the main button
	
	// $1 : (text) (optional) main position
	// $0 : (text) (return) current main position
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetMainPositionFAB
	Else 
		AJUI_Btn_GetSetMainPositionFAB($param1)
	End if 
	
Function FAB_radius($param1 : Integer) -> $result : Integer
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter for the radius of the FAB
	
	// $1 : (longint) (optional) radius
	// $0 : (longint) (return) current radius
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetRadiusFab
	Else 
		AJUI_Btn_GetSetRadiusFab($param1)
	End if 
	
Function FAB_remove($param1 : Text)
	// ----------------------
	// FAB
	// ----------------------
	// remove an item in the FAB colleciton
	
	// $1 : (text) name form object
	
	
	AJUI_Btn_removeFAB($param1)
	
Function FAB_startAngle($param1 : Integer) -> $result : Integer
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter for the start angle of the FAB
	
	// $1 : (longint) (optional) start angle
	// $0 : (longint) (return) current start angle
	
	
	If (Count parameters=0)
		$result:=AJUI_Btn_GetSetStartAngleFab
	Else 
		AJUI_Btn_GetSetStartAngleFab($param1)
	End if 
	
Function draw
	// ----------------------
	// FUNCTION
	// ----------------------
	// this method handles exceptions related to the button state and also events before giving the appropriate object to draw the SVG
	
	AJUI_Btn_draw
	
Function enable($param1 : Boolean)
	// ----------------------
	// FUNCTION
	// ----------------------
	// Method to set the disable state. Will relaunch the draw button
	
	// $1 : (boolean) description
	
	
	AJUI_Btn_enable($param1)
	
Function export($param1 : Text; $param2 : Text)
	// ----------------------
	// FUNCTION
	// ----------------------
	// Method to export the AJUI Button instance into a json file
	
	// $1 : (text) AJUI Button template name
	// $2 : (text) (optional) Path to export
	
	
	If (Count parameters=2)
		AJUI_Btn_templateExport($param1; $param2)
	Else 
		AJUI_Btn_templateExport($param1)
	End if 
	
Function hide
	// ----------------------
	// FUNCTION
	// ----------------------
	// Wrapper for the object set visible (false)
	
	AJUI_Btn_hide
	
Function removePropertyException($param1 : Text; $param2 : Text)
	// ----------------------
	// FUNCTION
	// ----------------------
	// This method remove an exception
	
	// $1 : (text) formula name
	// $2 : (text) state to target
	
	
	AJUI_Btn_removePropException($param1; $param2)
	
Function removePropertyExceptions($param1 : Text)
	// ----------------------
	// FUNCTION
	// ----------------------
	// This method remove an exception
	
	// $1 : (text) formula name
	
	
	AJUI_Btn_removePropExceptions($param1)
	
Function resetAllStates
	// ----------------------
	// FUNCTION
	// ----------------------
	// Clean/Reset all states exceptions
	
	AJUI_Btn_resetAllStates
	
Function resetState($param1 : Text)
	// ----------------------
	// FUNCTION
	// ----------------------
	// Clean/Reset state exceptions
	
	// $1 : (text) button state
	
	
	AJUI_Btn_resetState($param1)
	
Function show
	// ----------------------
	// FUNCTION
	// ----------------------
	// Wrapper for the object set visible (true)
	
	AJUI_Btn_show