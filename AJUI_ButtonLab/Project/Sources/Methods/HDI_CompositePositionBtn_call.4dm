//%attributes = {}
  // HDI_CompositePositionBtn_call ( param1 ) 
  //
  // param1 : (boolean) (optional) to launch the new process
  //
  // Execute the form HDI_CompositePositionBtn

#DECLARE($param1 : Boolean)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:35:40
	  // ----------------------------------------------------
	  // Method: HDI_CompositePositionBtn_call
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $winRef_l; $ref_process : Integer


If (Count parameters=0)
	$ref_process:=New process(Current method name;0;Current method name;True)
	SHOW PROCESS($ref_process)
	BRING TO FRONT($ref_process)
Else 
	
	$winRef_l:=Open form window("HDI_CompositePositionBtn";Plain form window;On the left;At the top)
	DIALOG("HDI_CompositePositionBtn")
	CLOSE WINDOW($winRef_l)
	
End if 
