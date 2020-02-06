//%attributes = {"invisible":true}
  // AJUI_Btn_animationWorker ( $instance_obj ; $move_obj  ) -> return
  //
  // $instance_obj : (object) instance
  // $move_obj : (text) (object) details to do the animation
  //
  // This method will execute the FAB animation

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.01.20, 14:41:16
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_animationWorker
	  // Description
	  // 
	  // WARNING : MUST BE LAUNCHED WITH A WORKER
	  //
	  // ----------------------------------------------------
End if 
C_OBJECT:C1216($1;$2;$instance_obj;$move_obj)
C_LONGINT:C283($radius;$startAngle;$numberOfFrames;$counter;$rate;$x;$y)

$instance_obj:=$1
$move_obj:=$2

$radius:=$instance_obj.btn.fab.radius
$duration:=$instance_obj.btn.fab.duration
$rate:=$instance_obj.btn.fab.rate

$window:=$move_obj.window
$ratio:=(1/$rate)
$numberOfFrames:=Int:C8($rate*$duration/1000)
$moveByFrame:=$radius/$numberOfFrames
$delayProcessTicks:=$ratio*60
$pos_secondary_obj:=New object:C1471
$pos_secondary_obj.target:=$move_obj.secondaryBtn

If ($instance_obj.btn.fab.hide)
	$currentRadius:=0
Else 
	$currentRadius:=$instance_obj.btn.fab.radius
End if 
$counter:=0
$start:=Milliseconds:C459

Repeat 
	If ($instance_obj.btn.fab.hide)
		$currentRadius:=$currentRadius+$moveByFrame
	Else 
		$currentRadius:=$currentRadius-$moveByFrame
	End if 
	
	$x:=$move_obj.centerX+($currentRadius*Cos:C18(Degree:K30:2*($move_obj.currentStartAngle+270)))
	$y:=$move_obj.centerY+($currentRadius*Sin:C17(Degree:K30:2*($move_obj.currentStartAngle+270)))
	
	
	$pos_secondary_obj.left:=$x-$move_obj.halfSizeX
	$pos_secondary_obj.top:=$y-$move_obj.halfSizeY
	$pos_secondary_obj.right:=$x+$move_obj.halfSizeX
	$pos_secondary_obj.bottom:=$y+$move_obj.halfSizeY
	
	DELAY PROCESS:C323(Current process:C322;$delayProcessTicks)
	CALL FORM:C1391($window;"AJUI_Btn_animSetCoordinates";$pos_secondary_obj)
	
	$counter:=$counter+1
	
	If ($instance_obj.btn.fab.hide) & ($counter=1)
		CALL FORM:C1391($window;"AJUI_Btn_animSetVisible";$move_obj.secondaryBtn;True:C214)
	End if 
	
Until (((Milliseconds:C459-$start)>$duration) | ($counter=$numberOfFrames))


  // to make sure that the final position is met
If ($instance_obj.btn.fab.hide)
	
	$x:=$move_obj.centerX+($radius*Cos:C18(Degree:K30:2*($move_obj.currentStartAngle+270)))
	$y:=$move_obj.centerY+($radius*Sin:C17(Degree:K30:2*($move_obj.currentStartAngle+270)))
	$pos_secondary_obj.left:=$x-$move_obj.halfSizeX
	$pos_secondary_obj.top:=$y-$move_obj.halfSizeY
	$pos_secondary_obj.right:=$x+$move_obj.halfSizeX
	$pos_secondary_obj.bottom:=$y+$move_obj.halfSizeY
	CALL FORM:C1391($window;"AJUI_Btn_animSetCoordinates";$pos_secondary_obj)
Else 
	  // to make sure that the final position is met
	$pos_secondary_obj.left:=$move_obj.centerX-$move_obj.halfSizeX
	$pos_secondary_obj.top:=$move_obj.centerY-$move_obj.halfSizeY
	$pos_secondary_obj.right:=$move_obj.centerX+$move_obj.halfSizeX
	$pos_secondary_obj.bottom:=$move_obj.centerY+$move_obj.halfSizeY
	CALL FORM:C1391($window;"AJUI_Btn_animSetCoordinates";$pos_secondary_obj)
	CALL FORM:C1391($window;"AJUI_Btn_animSetVisible";$move_obj.secondaryBtn;False:C215)
End if 