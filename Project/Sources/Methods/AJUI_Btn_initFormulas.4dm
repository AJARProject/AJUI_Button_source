//%attributes = {"invisible":true}
// AJUI_Btn_initFormulas ( $instance_obj  ) 
//
// $instance_obj : (object) instance object
//
// Init formulas in a button instance object

If (False:C215)
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

C_OBJECT:C1216($1;$instance_obj)
$instance_obj:=$1

// ----------------------
// OPERATION
// ----------------------
$instance_obj.Draw:=Formula:C1597(AJUI_Btn_draw)
$instance_obj.ResetState:=Formula:C1597(AJUI_Btn_resetState)
$instance_obj.ResetAllStates:=Formula:C1597(AJUI_Btn_resetAllStates)
$instance_obj.Show:=Formula:C1597(AJUI_Btn_show)
$instance_obj.Hide:=Formula:C1597(AJUI_Btn_hide)
$instance_obj.Enable:=Formula:C1597(AJUI_Btn_enable)
$instance_obj.Export:=Formula:C1597(AJUI_Btn_templateExport)
$instance_obj.RemovePropertyException:=Formula:C1597(AJUI_Btn_removePropException)
$instance_obj.RemovePropertyExceptions:=Formula:C1597(AJUI_Btn_removePropExceptions)


// ----------------------
// EventCallback
// ----------------------
$instance_obj.OnClick:=Formula:C1597(AJUI_Btn_GetSetOnClickCB)
$instance_obj.OnDoubleClick:=Formula:C1597(AJUI_Btn_GetSetOnDoubleClickCB)

// ----------------------
// Button Definition
// ----------------------
$instance_obj.Name:=Formula:C1597(AJUI_Btn_GetSetName)
$instance_obj.Type:=Formula:C1597(AJUI_Btn_GetSetType)
$instance_obj.Composition:=Formula:C1597(AJUI_Btn_GetSetComposition)


// ----------------------
// Button Box
// ----------------------
$instance_obj.Width:=Formula:C1597(AJUI_Btn_GetSetBoxWidth)
$instance_obj.Height:=Formula:C1597(AJUI_Btn_GetSetBoxHeight)
$instance_obj.padding:=Formula:C1597(AJUI_Btn_GetSetBoxPadding)
$instance_obj.CornerRadius:=Formula:C1597(AJUI_Btn_GetSetCornerRadius)
$instance_obj.BGColor:=Formula:C1597(AJUI_Btn_GetSetBGPrimaColor)
$instance_obj.Resizable:=Formula:C1597(AJUI_Btn_GetSetResizeBox)

// ----------------------
// Border
// ----------------------
$instance_obj.BorderColor:=Formula:C1597(AJUI_Btn_GetSetBorderColor)
$instance_obj.BorderSize:=Formula:C1597(AJUI_Btn_GetSetBorderSize)

// ----------------------
// Text
// ----------------------
$instance_obj.Label:=Formula:C1597(AJUI_Btn_GetSetLabel)
$instance_obj.FontName:=Formula:C1597(AJUI_Btn_GetSetFontName)
$instance_obj.FontSize:=Formula:C1597(AJUI_Btn_GetSetFontSize)
$instance_obj.FontColor:=Formula:C1597(AJUI_Btn_GetSetFontColor)
$instance_obj.FontStyle:=Formula:C1597(AJUI_Btn_GetSetFontStyle)
$instance_obj.textAlign:=Formula:C1597(AJUI_Btn_GetSetTextAlign)
$instance_obj.TextMarginHorizontal:=Formula:C1597(AJUI_Btn_GetSetMarginHorizontal)

// ----------------------
// Picture
// ----------------------
$instance_obj.PicturePath:=Formula:C1597(AJUI_Btn_GetSetPicturePath)
$instance_obj.PictureWidth:=Formula:C1597(AJUI_Btn_GetSetPictureWidth)
$instance_obj.PictureHeight:=Formula:C1597(AJUI_Btn_GetSetPictureHeight)
$instance_obj.ReplacingColor:=Formula:C1597(AJUI_Btn_GetSetReplacingColor)
$instance_obj.ColorToReplace:=Formula:C1597(AJUI_Btn_GetSetColorToReplace)
$instance_obj.PictureOpacity:=Formula:C1597(AJUI_Btn_GetSetPictureOpacity)
$instance_obj.PictureRatio:=Formula:C1597(AJUI_Btn_GetSetPictureRatio)
$instance_obj.PictureScale:=Formula:C1597(AJUI_Btn_GetSetPictureScale)


// ----------------------
// Composite
// ----------------------
$instance_obj.CompLinked:=Formula:C1597(AJUI_Btn_GetSetCompositeLinked)
$instance_obj.CompPadding:=Formula:C1597(AJUI_Btn_GetSetCompositePadding)
$instance_obj.CompPictSizeAllocation:=Formula:C1597(AJUI_Btn_GetSetPictSizeAlloc)
$instance_obj.CompTextAlign:=Formula:C1597(AJUI_Btn_GetSetCompTextAlign)
$instance_obj.CompActiveSecondColor:=Formula:C1597(AJUI_Btn_GetSetActiveSecColor)
$instance_obj.CompPicturePosition:=Formula:C1597(AJUI_Btn_GetSetPicturePosition)
$instance_obj.BGSecondaryColor:=Formula:C1597(AJUI_Btn_GetSetBGSecondColor)

// ----------------------
// FAB
// ----------------------
$instance_obj.FABIsMainButton:=Formula:C1597(AJUI_Btn_GetSetMainFab)
$instance_obj.FABRadius:=Formula:C1597(AJUI_Btn_GetSetRadiusFab)
$instance_obj.FABStartAngle:=Formula:C1597(AJUI_Btn_GetSetStartAngleFab)
$instance_obj.FABAngleToTravel:=Formula:C1597(AJUI_Btn_GetSetAngleToTravelFAB)
$instance_obj.FABIsClockwise:=Formula:C1597(AJUI_Btn_GetSetClockwiseFAB)
$instance_obj.FABAdd:=Formula:C1597(AJUI_Btn_addFab)
$instance_obj.FABRemove:=Formula:C1597(AJUI_Btn_removeFAB)
$instance_obj.FABClearCollection:=Formula:C1597(AJUI_Btn_clearFabCollection)
$instance_obj.FABMainPosition:=Formula:C1597(AJUI_Btn_GetSetMainPositionFAB)
$instance_obj.FABIsAnimated:=Formula:C1597(AJUI_Btn_GetSetActivateAnim)
