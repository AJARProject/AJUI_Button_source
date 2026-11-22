
var $locationTemp_ptr : Pointer
$locationTemp_ptr:=OBJECT Get pointer(Object named;"locationTemp_list")

Case of 
	: (Form event code=On Load)
		If (Form.rename)
			OBJECT SET ENABLED(*;"locationTemp_list";False)
			
			
		Else 
			CLEAR VARIABLE($locationTemp_ptr->)
			OBJECT SET ENABLED(*;"locationTemp_list";True)
			APPEND TO ARRAY($locationTemp_ptr->;"Global")
			
			If (Form.templateLocPref.path_personal#"")
				APPEND TO ARRAY($locationTemp_ptr->;"Personal")
			End if 
			
			If (Form.templateLocPref.path_shared#"")
				APPEND TO ARRAY($locationTemp_ptr->;"Shared")
			End if 
			$locationTemp_ptr->:=1
			Form.tempIcon:=getTLocIcon 
		End if 
		
		
	: (Form event code=On Data Change)
		
		Form.tempIcon:=getTLocIcon 
End case 