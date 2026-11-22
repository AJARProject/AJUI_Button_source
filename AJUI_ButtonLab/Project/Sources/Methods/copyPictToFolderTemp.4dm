//%attributes = {}
  // copyPictToFolderTemp ( $folderTemp  ; $currentTempPath  ) 
  //
  // $folderTemp : (text) folder where you will copy the picture
  // $currentTempPath : (text)  current template path
  //
  // Handle the copy of the picture linked to the instance into the same folder

#DECLARE($param1 : Text; $param2 : Text)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.11.19, 09:43:42
	  // ----------------------------------------------------
	  // Method: copyPictToFolderTemp
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $folderTemp; $defaultPath; $currentTempPath; $hoverPath; $activePath; $disablePath; $focusPath; $defaultName; $hoverName; $activeName; $disableName; $focusName : Text
var $file; $folder : Object
var $created : Boolean

$folderTemp:=$param1
$currentTempPath:=$param2

$folder:=Folder($folderTemp;fk platform path)

  //create folder if not exist
If (Not($folder.exists))
	$created:=$folder.create()
End if 

  //default picture
$defaultPath:=Form.btn1.PicturePath(AJUI_btn_default)
If ($defaultPath#"")
	$file:=File(pictfullPath ($defaultPath;$currentTempPath);fk platform path)
	
	If ($file.exists)
		If ($file.platformPath#($folderTemp+$file.fullName))
			$file.copyTo($folder;fk overwrite)
		End if 
		Form.btn1.PicturePath(AJUI_btn_default;"#"+$file.fullName)
		$defaultPath:="#"+$file.fullName
		$defaultName:="@"+$file.name+"@"
	Else 
		ALERT("Picture not found for copying into the template folder (state: default)")
	End if 
End if 

  //hover picture
$hoverPath:=Form.btn1.PicturePath(AJUI_btn_hover)
If ($hoverPath#"") & ($hoverPath#$defaultPath)
	$file:=File(pictfullPath ($hoverPath;$currentTempPath);fk platform path)
	If ($file.exists)
		If ($file.platformPath#($folderTemp+$file.fullName))
			$file.copyTo($folder;fk overwrite)
		End if 
		Form.btn1.PicturePath(AJUI_btn_hover;"#"+$file.fullName)
		$hoverName:="@"+$file.name+"@"
	Else 
		ALERT("Picture not found for copying into the template folder (state: hover)")
	End if 
End if 

  //active picture
$activePath:=Form.btn1.PicturePath(AJUI_btn_active)
If ($activePath#"") & ($activePath#$defaultPath) & ($activePath#$hoverPath)
	$file:=File(pictfullPath ($activePath;$currentTempPath);fk platform path)
	If ($file.exists)
		If ($file.platformPath#($folderTemp+$file.fullName))
			$file.copyTo($folder;fk overwrite)
		End if 
		Form.btn1.PicturePath(AJUI_btn_active;"#"+$file.fullName)
		$activeName:="@"+$file.name+"@"
	Else 
		ALERT("Picture not found for copying into the template folder (state: active)")
	End if 
End if 

  //disable picture
$disablePath:=Form.btn1.PicturePath(AJUI_btn_disable)
If ($disablePath#"") & ($disablePath#$defaultPath) & ($disablePath#$hoverPath) & ($disablePath#$activePath)
	$file:=File(pictfullPath ($disablePath;$currentTempPath);fk platform path)
	If ($file.exists)
		If ($file.platformPath#($folderTemp+$file.fullName))
			$file.copyTo($folder;fk overwrite)
		End if 
		Form.btn1.PicturePath(AJUI_btn_disable;"#"+$file.fullName)
		$disableName:="@"+$file.name+"@"
	Else 
		ALERT("Picture not found for copying into the template folder (state: disable)")
	End if 
End if 

  //focus picture
$focusPath:=Form.btn1.PicturePath(AJUI_btn_focus)
If ($focusPath#"") & ($focusPath#$defaultPath) & ($focusPath#$hoverPath) & ($focusPath#$activePath) & ($focusPath#$disablePath)
	$file:=File(pictfullPath ($focusPath;$currentTempPath);fk platform path)
	If ($file.exists)
		If ($file.platformPath#($folderTemp+$file.fullName))
			$file.copyTo($folder;fk overwrite)
		End if 
		Form.btn1.PicturePath(AJUI_btn_disable;"#"+$file.fullName)
		$focusName:="@"+$file.name+"@"
	Else 
		ALERT("Picture not found for copying into the template folder (state: disable)")
	End if 
End if 

  //delete old pictures
  //ARRAY TEXT($_files;0)
  //DOCUMENT LIST($folderTemp;$_files;Absolute path)
  //For ($i;1;Size of array($_files))
  //If ($_files{$i}#"@.json")
  //If ($_files{$i}#$defaultName) & ($_files{$i}#$hoverName) & ($_files{$i}#$activeName) & ($_files{$i}#$disableName) & ($_files{$i}#$focusName)
  //DELETE DOCUMENT($_files{$i})
  //End if 
  //End if 
  //End for 