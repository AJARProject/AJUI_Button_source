//%attributes = {"invisible":true}
  // AJUI_Btn_checkValidCallback ( $callback  ) -> return
  //
  // $callback : (text) callback name
  // $launchExec : (boolean) (return) ok to execute method
  //
  // Check if the callback exist and share the callback if not shared

#DECLARE($param1 : Text) -> $result : Boolean

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 22.11.19, 09:11:32
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_checkValidCallback
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



var $callback; $method : Text
var $launchExec : Boolean
var $section : Object

$callback:=$param1
If ($callback="")
	$launchExec:=False
Else 
	ARRAY TEXT($_methods;0)
	METHOD GET NAMES($_methods;$callback;*)
	
	  //check method exist
	If (Size of array($_methods)=0)
		CONFIRM("Callback method: "+$callback+" not found, Do you want to create it ?";"Yes";"No")
		If (OK=1)
			$launchExec:=True
			$method:="C_OBJECT($1)"
			METHOD SET CODE($callback;$method;*)
		Else 
			$launchExec:=False
		End if 
	Else 
		$launchExec:=True
	End if 
	
	  //check shared
	If ($launchExec)
		If (Not(METHOD Get attribute($callback;Attribute shared;*)))
			METHOD SET ATTRIBUTE($callback;Attribute shared;True;*)
		End if 
	End if 
End if 

$result:=$launchExec