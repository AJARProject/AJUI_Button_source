
var $locationTemp_ptr : Pointer
$locationTemp_ptr:=OBJECT Get pointer(Object named;"locationTemp_list")

Case of 
	: (Form event code=On Load)
		
		
		OBJECT SET VISIBLE(*;"locationTemp_list";True)
		CLEAR VARIABLE($locationTemp_ptr->)
		APPEND TO ARRAY($locationTemp_ptr->;"Global")
		
		If (Form.templateLocPref.path_personal#Null)
			If (Form.templateLocPref.path_personal#"")
				APPEND TO ARRAY($locationTemp_ptr->;"Personal")
			End if 
		End if 
		
		If (Form.templateLocPref.path_shared#Null)
			If (Form.templateLocPref.path_shared#"")
				APPEND TO ARRAY($locationTemp_ptr->;"Shared")
			End if 
		End if 
		
		
		Case of 
			: (Form.tempIcon=" (G)")
				$locationTemp_ptr->:=1
				
			: (Form.tempIcon=" (P)")
				$locationTemp_ptr->:=2
				
			: (Form.tempIcon=" (S)")
				$locationTemp_ptr->:=3
				
		End case 
		
		
		
	: (Form event code=On Data Change)
		
		Form.tempIcon:=getTLocIcon 
End case 