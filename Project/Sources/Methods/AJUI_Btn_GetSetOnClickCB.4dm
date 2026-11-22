//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetOnClickCB ( { $callback ; { $params  } }  ) -> return
  //
  // $callback : (variant) (optional) callback
  // $params : (object) (optional) params
  // return : (variant) (return) current callback
  //
  // Getter and setter for the callback on the click event


#DECLARE($param1 : Variant; $param2 : Object) -> $result : Variant

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 11:25:24
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetOnClickCB
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $callback : Variant
var $code : Text

If (Count parameters=0)
	$result:=This.btn.global.onClickCB
Else 
	$callback:=$param1
	This.btn.global.onClickCB:=$callback
	
	If (Value type($callback)=Is text)
		If ($callback#"")
			ARRAY TEXT($_methods;0)
			METHOD GET NAMES($_methods;$callback;*)
			If (Size of array($_methods)=0)
				  //ask to create the callback
				CONFIRM("Callback method for OnClick not found, Do you want to create it ?";"Yes";"No")
				If (OK=1)
					$code:="C_OBJECT($1)"
					METHOD SET CODE($callback;$code;*)
				End if 
			End if 
		End if 
	End if 
	
	If (Count parameters=2)
		
		This.btn.global.clickCBParams:=$param2
		
	End if 
End if 