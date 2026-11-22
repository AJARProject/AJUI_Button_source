//%attributes = {}
  // TLoc_closePref ( ) 
  //
  //
  // Hide Tip and save preferences

#DECLARE($param1 : Boolean)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 13.11.19, 16:02:59
	  // ----------------------------------------------------
	  // Method: TLoc_closePref
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
var $file : Object
var $locationTemp_ptr : Pointer
var $pref : Text


If (Count parameters=1)
	
	
	Form.btnTempSettings.Enable(True)
	Form.btnTempSettings.Draw()
	
	Form.templateLocPref.path_personal:=Form.tip_sf_details.path_personal
	Form.templateLocPref.path_shared:=Form.tip_sf_details.path_shared
	
	$pref:=JSON Stringify(Form.templateLocPref;*)
	$file:=Folder(fk user preferences folder).folder("AJUI_ButtonTempPref").file("AJUI_ButtonTempPref.json")
	$file.setText($pref)
	
	
	$locationTemp_ptr:=OBJECT Get pointer(Object named;"locationTemp_list")
	CLEAR VARIABLE($locationTemp_ptr->)
	
	  //init filter dropdown
	APPEND TO ARRAY($locationTemp_ptr->;"All")
	APPEND TO ARRAY($locationTemp_ptr->;"Global")
	
	If (Form.templateLocPref.path_personal#"")
		APPEND TO ARRAY($locationTemp_ptr->;"Personal")
	End if 
	
	If (Form.templateLocPref.path_shared#"")
		APPEND TO ARRAY($locationTemp_ptr->;"Shared")
	End if 
	
	$locationTemp_ptr->:=1
	reloadTemplateList 
End if 
Form.btnTempSettings.Enable(True)
Form.tLocTip.Hide()