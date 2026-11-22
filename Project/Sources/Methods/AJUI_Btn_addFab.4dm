//%attributes = {"invisible":true}
  // AJUI_Btn_addFab ( $btnName { ; $position } ) 
  //
  // $btnName : (text) name form object
  // $position : (longint) (optional) position
  //
  // Add an item in the FAB collection

#DECLARE($param1 : Text; $param2 : Integer)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.12.19, 09:36:16
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_addFab
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $btnName : Text
var $position; $pos : Integer
var $valid : Boolean

$btnName:=$param1
If ($btnName#"")
	If (Count parameters=1)
		$position:=This.btn.fab.btnCol.length
	End if 
	
	If (This.btn.fab.btnCol.length>0)
		This.btn.fab.btnCol.push($btnName)
	Else 
		$pos:=This.btn.fab.btnCol.indexOf($btnName)
		If ($pos#-1)
			This.btn.fab.btnCol.remove($pos)
		End if 
		
		This.btn.fab.btnCol.insert($position;$btnName)
	End if 
	
Else 
	ALERT("You must enter an AJUI Button form object name")
End if 