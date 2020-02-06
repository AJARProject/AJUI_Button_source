//%attributes = {"invisible":true}
  // AJUI_Btn_callbackFAB ( $instance_obj  ) 
  //
  // $instance_obj : (object) instance
  //
  // check if FAB collection not empty and the launch the show or hide FAB method

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 16.12.19, 11:06:17
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_callbackFAB
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($1;$instance_obj)

$instance_obj:=$1

If ($instance_obj.btn.fab.btnCol.length>0)
	If ($instance_obj.btn.fab.animation)
		AJUI_Btn_FABAnimation ($instance_obj)
	Else 
		If ($instance_obj.btn.fab.hide)
			AJUI_Btn_showFABButtons ($instance_obj)
		Else 
			AJUI_Btn_hideFABButtons ($instance_obj)
		End if 
	End if 
	$instance_obj.btn.fab.hide:=Not:C34($instance_obj.btn.fab.hide)
End if 