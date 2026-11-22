//%attributes = {"invisible":true,"shared":true}
  // New AJUI_Button ({ $template_obj } ) -> return
  //
  // $template_obj : (object) (optional) template of an instance to import
  // $instance_obj : (object) (return) instance object
  //
  // This method will create an instance of AJUI Button

#DECLARE($param1 : Object) -> $result : Object

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 14:14:10
	  // ----------------------------------------------------
	  // Method: New AJUI_Button
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



var $template_obj; $instance_obj : Object

If (Count parameters=1)
	$template_obj:=$param1
	If ($template_obj.templatePath=Null)
		$instance_obj:=AJUI_Btn_templateImport ($template_obj.templateName)
	Else 
		$instance_obj:=AJUI_Btn_templateImport ($template_obj.templateName;$template_obj.templatePath)
	End if 
	
	If ($instance_obj.failImport)
		
		$instance_obj:=New object
	End if 
Else 
	$instance_obj:=New object
End if 

AJUI_Btn_initAttributes ($instance_obj)
AJUI_Btn_initFormulas ($instance_obj)



$result:=$instance_obj