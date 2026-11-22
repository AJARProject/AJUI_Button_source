//%attributes = {}
  // Lab_call ( param1 ) 
  //
  // param1 : (boolean) (optional) to launch the new process
  //
  // Execute the form Lab

#DECLARE($param1 : Boolean)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:40:45
	  // ----------------------------------------------------
	  // Method: Lab_call
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $winRef_l; $ref_process : Integer
var $lab : Object

If (Count parameters=0)
	$ref_process:=New process(Current method name;0;Current method name;True)
	SHOW PROCESS($ref_process)
	BRING TO FRONT($ref_process)
Else 
	$lab:=loadPropertiesCollections 
	$lab.templateLocPref:=TLoc_loadPathSettings 
	$lab.tip_sf_details:=New object
	
	$winRef_l:=Open form window("Lab";Plain form window;On the left;At the top)
	DIALOG("Lab";$lab)
	
	CLOSE WINDOW($winRef_l)
	
End if 
