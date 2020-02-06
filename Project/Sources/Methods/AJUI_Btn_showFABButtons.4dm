//%attributes = {"invisible":true}
  // AJUI_Btn_showFABButtons ( $instance_obj  ) 
  //
  // $instance_obj : (object) instance
  //
  // Display and place the secondary buttons based on the FAB properties and the position of the main button

If (False:C215)
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

C_OBJECT:C1216($1;$instance_obj)
C_LONGINT:C283($radius;$startAngle;$angleToTravel;$nbSecButtons;$angleBetweenSec;$x;$y)
C_BOOLEAN:C305($clockwise)

$instance_obj:=$1

$radius:=$instance_obj.btn.fab.radius
$startAngle:=$instance_obj.btn.fab.startAngle
$angleToTravel:=$instance_obj.btn.fab.angleToTravel
$nbSecButtons:=$instance_obj.btn.fab.btnCol.length
$clockwise:=$instance_obj.btn.fab.clockwise

If ($angleToTravel<360)
	$nbSecButtons:=$nbSecButtons-1
End if 

If (Not:C34($clockwise))
	$startAngle:=$startAngle+$angleToTravel
End if 

$angleBetweenSec:=$angleToTravel/$nbSecButtons

OBJECT GET COORDINATES:C663(*;$instance_obj.btn.global.name;$mainLeft;$mainTop;$mainRight;$mainBottom)
$centerX:=$mainLeft+(($mainRight-$mainLeft)/2)
$centerY:=$mainTop+(($mainBottom-$mainTop)/2)

For each ($secondaryBtn;$instance_obj.btn.fab.btnCol)
	OBJECT SET VISIBLE:C603(*;$secondaryBtn;True:C214)
	OBJECT GET COORDINATES:C663(*;$secondaryBtn;$secLeft;$secTop;$secRight;$secBottom)
	$halfSizeX:=($secRight-$secLeft)/2
	$halfSizeY:=($secBottom-$secTop)/2
	
	$x:=$centerX+($radius*Cos:C18(Degree:K30:2*($startAngle+270)))
	$y:=$centerY+($radius*Sin:C17(Degree:K30:2*($startAngle+270)))
	
	OBJECT SET COORDINATES:C1248(*;$secondaryBtn;$x-$halfSizeX;$y-$halfSizeY;$x+$halfSizeX;$y+$halfSizeY)
	
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
