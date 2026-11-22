//%attributes = {"invisible":true}
  // AJUI_Btn_GetSetMainFab (  {  $main } ) -> return
  //
  // $main : (boolean) (optional) isMain
  // return : (boolean) (return) value isMain
  //
  // Getter and setter to define this instace as a main FAB button

#DECLARE($param1 : Boolean) -> $result : Boolean

If (False)
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

var $main : Boolean

If (Count parameters=0)
	$result:=This.btn.fab.mainBtn
Else 
	$main:=$param1
	This.btn.fab.mainBtn:=$main
End if 
