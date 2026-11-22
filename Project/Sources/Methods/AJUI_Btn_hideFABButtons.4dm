//%attributes = {"invisible":true}
  // AJUI_Btn_hideFABButtons ( $instance_obj  ) 
  //
  // $instance_obj : (object) instance
  //
  // Hide and center the secondary buttons based on the coordinates of the main button

#DECLARE($param1 : Object)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.12.19, 11:02:17
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_hideFABButtons
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $instance_obj : Object
var $secondaryBtn : Text
var $mainLeft; $mainTop; $mainRight; $mainBottom; $centerX; $centerY; $secLeft; $secTop; $secRight; $secBottom; $halfSizeX; $halfSizeY : Real

$instance_obj:=$param1

OBJECT GET COORDINATES(*;$instance_obj.btn.global.name;$mainLeft;$mainTop;$mainRight;$mainBottom)
$centerX:=$mainLeft+(($mainRight-$mainLeft)/2)
$centerY:=$mainTop+(($mainBottom-$mainTop)/2)

For each ($secondaryBtn;$instance_obj.btn.fab.btnCol)
	OBJECT GET COORDINATES(*;$secondaryBtn;$secLeft;$secTop;$secRight;$secBottom)
	$halfSizeX:=($secRight-$secLeft)/2
	$halfSizeY:=($secBottom-$secTop)/2
	OBJECT SET COORDINATES(*;$secondaryBtn;$centerX-$halfSizeX;$centerY-$halfSizeY;$centerX+$halfSizeX;$centerY+$halfSizeY)
	OBJECT SET VISIBLE(*;$secondaryBtn;False)
End for each 
