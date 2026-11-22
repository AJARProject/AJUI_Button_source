//%attributes = {"invisible":true}
  // AJUI_Btn_resizePicture ( $boxWidth ; $boxHeight ; $pictScaleWidth ; $pictScaleHeight ) -> return
  //
  // $boxWidth : (real) box width
  // $boxHeight : (real) box height
  // $pictScaleWidth : (real) picture width
  // $pictScaleHeight : (real) picture height
  // $result : (object) (return) scales to apply
  //
  // this method will return the height and width to be applied so that the image is correctly sized

#DECLARE($param1 : Real; $param2 : Real; $param3 : Real; $param4 : Real) -> $return : Object

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 14:06:25
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_resizePicture
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $boxWidth; $boxHeight; $pictScaleWidth; $pictScaleHeight; $ratioWidth; $ratioHeight; $scaleToApply : Real
var $result : Object

$result:=New object

$boxWidth:=$param1
$boxHeight:=$param2
$pictScaleWidth:=$param3
$pictScaleHeight:=$param4



  //Check if we need to resize
If ($pictScaleWidth>$boxWidth) | ($pictScaleHeight>$boxHeight)
	$ratioWidth:=$boxWidth/$pictScaleWidth
	$ratioHeight:=$boxHeight/$pictScaleHeight
	
	If ($ratioWidth>$ratioHeight)
		$scaleToApply:=$ratioHeight
	Else 
		$scaleToApply:=$ratioWidth
	End if 
	
	$result.width:=$pictScaleWidth*$scaleToApply
	$result.height:=$pictScaleHeight*$scaleToApply
Else 
	$result.width:=$pictScaleWidth
	$result.height:=$pictScaleHeight
End if 

$return:=$result