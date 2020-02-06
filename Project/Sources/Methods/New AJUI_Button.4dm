//%attributes = {"invisible":true,"shared":true}
  // New AJUI_Button ({ $template_obj } ) -> return
  //
  // $template_obj : (object) (optional) template of an instance to import
  // $instance_obj : (object) (return) instance object
  //
  // This method will create an instance of AJUI Button

If (False:C215)
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



C_OBJECT:C1216($0;$1;$template_obj)

If (Count parameters:C259=1)
	$template_obj:=$1
	If ($template_obj.templatePath=Null:C1517)
		$instance_obj:=AJUI_Btn_templateImport ($template_obj.templateName)
	Else 
		$instance_obj:=AJUI_Btn_templateImport ($template_obj.templateName;$template_obj.templatePath)
	End if 
	
	If ($instance_obj.failImport)
		
		$instance_obj:=New object:C1471
	End if 
Else 
	$instance_obj:=New object:C1471
End if 

AJUI_Btn_initAttributes ($instance_obj)
AJUI_Btn_initFormulas ($instance_obj)



$0:=$instance_obj