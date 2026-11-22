//%attributes = {"invisible":true}
  // AJUI_Btn_draw (  ) 
  //
  //
  // this method handles exceptions related to the button state and also events before giving the appropriate object to draw the SVG

If (False)
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

var $instance_obj; $toDraw_obj : Object
var $name; $currentFormObj; $currentFocus : Text
var $callback : Variant
var $pict : Picture
var $event; $mouseX; $mouseY; $state; $left; $top; $right; $bottom; $boxHeight; $boxWidth : Real
var $buttonEnabled : Boolean

$instance_obj:=This
$toDraw_obj:=OB Copy($instance_obj)
$name:=$instance_obj.btn.global.name
$event:=Form event code



  //CHECK STATE DISABLE
$buttonEnabled:=OBJECT Get enabled(*;$name)
$currentFormObj:=OBJECT Get name(Object current)

If (Not($buttonEnabled))
	If (Not(OB Is empty($instance_obj.btn.disable)))
		AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.disable)
	End if 
Else 
	  //HANDLE STATES
	If ($currentFormObj=$name)
		Case of 
			: ($event=On Mouse Enter)  //state hover
				If (Not(OB Is empty($instance_obj.btn.hover)))
					AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.hover)
				End if 
				
			: ($event=On Clicked)  //state active
				If (Not(OB Is empty($instance_obj.btn.active)))
					AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.active)
				End if 
				
				
			: ($event=On Double Clicked)  //state active
				If (Not(OB Is empty($instance_obj.btn.active)))
					AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.active)
				End if 
				
			: ($event=On Mouse Leave)  //state default or focus
				
				$currentFocus:=OBJECT Get name(Object with focus)
				If ($currentFocus=$name)
					If (Not(OB Is empty($instance_obj.btn.focus)))
						AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.focus)
					End if 
				End if 
				
			: ($event=On Mouse Up)  //state default or hover
				MOUSE POSITION($mouseX;$mouseY;$state)
				CONVERT COORDINATES($mouseX;$mouseY;XY Current window;XY Current form)
				
				OBJECT GET COORDINATES(*;$name;$left;$top;$right;$bottom)
				
				If ($mouseX>=$left) & ($mouseX<=$right) & ($mouseY>=$top) & ($mouseY<=$bottom)
					If (Not(OB Is empty($instance_obj.btn.hover)))
						AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.hover)
					End if 
				Else 
					$currentFocus:=OBJECT Get name(Object with focus)
					If ($currentFocus=$name)
						If (Not(OB Is empty($instance_obj.btn.focus)))
							AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.focus)
						End if 
					End if 
				End if 
				
				
				
			: ($event=On Load)  //state default
				  //nothing to do
				
			: ($event=On Getting Focus)  //state focus
				If (Not(OB Is empty($instance_obj.btn.focus)))
					AJUI_Btn_mergeObject ($toDraw_obj;$instance_obj.btn.focus)
				End if 
				
			: ($event=On Losing Focus)  //state default or hover
				MOUSE POSITION($mouseX;$mouseY;$state)
				CONVERT COORDINATES($mouseX;$mouseY;XY Current window;XY Current form)
				
				OBJECT GET COORDINATES(*;$name;$left;$top;$right;$bottom)
				
				If ($mouseX>=$left) & ($mouseX<=$right) & ($mouseY>=$top) & ($mouseY<=$bottom)
					If (Not(OB Is empty($instance_obj.btn.hover)))
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
OBJECT GET COORDINATES(*;$name;$left;$top;$right;$bottom)
If ($instance_obj.btn.box.resize=False)
	
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
	
	OBJECT SET COORDINATES(*;$name;$left;$top;$left+$toDraw_obj.btn.box.width;$top+$toDraw_obj.btn.box.height)
End if 

  //DRAW SVG
$pict:=AJUI_Btn_drawSVG ($toDraw_obj)

OBJECT SET BORDER STYLE(*;$name;Border None)
OBJECT Get pointer(Object named;$name)->:=$pict

  //FAB load case
If ($toDraw_obj.btn.fab.mainBtn) & ($event=On Load)
	$toDraw_obj.btn.fab.hide:=True
	If ($instance_obj.btn.fab.btnCol.length>0)
		AJUI_Btn_hideFABButtons ($instance_obj)
	End if 
End if 

If ($currentFormObj=$name)
	Case of 
		: ($event=On Mouse Up)
			MOUSE POSITION($mouseX;$mouseY;$state)
			CONVERT COORDINATES($mouseX;$mouseY;XY Current window;XY Current form)
			
			OBJECT GET COORDINATES(*;$name;$left;$top;$right;$bottom)
			
			If ($mouseX>=$left) & ($mouseX<=$right) & ($mouseY>=$top) & ($mouseY<=$bottom)
				
				If ($instance_obj.btn.fab.mainBtn)
					AJUI_Btn_callbackFAB ($instance_obj)
				Else 
					$callback:=$instance_obj.btn.global.onClickCB
					Case of 
						: (Value type($callback)=Is text)  //callback
							If ($callback#"") & ($instance_obj.btn.global.inCallback=False)
								If (AJUI_Btn_checkValidCallback ($callback))
									$instance_obj.btn.global.inCallback:=True
									If ($instance_obj.btn.global.clickCBParams=Null)
										EXECUTE METHOD($callback)
									Else 
										EXECUTE METHOD($callback;*;$instance_obj.btn.global.clickCBParams)
									End if 
									$instance_obj.btn.global.inCallback:=False
								End if 
							End if 
						: (Value type($callback)=Is object)  //formula
							If ($instance_obj.btn.global.inCallback=False)
								$instance_obj.btn.global.inCallback:=True
								If ($instance_obj.btn.global.clickCBParams=Null)
									$callback.call()
								Else 
									$callback.call(Null;$instance_obj.btn.global.clickCBParams)
								End if 
								$instance_obj.btn.global.inCallback:=False
							End if 
					End case 
				End if 
			End if 
			
		: ($event=On Double Clicked)
			If ($instance_obj.btn.fab.mainBtn)
				AJUI_Btn_callbackFAB ($instance_obj)
			Else 
				$callback:=$instance_obj.btn.global.onDoubleClickCB
				Case of 
					: (Value type($callback)=Is text)  //callback
						If ($callback#"") & ($instance_obj.btn.global.inCallback=False)
							If (AJUI_Btn_checkValidCallback ($callback))
								$instance_obj.btn.global.inCallback:=True
								If ($instance_obj.btn.global.doubleClickCBParams=Null)
									EXECUTE METHOD($callback)
								Else 
									EXECUTE METHOD($callback;*;$instance_obj.btn.global.doubleClickCBParams)
								End if 
								$instance_obj.btn.global.inCallback:=False
							End if 
						End if 
					: (Value type($callback)=Is object)  //formula
						If ($instance_obj.btn.global.inCallback=False)
							$instance_obj.btn.global.inCallback:=True
							If ($instance_obj.btn.global.doubleClickCBParams=Null)
								$callback.call()
							Else 
								$callback.call(Null;$instance_obj.btn.global.doubleClickCBParams)
							End if 
							$instance_obj.btn.global.inCallback:=False
						End if 
				End case 
			End if 
	End case 
End if 

