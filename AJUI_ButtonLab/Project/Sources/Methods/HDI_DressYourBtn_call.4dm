//%attributes = {}
  // HDI_DressYourBtn_call ( param1 ) 
  //
  // param1 : (boolean) (optional) to launch the new process
  //
  // Execute the form HDI_DressYourBtn

#DECLARE($param1 : Boolean)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:37:17
	  // ----------------------------------------------------
	  // Method: HDI_DressYourBtn_call
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
	
	$winRef_l:=Open form window("HDI_DressYourBtn";Plain form window;On the left;At the top)
	DIALOG("HDI_DressYourBtn")
	CLOSE WINDOW($winRef_l)
	
End if 

