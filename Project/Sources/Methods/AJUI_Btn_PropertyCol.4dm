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
$properties_col.push(New object:C1471("category";"border";"property";"color";"formula";"BorderColor"))
$properties_col.push(New object:C1471("category";"border";"property";"size";"formula";"BorderSize"))


  //BOX category
$properties_col.push(New object:C1471("category";"box";"property";"bgPrimaryColor";"formula";"BGColor"))
$properties_col.push(New object:C1471("category";"box";"property";"cornerRadius";"formula";"CornerRadius"))
$properties_col.push(New object:C1471("category";"box";"property";"height";"formula";"Height"))
$properties_col.push(New object:C1471("category";"box";"property";"width";"formula";"Width"))

  //COMPOSITE category
$properties_col.push(New object:C1471("category";"composite";"property";"bgSecondaryColor";"formula";"BGSecondaryColor"))
$properties_col.push(New object:C1471("category";"composite";"property";"padding";"formula";"CompPadding"))
$properties_col.push(New object:C1471("category";"composite";"property";"picturePosition";"formula";"CompPicturePosition"))
$properties_col.push(New object:C1471("category";"composite";"property";"pictSizeAllocation";"formula";"CompPictSizeAllocation"))
$properties_col.push(New object:C1471("category";"composite";"property";"textAlign";"formula";"CompTextAlign"))


  //PICTURE category
$properties_col.push(New object:C1471("category";"picture";"property";"height";"formula";"PictureHeight"))
$properties_col.push(New object:C1471("category";"picture";"property";"width";"formula";"PictureWidth"))
$properties_col.push(New object:C1471("category";"picture";"property";"opacity";"formula";"PictureOpacity"))
$properties_col.push(New object:C1471("category";"picture";"property";"path";"formula";"PicturePath"))
$properties_col.push(New object:C1471("category";"picture";"property";"ratio";"formula";"PictureRatio"))
$properties_col.push(New object:C1471("category";"picture";"property";"colorToReplace";"formula";"ColorToReplace"))
$properties_col.push(New object:C1471("category";"picture";"property";"replacingColor";"formula";"ReplacingColor"))
$properties_col.push(New object:C1471("category";"picture";"property";"scale";"formula";"PictureScale"))



  //TEXT category
$properties_col.push(New object:C1471("category";"text";"property";"fontColor";"formula";"FontColor"))
$properties_col.push(New object:C1471("category";"text";"property";"fontName";"formula";"FontName"))
$properties_col.push(New object:C1471("category";"text";"property";"fontSize";"formula";"FontSize"))
$properties_col.push(New object:C1471("category";"text";"property";"fontStyle";"formula";"FontStyle"))
$properties_col.push(New object:C1471("category";"text";"property";"label";"formula";"Label"))
$properties_col.push(New object:C1471("category";"text";"property";"marginHorizontal";"formula";"TextMarginHorizontal"))


$0:=$properties_col