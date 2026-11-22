

var $locationTemp_ptr : Pointer
Case of 
	: (Form event code=On Load)
		
		$locationTemp_ptr:=OBJECT Get pointer(Object named;"locationTemp_list")
		
		APPEND TO ARRAY($locationTemp_ptr->;"All")
		APPEND TO ARRAY($locationTemp_ptr->;"Global")
		
		If (Form.templateLocPref.path_personal#"")
			APPEND TO ARRAY($locationTemp_ptr->;"Personal")
		End if 
		
		If (Form.templateLocPref.path_shared#"")
			APPEND TO ARRAY($locationTemp_ptr->;"Shared")
		End if 
		
		$locationTemp_ptr->:=1
	: (Form event code=On Data Change)
		
		reloadTemplateList 
		
End case 