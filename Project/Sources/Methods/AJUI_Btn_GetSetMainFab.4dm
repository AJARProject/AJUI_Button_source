//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetMainFab (  {  $main } ) -> return
  //
  // $main : (boolean) (optional) isMain
  // return : (boolean) (return) value isMain
  //
  // Getter and setter to define this instace as a main FAB button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.12.19, 10:05:38
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_GetSetMainFab
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_BOOLEAN:C305($0;$1;$main)

If (Count parameters:C259=0)
	$0:=This:C1470.btn.fab.mainBtn
Else 
	$main:=$1
	This:C1470.btn.fab.mainBtn:=$main
End if 
