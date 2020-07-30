//%attributes = {"invisible":true}
  // AJUI_Btn_draw (  ) 
  //
  //
  // this method handles exceptions related to the button state and also events before giving the appropriate object to draw the SVG

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.07.19, 10:30:29
	  // ----------------------------------------------------
	  // Method: AJUI_Btn_draw
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($instance_obj;$toDraw_obj)
C_TEXT:C284($name)
C_VARIANT:C1683($callback)
C_PICTURE:C286($pict)

$instance_obj:=This:C1470
$toDraw_obj:=OB Copy:C1225($instance_obj)
$name:=$instance_obj.btn.global.name
$event:=Form event code:C388



  //CHECK STATE DISABLE
$buttonEnabled:=OBJECT Get enabled:C1079(*;$name)
$currentFormObj:=OBJECT Get name:C1087(Object current:K67:2)

If (Not:C34($buttonEnabled))
	If (Not:C34(OB Is empty:C1297($instance_obj.btn.disable)))
		AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.disable)
	End if 
Else 
	  //HANDLE STATES
	If ($currentFormObj=$name)
		Case of 
			: ($event=On Mouse Enter:K2:33)  //state hover
				If (Not:C34(OB Is empty:C1297($instance_obj.btn.hover)))
					AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.hover)
				End if 
				
			: ($event=On Clicked:K2:4)  //state active
				If (Not:C34(OB Is empty:C1297($instance_obj.btn.active)))
					AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.active)
				End if 
				
				
			: ($event=On Double Clicked:K2:5)  //state active
				If (Not:C34(OB Is empty:C1297($instance_obj.btn.active)))
					AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.active)
				End if 
				
			: ($event=On Mouse Leave:K2:34)  //state default or focus
				
				$currentFocus:=OBJECT Get name:C1087(Object with focus:K67:3)
				If ($currentFocus=$name)
					If (Not:C34(OB Is empty:C1297($instance_obj.btn.focus)))
						AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.focus)
					End if 
				End if 
				
			: ($event=On Mouse Up:K2:58)  //state default or hover
				GET MOUSE:C468($mouseX;$mouseY;$state)
				CONVERT COORDINATES:C1365($mouseX;$mouseY;XY Current window:K27:6;XY Current form:K27:5)
				
				OBJECT GET COORDINATES:C663(*;$name;$left;$top;$right;$bottom)
				
				If ($mouseX>=$left) & ($mouseX<=$right) & ($mouseY>=$top) & ($mouseY<=$bottom)
					If (Not:C34(OB Is empty:C1297($instance_obj.btn.hover)))
						AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.hover)
					End if 
				Else 
					$currentFocus:=OBJECT Get name:C1087(Object with focus:K67:3)
					If ($currentFocus=$name)
						If (Not:C34(OB Is empty:C1297($instance_obj.btn.focus)))
							AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.focus)
						End if 
					End if 
				End if 
				
				
				
			: ($event=On Load:K2:1)  //state default
				  //nothing to do
				
			: ($event=On Getting Focus:K2:7)  //state focus
				If (Not:C34(OB Is empty:C1297($instance_obj.btn.focus)))
					AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.focus)
				End if 
				
			: ($event=On Losing Focus:K2:8)  //state default or hover
				GET MOUSE:C468($mouseX;$mouseY;$state)
				CONVERT COORDINATES:C1365($mouseX;$mouseY;XY Current window:K27:6;XY Current form:K27:5)
				
				OBJECT GET COORDINATES:C663(*;$name;$left;$top;$right;$bottom)
				
				If ($mouseX>=$left) & ($mouseX<=$right) & ($mouseY>=$top) & ($mouseY<=$bottom)
					If (Not:C34(OB Is empty:C1297($instance_obj.btn.hover)))
						AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.hover)
					End if 
				Else 
					  //nothing to do
				End if 
				
			Else   //state default
				  //nothing to do
				
		End case 
	End if 
End if 

  //check if the size is related to the current size of the form object of the button
OBJECT GET COORDINATES:C663(*;$name;$left;$top;$right;$bottom)
If ($instance_obj.btn.box.resize=False:C215)
	
	$toDraw_obj.btn.box.width:=$right-$left
	$toDraw_obj.btn.box.height:=$bottom-$top
