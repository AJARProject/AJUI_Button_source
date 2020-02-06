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

If (False:C215)
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

C_REAL:C285($1;$boxWidth)
C_REAL:C285($2;$boxHeight)
C_REAL:C285($3;$pictScaleWidth)
C_REAL:C285($4;$pictScaleHeight)
C_REAL:C285($ratioWidth;$ratioHeight;$scaleToApply)
C_OBJECT:C1216($0;$result)

$result:=New object:C1471

$boxWidth:=$1
$boxHeight:=$2
$pictScaleWidth:=$3
$pictScaleHeight:=$4



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

$0:=$result