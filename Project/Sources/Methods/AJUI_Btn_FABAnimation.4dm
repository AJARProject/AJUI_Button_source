//%attributes = {"invisible":true}
  // AJUI_Btn_FABAnimation ($instance_obj ) -> return
  //
  // $instance_obj : (object) instance
  //
  // This method will prepare the data and launch the worker for the FAB animation

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.01.20, 14:17:57
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_FABAnimation
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($1;$instance_obj;$move_obj)
C_LONGINT:C283($radius;$startAngle;$angleToTravel;$nbSecButtons;$angleBetweenSec;$x;$y;$numberOfFrames;$counter)
C_TEXT:C284($secondaryBtn)
C_BOOLEAN:C305($clockwise)
C_REAL:C285($duration;$rate)

$instance_obj:=$1

$radius:=$instance_obj.btn.fab.radius
$startAngle:=$instance_obj.btn.fab.startAngle
$angleToTravel:=$instance_obj.btn.fab.angleToTravel
$nbSecButtons:=$instance_obj.btn.fab.btnCol.length
$clockwise:=$instance_obj.btn.fab.clockwise

$move_obj:=New object:C1471
$move_obj.window:=Current form window:C827

If ($angleToTravel<360)
	$nbSecButtons:=$nbSecButtons-1
End if 

If (Not:C34($clockwise))
	$startAngle:=$startAngle+$angleToTravel
End if 

$angleBetweenSec:=$angleToTravel/$nbSecButtons

OBJECT GET COORDINATES:C663(*;$instance_obj.btn.global.name;$mainLeft;$mainTop;$mainRight;$mainBottom)

$move_obj.centerX:=$mainLeft+(($mainRight-$mainLeft)/2)
$move_obj.centerY:=$mainTop+(($mainBottom-$mainTop)/2)

For each ($secondaryBtn;$instance_obj.btn.fab.btnCol)
	
	$move_obj.secondaryBtn:=$secondaryBtn
	
	OBJECT GET COORDINATES:C663(*;$secondaryBtn;$secLeft;$secTop;$secRight;$secBottom)
	
	$move_obj.currentStartAngle:=$startAngle
	$move_obj.halfSizeX:=($secRight-$secLeft)/2
	$move_obj.halfSizeY:=($secBottom-$secTop)/2
	
	$move_obj.secLeft:=$secLeft
	$move_obj.secTop:=$secTop
	$move_obj.secRight:=$secRight
	$move_obj.secBottom:=$secBottom
	
	CALL WORKER:C1389("AJUI_Btn_FABAnimationWorker";"AJUI_Btn_animationWorker";$instance_obj;OB Copy:C1225($move_obj))
	
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