Else 
	$boxHeight:=$toDraw_obj.btn.box.height
	$boxWidth:=$toDraw_obj.btn.box.width
	
	If ($boxHeight=-1)
		$toDraw_obj.btn.box.height:=$bottom-$top
	End if 
	
	If ($boxWidth=-1)
		$toDraw_obj.btn.box.width:=$right-$left
	End if 
	
	OBJECT SET COORDINATES:C1248(*;$name;$left;$top;$left+$toDraw_obj.btn.box.width;$top+$toDraw_obj.btn.box.height)
End if 

  //DRAW SVG
$pict:=AJUI_Btn_drawSVG ($toDraw_obj)

OBJECT SET BORDER STYLE:C1262(*;$name;Border None:K42:27)
OBJECT Get pointer:C1124(Object named:K67:5;$name)->:=$pict

  //FAB load case
If ($toDraw_obj.btn.fab.mainBtn) & ($event=On Load:K2:1)
	$toDraw_obj.btn.fab.hide:=True:C214
	If ($instance_obj.btn.fab.btnCol.length>0)
		AJUI_Btn_hideFABButtons ($instance_obj)
	End if 
End if 

If ($currentFormObj=$name)
	Case of 
		: ($event=On Mouse Up:K2:58)
			GET MOUSE:C468($mouseX;$mouseY;$state)
			CONVERT COORDINATES:C1365($mouseX;$mouseY;XY Current window:K27:6;XY Current form:K27:5)
			
			OBJECT GET COORDINATES:C663(*;$name;$left;$top;$right;$bottom)
			
			If ($mouseX>=$left) & ($mouseX<=$right) & ($mouseY>=$top) & ($mouseY<=$bottom)
				
				If ($instance_obj.btn.fab.mainBtn)
					AJUI_Btn_callbackFAB ($instance_obj)
				Else 
					$callback:=$instance_obj.btn.global.onClickCB
					Case of 
						: (Value type:C1509($callback)=Is text:K8:3)  //callback
							If ($callback#"") & ($instance_obj.btn.global.inCallback=False:C215)
								If (AJUI_Btn_checkValidCallback ($callback))
									$instance_obj.btn.global.inCallback:=True:C214
									If ($instance_obj.btn.global.clickCBParams=Null:C1517)
										EXECUTE METHOD:C1007($callback)
									Else 
										EXECUTE METHOD:C1007($callback;*;$instance_obj.btn.global.clickCBParams)
									End if 
									$instance_obj.btn.global.inCallback:=False:C215
								End if 
							End if 
						: (Value type:C1509($callback)=Is object:K8:27)  //formula
							If ($instance_obj.btn.global.inCallback=False:C215)
								$instance_obj.btn.global.inCallback:=True:C214
								If ($instance_obj.btn.global.clickCBParams=Null:C1517)
									$callback.call()
								Else 
									$callback.call(Null:C1517;$instance_obj.btn.global.clickCBParams)
								End if 
								$instance_obj.btn.global.inCallback:=False:C215
							End if 
					End case 
				End if 
			End if 
			
		: ($event=On Double Clicked:K2:5)
			If ($instance_obj.btn.fab.mainBtn)
				AJUI_Btn_callbackFAB ($instance_obj)
			Else 
				$callback:=$instance_obj.btn.global.onDoubleClickCB
				Case of 
					: (Value type:C1509($callback)=Is text:K8:3)  //callback
						If ($callback#"") & ($instance_obj.btn.global.inCallback=False:C215)
							If (AJUI_Btn_checkValidCallback ($callback))
								$instance_obj.btn.global.inCallback:=True:C214
								If ($instance_obj.btn.global.doubleClickCBParams=Null:C1517)
									EXECUTE METHOD:C1007($callback)
								Else 
									EXECUTE METHOD:C1007($callback;*;$instance_obj.btn.global.doubleClickCBParams)
								End if 
								$instance_obj.btn.global.inCallback:=False:C215
							End if 
						End if 
					: (Value type:C1509($callback)=Is object:K8:27)  //formula
						If ($instance_obj.btn.global.inCallback=False:C215)
							$instance_obj.btn.global.inCallback:=True:C214
							If ($instance_obj.btn.global.doubleClickCBParams=Null:C1517)
								$callback.call()
							Else 
								$callback.call(Null:C1517;$instance_obj.btn.global.doubleClickCBParams)
							End if 
							$instance_obj.btn.global.inCallback:=False:C215
						End if 
				End case 
			End if 
	End case 
End if 

