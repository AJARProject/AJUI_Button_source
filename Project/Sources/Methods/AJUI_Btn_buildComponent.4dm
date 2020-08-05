//%attributes = {}
  // AJUI_Btn_buildComponent ( ) 
  //
  //
  // Launch the build component method from AJUI Version. Update the build version number

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:39:00
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_buildComponent
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


ARRAY TEXT:C222($_list_components;0)

COMPONENT LIST:C1001($_list_components)

$pos:=Find in array:C230($_list_components;"AJUI_Version")

If ($pos>0)
	EXECUTE METHOD:C1007("AJUI_BuildComponent";*;"AJUI_Btn_info")
End if 