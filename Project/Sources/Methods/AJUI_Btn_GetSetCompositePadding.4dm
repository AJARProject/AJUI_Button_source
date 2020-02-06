//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetCompositePadding ( $state { ; $padding } ) -> return
  //
  // $state : (text) button state
  // $padding : (longint) (optional) padding size
  // return : (longint) (return) current padding
  //
  // Getter and setter for the padding between text and picture when linked option is activate

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:48:42
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetCompositePadding
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($1;$state)
C_LONGINT:C283($0;$2;$padding)
C_OBJECT:C1216($current_obj)

$state:=$1

If ($state="default")
	$current_obj:=This:C1470.btn
Else 
	$current_obj:=This:C1470.btn[$state]
End if 

If (Count parameters:C259=1)
	
	If ($current_obj.composite.padding#Null:C1517)
		$0:=$current_obj.composite.padding
	Else 
		$0:=This:C1470.btn.composite.padding
	End if 
	
Else 
	$padding:=$2
	If ($padding>=0)
		$current_obj.composite.padding:=$padding
	End if 
End if 
