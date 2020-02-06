//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetMainPositionFAB ( { $mainPosition } ) -> return
  //
  // $mainPosition : (text) (optional) main position
  // return : (text) (return) current main position
  //
  // Getter and setter for the position of the main button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.12.19, 11:24:34
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetMainPositionFAB
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$mainPosition;$oldValue)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.fab.mainPosition
Else 
	$mainPosition:=$1
	$oldValue:=This:C1470.btn.fab.mainPosition
	This:C1470.btn.fab.mainPosition:=$mainPosition
	
	Case of 
		: ($mainPosition="center")
			This:C1470.btn.fab.startAngle:=0
			This:C1470.btn.fab.angleToTravel:=360
			
		: ($mainPosition="top-left")
			This:C1470.btn.fab.startAngle:=90
			This:C1470.btn.fab.angleToTravel:=90
			
		: ($mainPosition="top-right")
			This:C1470.btn.fab.startAngle:=180
			This:C1470.btn.fab.angleToTravel:=90
			
		: ($mainPosition="top") | ($mainPosition="top-center")
			This:C1470.btn.fab.startAngle:=90
			This:C1470.btn.fab.angleToTravel:=180
			
		: ($mainPosition="bottom-left")
			This:C1470.btn.fab.startAngle:=0
			This:C1470.btn.fab.angleToTravel:=90
			
		: ($mainPosition="bottom-right")
			This:C1470.btn.fab.startAngle:=270
			This:C1470.btn.fab.angleToTravel:=90
			
		: ($mainPosition="bottom") | ($mainPosition="bottom-center")
			This:C1470.btn.fab.startAngle:=270
			This:C1470.btn.fab.angleToTravel:=180
			
		: ($mainPosition="left") | ($mainPosition="left-center")
			This:C1470.btn.fab.startAngle:=0
			This:C1470.btn.fab.angleToTravel:=180
			
		: ($mainPosition="right") | ($mainPosition="right-center")
			This:C1470.btn.fab.startAngle:=180
			This:C1470.btn.fab.angleToTravel:=180
			
		: ($mainPosition="")
			This:C1470.btn.fab.mainPosition:=""
		Else 
			This:C1470.btn.fab.mainPosition:=$oldValue
	End case 
	
End if 