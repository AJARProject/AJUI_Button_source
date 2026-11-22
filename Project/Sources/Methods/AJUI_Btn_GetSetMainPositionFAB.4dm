//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetMainPositionFAB ( { $mainPosition } ) -> return
  //
  // $mainPosition : (text) (optional) main position
  // return : (text) (return) current main position
  //
  // Getter and setter for the position of the main button

#DECLARE($param1 : Text) -> $result : Text

If (False)
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

var $mainPosition; $oldValue : Text

If (Count parameters=0)
	$result:=This.btn.fab.mainPosition
Else 
	$mainPosition:=$param1
	$oldValue:=This.btn.fab.mainPosition
	This.btn.fab.mainPosition:=$mainPosition
	
	Case of 
		: ($mainPosition="center")
			This.btn.fab.startAngle:=0
			This.btn.fab.angleToTravel:=360
			
		: ($mainPosition="top-left")
			This.btn.fab.startAngle:=90
			This.btn.fab.angleToTravel:=90
			
		: ($mainPosition="top-right")
			This.btn.fab.startAngle:=180
			This.btn.fab.angleToTravel:=90
			
		: ($mainPosition="top") | ($mainPosition="top-center")
			This.btn.fab.startAngle:=90
			This.btn.fab.angleToTravel:=180
			
		: ($mainPosition="bottom-left")
			This.btn.fab.startAngle:=0
			This.btn.fab.angleToTravel:=90
			
		: ($mainPosition="bottom-right")
			This.btn.fab.startAngle:=270
			This.btn.fab.angleToTravel:=90
			
		: ($mainPosition="bottom") | ($mainPosition="bottom-center")
			This.btn.fab.startAngle:=270
			This.btn.fab.angleToTravel:=180
			
		: ($mainPosition="left") | ($mainPosition="left-center")
			This.btn.fab.startAngle:=0
			This.btn.fab.angleToTravel:=180
			
		: ($mainPosition="right") | ($mainPosition="right-center")
			This.btn.fab.startAngle:=180
			This.btn.fab.angleToTravel:=180
			
		: ($mainPosition="")
			This.btn.fab.mainPosition:=""
		Else 
			This.btn.fab.mainPosition:=$oldValue
	End case 
	
End if 