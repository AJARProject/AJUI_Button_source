//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetBoxWidth ( $state { ; $width } ) -> return
  //
  // $state : (text) button state
  // $width : (longint) (optional) box width
  // return : (longint) (return) current box width
  //
  // Getter and setter for the box width of the button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:07:16
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetBoxWidth
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$state)
C_LONGINT:C283($0;$2;$width)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.box.width#Null:C1517)
		$0:=$current_obj.box.width
	Else 
		$0:=This:C1470.btn.box.width
	End if 
	
Else 
	$width:=$2
	If ($width>=0)
		$current_obj.box.width:=$width
	Else 
		$current_obj.box.width:=-1
	End if 
End if 

