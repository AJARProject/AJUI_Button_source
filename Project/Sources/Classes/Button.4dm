Class constructor
	
	C_OBJECT:C1216($1;$template_obj)
	
	If (Count parameters:C259=1)
		If ($1.templatePath=Null:C1517)
			$template_obj:=AJUI_Btn_templateImport($1.templateName)
		Else 
			$template_obj:=AJUI_Btn_templateImport($1.templateName;$1.templatePath)
		End if 
		
		If (This:C1470.btn.failImport)
			$template_obj:=New object:C1471()
		Else 
			This:C1470.btn:=$template_obj.btn
		End if 
	End if 
	
	AJUI_Btn_initAttributes(This:C1470)
	
Function onClick
	// ----------------------
	// EventCallback
	// ----------------------
	// Getter and setter for the callback on the click event
	
	// $callback : (variant) (optional) callback
	// $params : (object) (optional) params
	// return : (variant) (return) current callback
	
	C_VARIANT:C1683($0;$1)
	C_OBJECT:C1216($2)
	
	Case of 
		: (Count parameters:C259=0)
			$0:=AJUI_Btn_GetSetOnClickCB
		: (Count parameters:C259=1)
			AJUI_Btn_GetSetOnClickCB($1)
		: (Count parameters:C259=2)
			AJUI_Btn_GetSetOnClickCB($1;$2)
	End case 
	
Function onDoubleClick
	// ----------------------
	// EventCallback
	// ----------------------
	// Getter and setter for the callback on the double click event
	
	// $callback : (variant) (optional) callback
	// $params : (object) (optional) params
	// return : (variant) (return) current callback
	
	C_VARIANT:C1683($0;$1)
	C_OBJECT:C1216($2)
	
	Case of 
		: (Count parameters:C259=0)
			$0:=AJUI_Btn_GetSetOnDoubleClickCB
		: (Count parameters:C259=1)
			AJUI_Btn_GetSetOnDoubleClickCB($1)
		: (Count parameters:C259=2)
			AJUI_Btn_GetSetOnDoubleClickCB($1;$2)
	End case 
	
Function composition
	// ----------------------
	// Button Definition
	// ----------------------
	// Getter and setter for the composition of the button
	
	// $1 : (text) (optional) button composition
	// $2 : (text) (return) current composition
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetComposition
	Else 
		AJUI_Btn_GetSetComposition($1)
	End if 
	
Function name
	// ----------------------
	// Button Definition
	// ----------------------
	// Getter and setter for name of the picture form object who will receive the button
	
	// $1 : (text) (optional) name 
	// $0 : (text) (return) value
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetName
	Else 
		AJUI_Btn_GetSetName($1)
	End if 
	
Function type
	// ----------------------
	// Button Definition
	// ----------------------
	// Getter and setter for the type of the button
	
	// $1 : (text) (optional) type 
	// $0 : (text) (return) current type
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetType
	Else 
		AJUI_Btn_GetSetType($1)
	End if 
	
