//%attributes = {"invisible":true}
  // AJUI_Btn_templateExport ( $templateName { ; $exportPath } ) -> return
  //
  // $templateName : (text) AJUI Button template name
  // $exportPath : (text) (optional) Path to export
  //
  // Method to export the AJUI Button instance into a json file

#DECLARE($param1 : Text; $param2 : Text)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 30.07.19, 10:04:29
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_templateExport
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $templateName; $exportPath; $template_json; $mainPath; $filePath : Text
var $docRef_h : Time

$templateName:=$param1

If ($templateName="")
	ALERT("You must enter a template name.")
Else 
	
	If ($templateName="@.json")
		$filePath:=$templateName
	Else 
		$filePath:=$templateName+".json"
	End if 
	
	If (Count parameters=2)
		
		$exportPath:=$param2
	Else 
		$mainPath:=Get 4D folder(Current resources folder;*)
		$exportPath:=$mainPath+"AJUI_Button_Templates"+Folder separator
		
	End if 
	This.templateName:=$templateName
	$template_json:=JSON Stringify(This;*)
	
	
	If ((Test path name($exportPath)=Is a folder)=False)
		CREATE FOLDER($exportPath)
	End if 
	
	
	$filePath:=$exportPath+$filePath
	$docRef_h:=Create document($filePath)
	If (OK=1)
		CLOSE DOCUMENT($docRef_h)
		TEXT TO DOCUMENT($filePath;$template_json)
		
	Else 
		ALERT("The document could not be created, I/O error "+"\r\r"+$filePath)
	End if 
End if 