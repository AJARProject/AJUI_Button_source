//%attributes = {"invisible":true}
  // AJUI_Btn_hideFABButtons ( $instance_obj  ) 
  //
  // $instance_obj : (object) instance
  //
  // Hide and center the secondary buttons based on the coordinates of the main button

If (False:C215)
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

C_OBJECT:C1216($instance_obj)
C_TEXT:C284($secondaryBtn)

$instance_obj:=$1

OBJECT GET COORDINATES:C663(*;$instance_obj.btn.global.name;$mainLeft;$mainTop;$mainRight;$mainBottom)
$centerX:=$mainLeft+(($mainRight-$mainLeft)/2)
$centerY:=$mainTop+(($mainBottom-$mainTop)/2)

For each ($secondaryBtn;$instance_obj.btn.fab.btnCol)
	OBJECT GET COORDINATES:C663(*;$secondaryBtn;$secLeft;$secTop;$secRight;$secBottom)
	$halfSizeX:=($secRight-$secLeft)/2
	$halfSizeY:=($secBottom-$secTop)/2
	OBJECT SET COORDINATES:C1248(*;$secondaryBtn;$centerX-$halfSizeX;$centerY-$halfSizeY;$centerX+$halfSizeX;$centerY+$halfSizeY)
	OBJECT SET VISIBLE:C603(*;$secondaryBtn;False:C215)
End for each 
