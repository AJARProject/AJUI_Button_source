//%attributes = {"invisible":true}
  // AJUI_Btn_showFABButtons ( $instance_obj  ) 
  //
  // $instance_obj : (object) instance
  //
  // Display and place the secondary buttons based on the FAB properties and the position of the main button

#DECLARE($param1 : Object)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.12.19, 11:02:34
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_showFABButtons
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $instance_obj : Object
var $radius; $startAngle; $angleToTravel; $nbSecButtons; $angleBetweenSec; $x; $y : Integer
var $clockwise : Boolean
var $mainLeft; $mainTop; $mainRight; $mainBottom; $centerX; $centerY; $secLeft; $secTop; $secRight; $secBottom; $halfSizeX; $halfSizeY : Real
var $secondaryBtn : Text

$instance_obj:=$param1

$radius:=$instance_obj.btn.fab.radius
$startAngle:=$instance_obj.btn.fab.startAngle
$angleToTravel:=$instance_obj.btn.fab.angleToTravel
$nbSecButtons:=$instance_obj.btn.fab.btnCol.length
$clockwise:=$instance_obj.btn.fab.clockwise

If ($angleToTravel<360)
	$nbSecButtons:=$nbSecButtons-1
End if 

If (Not($clockwise))
	$startAngle:=$startAngle+$angleToTravel
End if 

$angleBetweenSec:=$angleToTravel/$nbSecButtons

OBJECT GET COORDINATES(*;$instance_obj.btn.global.name;$mainLeft;$mainTop;$mainRight;$mainBottom)
$centerX:=$mainLeft+(($mainRight-$mainLeft)/2)
$centerY:=$mainTop+(($mainBottom-$mainTop)/2)

For each ($secondaryBtn;$instance_obj.btn.fab.btnCol)
	OBJECT SET VISIBLE(*;$secondaryBtn;True)
	OBJECT GET COORDINATES(*;$secondaryBtn;$secLeft;$secTop;$secRight;$secBottom)
	$halfSizeX:=($secRight-$secLeft)/2
	$halfSizeY:=($secBottom-$secTop)/2
	
	$x:=$centerX+($radius*Cos(Degree*($startAngle+270)))
	$y:=$centerY+($radius*Sin(Degree*($startAngle+270)))
	
	OBJECT SET COORDINATES(*;$secondaryBtn;$x-$halfSizeX;$y-$halfSizeY;$x+$halfSizeX;$y+$halfSizeY)
	
	If ($clockwise)
		$startAngle:=$startAngle+$angleBetweenSec
		If ($startAngle>=360)
			$startAngle:=$startAngle-360
		End if 
	Else 
		$startAngle:=$startAngle-$angleBetweenSec
		If ($startAngle<0)
			$startAngle:=360-$startAngle
		End if 
	End if 
End for each 
