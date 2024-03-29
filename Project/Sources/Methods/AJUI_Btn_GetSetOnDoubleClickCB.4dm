//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetOnDoubleClickCB ({ $callback ; { $params  }} ) -> return
  //
  // $callback : (variant) (optional) callback
  // $params : (object) (optional) params
  // return : (variant) (return) current callback
  //
  // Getter and setter for the callback on the double click event

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:23:42
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetOnDoubleClickCB
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_VARIANT:C1683($0;$1;$callback)
C_OBJECT:C1216($2)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.global.onDoubleClickCB
Else 
	$callback:=$1
	This:C1470.btn.global.onDoubleClickCB:=$callback
	
	If (Value type:C1509($callback)=Is text:K8:3)
		If ($callback#"")
			ARRAY TEXT:C222($_methods;0)
			METHOD GET NAMES:C1166($_methods;$callback;*)
			If (Size of array:C274($_methods)=0)
				  //ask to create the callback
				CONFIRM:C162("Callback method for OnDoubleClick not found, Do you want to create it ?";"Yes";"No")
				If (OK=1)
					$code:="C_OBJECT($1)"
					METHOD SET CODE:C1194($callback;$code;*)
				End if 
			End if 
		End if 
	End if 
	
	If (Count parameters:C259=2)
		This:C1470.btn.global.doubleClickCBParams:=$2
	End if 
End if 