//%attributes = {}
  // TLoc_loadPathSettings (  ) -> return
  //
  // $templateLocPref : (object) (return) the content of the settings
  //
  // Load/create the path settings

#DECLARE() -> $result : Object

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.11.19, 14:09:10
	  // ----------------------------------------------------
	  // Method: TLoc_loadPathSettings
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $templateLocPref; $file : Object
var $created : Boolean
var $globalPath; $pref : Text

$templateLocPref:=New object

  //load template settings
$file:=Folder(fk user preferences folder).folder("AJUI_ButtonTempPref").file("AJUI_ButtonTempPref.json")
$globalPath:=Get 4D folder(Current resources folder;*)+"AJUI_Button_Templates"+Folder separator
If ($file.exists)
	$templateLocPref:=JSON Parse($file.getText())
	$templateLocPref.path_global:=$globalPath
Else 
	$created:=$file.create()
	If ($created)
		$templateLocPref:=New object("path_global";$globalPath;"path_shared";"";"path_personal";"")
		$pref:=JSON Stringify($templateLocPref;*)
		$file.setText($pref)
	Else 
		ALERT("Creation of the preference file not possible")
	End if 
End if 

$result:=$templateLocPref