Function backgroundColor
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter for the background primary color of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) color
	// $0 : (text) (return) current BG primary color
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetBGPrimaColor($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetBGPrimaColor($1)
	End if 
	
Function bgColor
	// ALIAS for backgroundColor
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetBGPrimaColor($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetBGPrimaColor($1)
	End if 
	
Function cornerRadius
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter for the radius size of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) radius size
	// $0 : (longint) (return) current radius size
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetCornerRadius($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetCornerRadius($1)
	End if 
	
Function height
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter for the box height of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) box height
	// $0 : (longint) (return) current box height
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetBoxHeight($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetBoxHeight($1)
	End if 
	
Function resizable
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter method to activate the resizing of the box
	
	// $1 : (boolean) (optional) resize box
	// $0 : (boolean) (return) return resized box?
	
	C_BOOLEAN:C305($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetResizeBox
	Else 
		AJUI_Btn_GetSetResizeBox($1)
	End if 
	
Function width
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter for the box width of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) box width
	// $0 : (longint) (return) current box width
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetBoxWidth($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetBoxWidth($1)
	End if 
	
Function padding
	// ----------------------
	// Button Box
	// ----------------------
	// Getter and setter for the padding of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) box padding
	// $0 : (longint) (return) current padding
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetBoxPadding($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetBoxPadding($1)
	End if 
	
Function borderColor
	// ----------------------
	// Border
	// ----------------------
	// Getter and setter for the border color of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) color
	// $0 : (text) (return) current border color
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetBorderColor($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetBorderColor($1)
	End if 
	
Function borderSize
	// ----------------------
	// Border
	// ----------------------
	// Getter and setter for the box width of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) size
	// $0 : (longint) (return) current border size
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetBorderSize($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetBorderSize($1)
	End if 
	
Function fontColor
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the font color of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) font color
	// $0 : (text) (return) current font color
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetFontColor($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetFontColor($1)
	End if 
	
Function fontName
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the font name of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) font name
	// $0 : (text) (return) current font name
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetFontName($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetFontName($1)
	End if 
	
Function fontSize
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the font size of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) font size
	// $0 : (longint) (return) current font size
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetFontSize($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetFontSize($1)
	End if 
	
Function fontStyle
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the font style of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) font style
	// $0 : (text) (return) current font style
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetFontStyle($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetFontStyle($1)
	End if 
	
Function textAlign
	// ----------------------
	// Text
	// ----------------------
	// $state : (text) button state
	// $textAlign : (text) (optional) text align (left, center or right)
	// return : (longint) (return) current font size
	//
	// Getter and setter for the text align of a button
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetTextAlign($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetTextAlign($1)
	End if 
	
Function label
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the text area label of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) label
	// $0 : (text) (return) current label
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetLabel($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetLabel($1)
	End if 
	
Function horizontalMargin
	// ----------------------
	// Text
	// ----------------------
	// Getter and setter for the text margin horizontal
	
	// $1 : (text) button state
	// $2 : (longint) (optional) margin horizontal
	// $0 : (longint) (return) current margin horizontal
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetHorizontalMargin($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetHorizontalMargin($1)
	End if 
	
Function colorToReplace
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter to specify the old color of a SVG, it will be replaced by the new color
	
	// $1 : (text) button state
	// $2 : (text) (optional) color
	// $0 : (text) (return) current old color
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetColorToReplace($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetColorToReplace($1)
	End if 
	
Function pictureHeight
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the picture height of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) picture height
	// $0 : (longint) (return) current picture height
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetPictureHeight($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetPictureHeight($1)
	End if 
	
Function picturePath
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the picture path
	
	// $1 : (text) button state
	// $2 : (text) (optional) picture path
	// $0 : (text) (return) current picture path
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetPicturePath($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetPicturePath($1)
	End if 
	
Function pictureOpacity
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for picture opacity (percent)
	
	// $1 : (text) button state
	// $2 : (longint) (optional) picture opacity in percent
	// $0 : (longint) (return) current opacity
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetPictureOpacity($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetPictureOpacity($1)
	End if 
	
Function pictureRatio
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the size of the picture with a ratio
	
	// $1 : (text) button state
	// $2 : (real) (optional) ratio to resize picture
	// $0 : (real) (return) current ratio
	
	C_TEXT:C284($1)
	C_REAL:C285($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetPictureRatio($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetPictureRatio($1)
	End if 
	
Function pictureScale
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the size of the picture, scale with the size of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) scale in percent
	// $0 : (longint) (return) current scale
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetPictureScale($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetPictureScale($1)
	End if 
	
Function pictureWidth
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the picture width of the button
	
	// $1 : (text) button state
	// $2 : (longint) (optional) picture width
	// $0 : (longint) (return) current picture width
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetPictureWidth($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetPictureWidth($1)
	End if 
	
Function replacingColor
	// ----------------------
	// Picture
	// ----------------------
	// Getter and setter for the new Color to add in SVG instead of the old color
	
	// $1 : (text) button state
	// $2 : (text) (optional) new color
	// $0 : (text) (return) current new color
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetReplacingColor($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetReplacingColor($1)
	End if 
	
Function backgroundSecondaryColor
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter for the background secondary color of the button
	
	// $1 : (text) button state
	// $2 : (text) (optional) color
	// $0 : (text) (return) current BG secondary color
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetBGSecondColor($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetBGSecondColor($1)
	End if 
	
Function bgSecondaryColor
	// ALIAS for backgroundSecondaryColor
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetBGSecondColor($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetBGSecondColor($1)
	End if 
	
Function activateSecondaryColor
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter to activate the use of the second color with a composite button
	
	// $1 : (boolean) (optionnal) activate
	// $0 : (boolean) (return) activation state
	
	C_BOOLEAN:C305($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetActiveSecColor
	Else 
		AJUI_Btn_GetSetActiveSecColor($1)
	End if 
	
Function linkTextToPicture
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter to switch the linked option for the composite button
	
	// $1 : (boolean) (optionnal) linked composite
	// $0 : (boolean) (return) current composite linked option
	
	C_BOOLEAN:C305($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetCompositeLinked
	Else 
		AJUI_Btn_GetSetCompositeLinked($1)
	End if 
	
Function spaceBetween
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter for the padding between text and picture when linked option is activate
	
	// $1 : (text) button state
	// $2 : (longint) (optional) padding size
	// $0 : (longint) (return) current padding
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetCompositePadding($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetCompositePadding($1)
	End if 
	
Function pictureAllocation
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter for the size allocated to the picture for a composite button. This will also help to resize the picture if necessary
	
	// $1 : (text) button state
	// $2 : (longint) (optional) percent
	// $0 : (longint) (return) current percent
	
	C_TEXT:C284($1)
	C_LONGINT:C283($0;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetPictSizeAlloc($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetPictSizeAlloc($1)
	End if 
	
Function picturePosition
	// ----------------------
	// Composite
	// ----------------------
	// Getter and setter for the picture position in a composite button
	
	// $1 : (text) button state
	// $2 : (text) (optional) position
	// $0 : (text) (return) current picture position
	
	C_TEXT:C284($0;$1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_GetSetPicturePosition($1;$2)
	Else 
		$0:=AJUI_Btn_GetSetPicturePosition($1)
	End if 
	
Function FAB_add
	// ----------------------
	// FAB
	// ----------------------
	// Add an item in the FAB collection
	
	// $1 : (text) name form object
	// $2 : (longint) (optional) position
	
	C_TEXT:C284($1)
	C_LONGINT:C283($2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_addFab($1;$2)
	Else 
		AJUI_Btn_addFab($1)
	End if 
	
Function FAB_angle
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter for the anglet to travel (FAB)
	
	// $1 : (longint) (optional) angle to travel
	// $0 : (longint) (return) current angle to travel
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetAngleToTravelFAB
	Else 
		AJUI_Btn_GetSetAngleToTravelFAB($1)
	End if 
	
Function FAB_clearCollection
	// ----------------------
	// FAB
	// ----------------------
	// Clear FAB collection
	
	AJUI_Btn_clearFabCollection
	
Function FAB_animated
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter to activate/inactivate the FAB animation
	
	// $1 : (boolean) (optional) activate/inactivate
	// $0 : (boolean) (return) animation executed ?
	
	C_BOOLEAN:C305($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetActivateAnim
	Else 
		AJUI_Btn_GetSetActivateAnim($1)
	End if 
	
Function FAB_clockwise
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter for the isClockwise display of the FAB
	
	// $1 : (boolean) (optional) isClockwise
	// $0 : (boolean) (return) current isClockwise
	
	C_BOOLEAN:C305($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetClockwiseFAB
	Else 
		AJUI_Btn_GetSetClockwiseFAB($1)
	End if 
	
Function FAB_main
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter to define this instace as a main FAB button
	
	// $1 : (boolean) (optional) isMain
	// $0 : (boolean) (return) value isMain
	
	C_BOOLEAN:C305($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetMainFab
	Else 
		AJUI_Btn_GetSetMainFab($1)
	End if 
	
Function FAB_position
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter for the position of the main button
	
	// $1 : (text) (optional) main position
	// $0 : (text) (return) current main position
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetMainPositionFAB
	Else 
		AJUI_Btn_GetSetMainPositionFAB($1)
	End if 
	
Function FAB_radius
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter for the radius of the FAB
	
	// $1 : (longint) (optional) radius
	// $0 : (longint) (return) current radius
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetRadiusFab
	Else 
		AJUI_Btn_GetSetRadiusFab($1)
	End if 
	
Function FAB_remove
	// ----------------------
	// FAB
	// ----------------------
	// remove an item in the FAB colleciton
	
	// $1 : (text) name form object
	
	C_TEXT:C284($1)
	
	AJUI_Btn_removeFAB($1)
	
Function FAB_startAngle
	// ----------------------
	// FAB
	// ----------------------
	// Getter and setter for the start angle of the FAB
	
	// $1 : (longint) (optional) start angle
	// $0 : (longint) (return) current start angle
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUI_Btn_GetSetStartAngleFab
	Else 
		AJUI_Btn_GetSetStartAngleFab($1)
	End if 
	
Function draw
	// ----------------------
	// FUNCTION
	// ----------------------
	// this method handles exceptions related to the button state and also events before giving the appropriate object to draw the SVG
	
	AJUI_Btn_draw
	
Function enable
	// ----------------------
	// FUNCTION
	// ----------------------
	// Method to set the disable state. Will relaunch the draw button
	
	// $1 : (boolean) description
	
	C_BOOLEAN:C305($1)
	
	AJUI_Btn_enable($1)
	
Function export
	// ----------------------
	// FUNCTION
	// ----------------------
	// Method to export the AJUI Button instance into a json file
	
	// $1 : (text) AJUI Button template name
	// $2 : (text) (optional) Path to export
	
	C_TEXT:C284($1;$2)
	
	If (Count parameters:C259=2)
		AJUI_Btn_templateExport($1;$2)
	Else 
		AJUI_Btn_templateExport($1)
	End if 
	
Function hide
	// ----------------------
	// FUNCTION
	// ----------------------
	// Wrapper for the object set visible (false)
	
	AJUI_Btn_hide
	
Function removePropertyException
	// ----------------------
	// FUNCTION
	// ----------------------
	// This method remove an exception
	
	// $1 : (text) formula name
	// $2 : (text) state to target
	
	C_TEXT:C284($1;$2)
	
	AJUI_Btn_removePropException($1;$2)
	
Function removePropertyExceptions
	// ----------------------
	// FUNCTION
	// ----------------------
	// This method remove an exception
	
	// $1 : (text) formula name
	
	C_TEXT:C284($1)
	
	AJUI_Btn_removePropExceptions($1)
	
Function resetAllStates
	// ----------------------
	// FUNCTION
	// ----------------------
	// Clean/Reset all states exceptions
	
	AJUI_Btn_resetAllStates
	
Function resetState
	// ----------------------
	// FUNCTION
	// ----------------------
	// Clean/Reset state exceptions
	
	// $1 : (text) button state
	
	C_TEXT:C284($1)
	
	AJUI_Btn_resetState($1)
	
Function show
	// ----------------------
	// FUNCTION
	// ----------------------
	// Wrapper for the object set visible (true)
	
	AJUI_Btn_show