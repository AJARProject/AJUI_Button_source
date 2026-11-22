//%attributes = {}
  // pictfullPath ( $pictPath  ; $folderTempPath  ) -> return
  //
  // $pictPath : (text) picture relative path
  // $folderTempPath : (text) template folder path
  // $pictPath : (text) (return) picture absolute path
  //
  // Return the absolute path to get a picture 

#DECLARE($param1 : Text; $param2 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.11.19, 13:59:18
	  // ----------------------------------------------------
	  // Method: pictfullPath
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $pictPath; $folderTempPath : Text

$pictPath:=Replace string($param1;"/";Folder separator)
$folderTempPath:=$param2

  //template folder case
If ($pictPath="#@")
	$pictPath:=Replace string($pictPath;"#";"")
	$pictPath:=$folderTempPath+$pictPath
Else   //resources folder case
	  //$pictPath:=Get 4D folder(Current resources folder)+$pictPath
End if 

$result:=$pictPath
