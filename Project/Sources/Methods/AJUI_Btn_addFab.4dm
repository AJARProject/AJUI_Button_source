//%attributes = {"invisible":true}
  // AJUI_Btn_addFab ( $btnName { ; $position } ) 
  //
  // $btnName : (text) name form object
  // $position : (longint) (optional) position
  //
  // Add an item in the FAB collection

If (False:C215)
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

C_TEXT:C284($1;$btnName)
C_LONGINT:C283($2;$position;$pos)
C_BOOLEAN:C305($valid)

$btnName:=$1
If ($btnName#"")
	If (Count parameters:C259=1)
		$position:=This:C1470.btn.fab.btnCol.length
	End if 
	
	If (This:C1470.btn.fab.btnCol.length>0)
		This:C1470.btn.fab.btnCol.push($btnName)
	Else 
		$pos:=This:C1470.btn.fab.btnCol.indexOf($btnName)
		If ($pos#-1)
			This:C1470.btn.fab.btnCol.remove($pos)
		End if 
		
		This:C1470.btn.fab.btnCol.insert($position;$btnName)
	End if 
	
Else 
	ALERT:C41("You must enter an AJUI Button form object name")
End if 