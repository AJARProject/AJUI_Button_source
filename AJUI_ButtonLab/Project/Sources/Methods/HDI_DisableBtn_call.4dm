//%attributes = {}
  // HDI_DisableBtn_call ( param1 ) 
  //
  // param1 : (boolean) (optional) to launch the new process
  //
  // Execute the form HDI_DisableBtn

#DECLARE($param1 : Boolean)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:36:11
	  // ----------------------------------------------------
	  // Method: HDI_DisableBtn_call
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $winRef_l; $ref_process : Integer
var $start : Object


If (Count parameters=0)
	$ref_process:=New process(Current method name;0;Current method name;True)
	SHOW PROCESS($ref_process)
	BRING TO FRONT($ref_process)
Else 
	$start:=New object
	$start.number:=5
	
	$winRef_l:=Open form window("HDI_DisableBtn";Plain form window;On the left;At the top)
	DIALOG("HDI_DisableBtn";$start)
	
	CLOSE WINDOW($winRef_l)
	
End if 

