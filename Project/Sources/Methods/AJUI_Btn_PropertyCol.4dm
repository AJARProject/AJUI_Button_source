//%attributes = {"invisible":true}
// AJUI_Btn_PropertyCol ( ) -> return
//
// return : (collection) (return) collection of properties and related formulas
//
// Return a collection to match properties with formulas

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 02.12.19, 15:46:29
	// ----------------------------------------------------
	// Method: AJUI_Btn_PropertyCol
	// Description
	// 
	// WARNING : DON'T FORGET TO EDIT THIS METHOD WHEN A FORMULA WITH EXCEPTION IS CREATED/MODIFIED/DELETED
	//
	// ----------------------------------------------------
End if 


C_COLLECTION:C1488($0;$properties_col)

$properties_col:=New collection:C1472()


//BORDER category
$properties_col.push(New object:C1471("category";"border";"property";"color";"formula";"borderColor"))
$properties_col.push(New object:C1471("category";"border";"property";"size";"formula";"borderSize"))


//BOX category
$properties_col.push(New object:C1471("category";"box";"property";"backgroundColor";"formula";"backgroundColor"))
$properties_col.push(New object:C1471("category";"box";"property";"cornerRadius";"formula";"cornerRadius"))
$properties_col.push(New object:C1471("category";"box";"property";"height";"formula";"height"))
$properties_col.push(New object:C1471("category";"box";"property";"width";"formula";"width"))
$properties_col.push(New object:C1471("category";"box";"property";"padding";"formula";"padding"))

//COMPOSITE category
$properties_col.push(New object:C1471("category";"composite";"property";"backgroundSecondaryColor";"formula";"backgroundSecondaryColor"))
$properties_col.push(New object:C1471("category";"composite";"property";"spaceBetween";"formula";"spaceBetween"))
$properties_col.push(New object:C1471("category";"composite";"property";"picturePosition";"formula";"picturePosition"))
$properties_col.push(New object:C1471("category";"composite";"property";"pictSizeAllocation";"formula";"pictureAllocation"))


//PICTURE category
$properties_col.push(New object:C1471("category";"picture";"property";"height";"formula";"pictureHeight"))
$properties_col.push(New object:C1471("category";"picture";"property";"width";"formula";"pictureWidth"))
$properties_col.push(New object:C1471("category";"picture";"property";"opacity";"formula";"pictureOpacity"))
$properties_col.push(New object:C1471("category";"picture";"property";"path";"formula";"picturePath"))
$properties_col.push(New object:C1471("category";"picture";"property";"ratio";"formula";"pictureRatio"))
$properties_col.push(New object:C1471("category";"picture";"property";"colorToReplace";"formula";"colorToReplace"))
$properties_col.push(New object:C1471("category";"picture";"property";"replacingColor";"formula";"replacingColor"))
$properties_col.push(New object:C1471("category";"picture";"property";"scale";"formula";"pictureScale"))


//TEXT category
$properties_col.push(New object:C1471("category";"text";"property";"fontColor";"formula";"fontColor"))
$properties_col.push(New object:C1471("category";"text";"property";"fontName";"formula";"fontName"))
$properties_col.push(New object:C1471("category";"text";"property";"fontSize";"formula";"fontSize"))
$properties_col.push(New object:C1471("category";"text";"property";"fontStyle";"formula";"fontStyle"))
$properties_col.push(New object:C1471("category";"text";"property";"textAlign";"formula";"textAlign"))
$properties_col.push(New object:C1471("category";"text";"property";"label";"formula";"label"))
$properties_col.push(New object:C1471("category";"text";"property";"horizontalMargin";"formula";"horizontalMargin"))


$0:=$properties_col