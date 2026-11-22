//%attributes = {"invisible":true}
// AJUI_Btn_initFormulas ( $instance_obj  ) 
//
// $instance_obj : (object) instance object
//
// Init formulas in a button instance object

#DECLARE($param1 : Object)

If (False)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 19.07.19, 12:05:04
	// ----------------------------------------------------
	// Method: AJUI_Btn_initFormulas
	// Description
	//
	// IN CASE OF MODIFICATION : EDIT THE AJUI_Btn_PropertyCol method
	//
	// ----------------------------------------------------
End if 

var $instance_obj : Object
$instance_obj:=$param1

// ----------------------
// OPERATION
// ----------------------
$instance_obj.Draw:=Formula(AJUI_Btn_draw)
$instance_obj.ResetState:=Formula(AJUI_Btn_resetState)
$instance_obj.ResetAllStates:=Formula(AJUI_Btn_resetAllStates)
$instance_obj.Show:=Formula(AJUI_Btn_show)
$instance_obj.Hide:=Formula(AJUI_Btn_hide)
$instance_obj.Enable:=Formula(AJUI_Btn_enable)
$instance_obj.Export:=Formula(AJUI_Btn_templateExport)
$instance_obj.RemovePropertyException:=Formula(AJUI_Btn_removePropException)
$instance_obj.RemovePropertyExceptions:=Formula(AJUI_Btn_removePropExceptions)


// ----------------------
// EventCallback
// ----------------------
$instance_obj.OnClick:=Formula(AJUI_Btn_GetSetOnClickCB)
$instance_obj.OnDoubleClick:=Formula(AJUI_Btn_GetSetOnDoubleClickCB)

// ----------------------
// Button Definition
// ----------------------
$instance_obj.Name:=Formula(AJUI_Btn_GetSetName)
$instance_obj.Type:=Formula(AJUI_Btn_GetSetType)
$instance_obj.Composition:=Formula(AJUI_Btn_GetSetComposition)


// ----------------------
// Button Box
// ----------------------
$instance_obj.Width:=Formula(AJUI_Btn_GetSetBoxWidth)
$instance_obj.Height:=Formula(AJUI_Btn_GetSetBoxHeight)
$instance_obj.padding:=Formula(AJUI_Btn_GetSetBoxPadding)
$instance_obj.CornerRadius:=Formula(AJUI_Btn_GetSetCornerRadius)
$instance_obj.BGColor:=Formula(AJUI_Btn_GetSetBGPrimaColor)
$instance_obj.Resizable:=Formula(AJUI_Btn_GetSetResizeBox)

// ----------------------
// Border
// ----------------------
$instance_obj.BorderColor:=Formula(AJUI_Btn_GetSetBorderColor)
$instance_obj.BorderSize:=Formula(AJUI_Btn_GetSetBorderSize)

// ----------------------
// Text
// ----------------------
$instance_obj.Label:=Formula(AJUI_Btn_GetSetLabel)
$instance_obj.FontName:=Formula(AJUI_Btn_GetSetFontName)
$instance_obj.FontSize:=Formula(AJUI_Btn_GetSetFontSize)
$instance_obj.FontColor:=Formula(AJUI_Btn_GetSetFontColor)
$instance_obj.FontStyle:=Formula(AJUI_Btn_GetSetFontStyle)
$instance_obj.textAlign:=Formula(AJUI_Btn_GetSetTextAlign)
$instance_obj.TextMarginHorizontal:=Formula(AJUI_Btn_GetSetHorizontalMargin)

// ----------------------
// Picture
// ----------------------
$instance_obj.PicturePath:=Formula(AJUI_Btn_GetSetPicturePath)
$instance_obj.PictureWidth:=Formula(AJUI_Btn_GetSetPictureWidth)
$instance_obj.PictureHeight:=Formula(AJUI_Btn_GetSetPictureHeight)
$instance_obj.ReplacingColor:=Formula(AJUI_Btn_GetSetReplacingColor)
$instance_obj.ColorToReplace:=Formula(AJUI_Btn_GetSetColorToReplace)
$instance_obj.PictureOpacity:=Formula(AJUI_Btn_GetSetPictureOpacity)
$instance_obj.PictureRatio:=Formula(AJUI_Btn_GetSetPictureRatio)
$instance_obj.PictureScale:=Formula(AJUI_Btn_GetSetPictureScale)


// ----------------------
// Composite
// ----------------------
$instance_obj.CompLinked:=Formula(AJUI_Btn_GetSetCompositeLinked)
$instance_obj.CompPadding:=Formula(AJUI_Btn_GetSetCompositePadding)
$instance_obj.CompPictSizeAllocation:=Formula(AJUI_Btn_GetSetPictSizeAlloc)
$instance_obj.CompTextAlign:=Formula(AJUI_Btn_GetSetTextAlign)
$instance_obj.CompActiveSecondColor:=Formula(AJUI_Btn_GetSetActiveSecColor)
$instance_obj.CompPicturePosition:=Formula(AJUI_Btn_GetSetPicturePosition)
$instance_obj.BGSecondaryColor:=Formula(AJUI_Btn_GetSetBGSecondColor)

// ----------------------
// FAB
// ----------------------
$instance_obj.FABIsMainButton:=Formula(AJUI_Btn_GetSetMainFab)
$instance_obj.FABRadius:=Formula(AJUI_Btn_GetSetRadiusFab)
$instance_obj.FABStartAngle:=Formula(AJUI_Btn_GetSetStartAngleFab)
$instance_obj.FABAngleToTravel:=Formula(AJUI_Btn_GetSetAngleToTravelFAB)
$instance_obj.FABIsClockwise:=Formula(AJUI_Btn_GetSetClockwiseFAB)
$instance_obj.FABAdd:=Formula(AJUI_Btn_addFab)
$instance_obj.FABRemove:=Formula(AJUI_Btn_removeFAB)
$instance_obj.FABClearCollection:=Formula(AJUI_Btn_clearFabCollection)
$instance_obj.FABMainPosition:=Formula(AJUI_Btn_GetSetMainPositionFAB)
$instance_obj.FABIsAnimated:=Formula(AJUI_Btn_GetSetActivateAnim)
