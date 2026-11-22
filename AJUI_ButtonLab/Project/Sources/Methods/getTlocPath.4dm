//%attributes = {}
  // getTlocPath ( $templateName  ) -> return
  //
  // $templateName : (text) tempalte name
  // $path : (text) (return) path
  //
  // Get the template location path to use

#DECLARE($param1 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.11.19, 09:32:30
	  // ----------------------------------------------------
	  // Method: getTlocPath
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $templateName; $path : Text
var $folder : Object

$templateName:=$param1

Case of 
	: ($templateName="@ (G)")
		$path:=Form.templateLocPref.path_global
		$templateName:=Replace string($templateName;" (G)";"")
	: ($templateName="@ (P)")
		$path:=Form.templateLocPref.path_personal
		$templateName:=Replace string($templateName;" (P)";"")
	: ($templateName="@ (S)")
		$path:=Form.templateLocPref.path_shared
		$templateName:=Replace string($templateName;" (S)";"")
End case 

  //check templateName folder
If ($templateName#"")
	$folder:=Folder($path+$templateName+Folder separator;fk platform path)
	If ($folder.exists)
		$path:=$folder.platformPath
	End if 
End if 

$result:=$path

