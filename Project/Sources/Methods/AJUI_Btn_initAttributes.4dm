//%attributes = {"invisible":true}
// AJUI_Btn_initAttributes ( $instance_obj  ) 
//
// $instance_obj : (object) instance object
//
// Init attributes in a button instance object

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): Gary Criblez
	// Date and time: 19.07.19, 12:03:05
	// ----------------------------------------------------
	// Method: AJUI_Btn_initAttributes
	// Description
	// 
	// IN CASE OF MODIFICATION : EDIT THE AJUI_Btn_PropertyCol method
	//
	// ----------------------------------------------------
End if 



C_OBJECT:C1216($1;$instance_obj)
C_PICTURE:C286($pict)

$instance_obj:=$1
$pict:=$pict*0


// ----------------------
// Button Definition
// ----------------------
If ($instance_obj.btn=Null:C1517)
	$instance_obj.btn:=New object:C1471
End if 
If ($instance_obj.btn.global=Null:C1517)
	$instance_obj.btn.global:=New object:C1471
End if 
If ($instance_obj.btn.global.name=Null:C1517)
	$instance_obj.btn.global.name:=""
End if 
If ($instance_obj.btn.global.type=Null:C1517)
	$instance_obj.btn.global.type:="rectangle"  //rectangle, circle
End if 
If ($instance_obj.btn.global.composition=Null:C1517)
	$instance_obj.btn.global.composition:="text"  //text, picture, composite
End if 
If ($instance_obj.btn.global.onClickCB=Null:C1517)
	$instance_obj.btn.global.onClickCB:=""
End if 
If ($instance_obj.btn.global.onDoubleClickCB=Null:C1517)
	$instance_obj.btn.global.onDoubleClickCB:=""
End if 

$instance_obj.btn.global.inCallback:=False:C215  //avoid recall of the callback


// ----------------------
// Button Box
// ----------------------
If ($instance_obj.btn.box=Null:C1517)
	$instance_obj.btn.box:=New object:C1471
End if 
If ($instance_obj.btn.box.resize=Null:C1517)
	$instance_obj.btn.box.resize:=False:C215  // size based on the current size of the button
End if 
If ($instance_obj.btn.box.width=Null:C1517)
	$instance_obj.btn.box.width:=-1
End if 
If ($instance_obj.btn.box.height=Null:C1517)
	$instance_obj.btn.box.height:=-1
End if 
If ($instance_obj.btn.box.padding=Null:C1517)
	$instance_obj.btn.box.padding:=3
End if 
If ($instance_obj.btn.box.cornerRadius=Null:C1517)
	$instance_obj.btn.box.cornerRadius:=5
End if 
If ($instance_obj.btn.box.bgPrimaryColor=Null:C1517)
	$instance_obj.btn.box.bgPrimaryColor:="#4d9ad4"
End if 


// ----------------------
// Border
// ----------------------
If ($instance_obj.btn.border=Null:C1517)
	$instance_obj.btn.border:=New object:C1471
End if 
If ($instance_obj.btn.border.color=Null:C1517)
	$instance_obj.btn.border.color:="#0a509e"
End if 
If ($instance_obj.btn.border.size=Null:C1517)
	$instance_obj.btn.border.size:=0
End if 


// ----------------------
// Text
// ----------------------
If ($instance_obj.btn.text=Null:C1517)
	$instance_obj.btn.text:=New object:C1471
End if 
If ($instance_obj.btn.text.label=Null:C1517)
	$instance_obj.btn.text.label:="Label"
End if 
If ($instance_obj.btn.text.fontName=Null:C1517)
	$instance_obj.btn.text.fontName:="Arial,Helvetica,MS Sans Serif"
End if 
If ($instance_obj.btn.text.fontSize=Null:C1517)
	$instance_obj.btn.text.fontSize:=16
End if 
If ($instance_obj.btn.text.fontColor=Null:C1517)
	$instance_obj.btn.text.fontColor:="white"
End if 
If ($instance_obj.btn.text.align=Null:C1517)
	$instance_obj.btn.text.align:="center"
End if 
If ($instance_obj.btn.text.fontStyle=Null:C1517)
	$instance_obj.btn.text.fontStyle:=""  //None, Bold, Italic, Underline, Strikethrough
End if 
If ($instance_obj.btn.text.marginHorizontal=Null:C1517)
	$instance_obj.btn.text.marginHorizontal:=0
End if 

// ----------------------
// Picture
// ----------------------
If ($instance_obj.btn.picture=Null:C1517)
	$instance_obj.btn.picture:=New object:C1471
End if 
If ($instance_obj.btn.picture.path=Null:C1517)
	$instance_obj.btn.picture.path:=""
End if 
If ($instance_obj.btn.picture.pict=Null:C1517)
	$instance_obj.btn.picture.pict:=$pict
End if 
If ($instance_obj.btn.picture.width=Null:C1517)
	$instance_obj.btn.picture.width:=-1
End if 
If ($instance_obj.btn.picture.height=Null:C1517)
	$instance_obj.btn.picture.height:=-1
End if 
If ($instance_obj.btn.picture.replacingColor=Null:C1517)
	$instance_obj.btn.picture.replacingColor:=""
End if 
If ($instance_obj.btn.picture.colorToReplace=Null:C1517)
	$instance_obj.btn.picture.colorToReplace:=""
End if 
If ($instance_obj.btn.picture.ratio=Null:C1517)
	$instance_obj.btn.picture.ratio:=1  //ratio 1 = current size
End if 
If ($instance_obj.btn.picture.scale=Null:C1517)
	$instance_obj.btn.picture.scale:=0  //percent
End if 
If ($instance_obj.btn.picture.opacity=Null:C1517)
	$instance_obj.btn.picture.opacity:=100  //percent
End if 

// ----------------------
// Composite
// ----------------------
If ($instance_obj.btn.composite=Null:C1517)
	$instance_obj.btn.composite:=New object:C1471
End if 
If ($instance_obj.btn.composite.linked=Null:C1517)
	$instance_obj.btn.composite.linked:=False:C215
End if 
If ($instance_obj.btn.composite.padding=Null:C1517)
	$instance_obj.btn.composite.padding:=10
End if 
If ($instance_obj.btn.composite.pictSizeAllocation=Null:C1517)
	$instance_obj.btn.composite.pictSizeAllocation:=30
End if 
If ($instance_obj.btn.composite.activeSecondColor=Null:C1517)
	$instance_obj.btn.composite.activeSecondColor:=False:C215
End if 
If ($instance_obj.btn.composite.textAlign=Null:C1517)
	$instance_obj.btn.composite.textAlign:="center"  //left, center, top. Only apply for a composite button
End if 
If ($instance_obj.btn.composite.picturePosition=Null:C1517)
	$instance_obj.btn.composite.picturePosition:="left"
End if 
If ($instance_obj.btn.composite.bgSecondaryColor=Null:C1517)
	$instance_obj.btn.composite.bgSecondaryColor:="#9fddf9"  // apply when the btn is separate in two part (text + icon for example)
End if 

// ----------------------
// FAB
// ----------------------
If ($instance_obj.btn.fab=Null:C1517)
	$instance_obj.btn.fab:=New object:C1471
End if 
If ($instance_obj.btn.fab.mainBtn=Null:C1517)
	$instance_obj.btn.fab.mainBtn:=False:C215
End if 
If ($instance_obj.btn.fab.btnCol=Null:C1517)
	$instance_obj.btn.fab.btnCol:=New collection:C1472
End if 
If ($instance_obj.btn.fab.radius=Null:C1517)
	$instance_obj.btn.fab.radius:=100
End if 
If ($instance_obj.btn.fab.startAngle=Null:C1517)
	$instance_obj.btn.fab.startAngle:=270
End if 
If ($instance_obj.btn.fab.angleToTravel=Null:C1517)
	$instance_obj.btn.fab.angleToTravel:=180
End if 
If ($instance_obj.btn.fab.clockwise=Null:C1517)
	$instance_obj.btn.fab.clockwise:=True:C214
End if 
If ($instance_obj.btn.fab.mainPosition=Null:C1517)
	$instance_obj.btn.fab.mainPosition:=""
End if 
If ($instance_obj.btn.fab.animation=Null:C1517)
	$instance_obj.btn.fab.animation:=False:C215
End if 
$instance_obj.btn.fab.hide:=True:C214  //Hide the fab secondary buttons when main button instanciated
$instance_obj.btn.fab.duration:=120  // expressed in milliseconds
$instance_obj.btn.fab.rate:=60  // number of draw by sec


//state Parts
If ($instance_obj.btn.hover=Null:C1517)
	$instance_obj.btn.hover:=New object:C1471
End if 
If ($instance_obj.btn.hover.box=Null:C1517)
	$instance_obj.btn.hover.box:=New object:C1471
End if 
If ($instance_obj.btn.hover.border=Null:C1517)
	$instance_obj.btn.hover.border:=New object:C1471
End if 
If ($instance_obj.btn.hover.text=Null:C1517)
	$instance_obj.btn.hover.text:=New object:C1471
End if 
If ($instance_obj.btn.hover.picture=Null:C1517)
	$instance_obj.btn.hover.picture:=New object:C1471
End if 
If ($instance_obj.btn.hover.composite=Null:C1517)
	$instance_obj.btn.hover.composite:=New object:C1471
End if 

If ($instance_obj.btn.active=Null:C1517)
	$instance_obj.btn.active:=New object:C1471
End if 
If ($instance_obj.btn.active.box=Null:C1517)
	$instance_obj.btn.active.box:=New object:C1471
End if 
If ($instance_obj.btn.active.border=Null:C1517)
	$instance_obj.btn.active.border:=New object:C1471
End if 
If ($instance_obj.btn.active.text=Null:C1517)
	$instance_obj.btn.active.text:=New object:C1471
End if 
If ($instance_obj.btn.active.picture=Null:C1517)
	$instance_obj.btn.active.picture:=New object:C1471
End if 
If ($instance_obj.btn.active.composite=Null:C1517)
	$instance_obj.btn.active.composite:=New object:C1471
End if 

If ($instance_obj.btn.disable=Null:C1517)
	$instance_obj.btn.disable:=New object:C1471
End if 
If ($instance_obj.btn.disable.box=Null:C1517)
	$instance_obj.btn.disable.box:=New object:C1471
End if 
If ($instance_obj.btn.disable.border=Null:C1517)
	$instance_obj.btn.disable.border:=New object:C1471
End if 
If ($instance_obj.btn.disable.text=Null:C1517)
	$instance_obj.btn.disable.text:=New object:C1471
End if 
If ($instance_obj.btn.disable.picture=Null:C1517)
	$instance_obj.btn.disable.picture:=New object:C1471
End if 
If ($instance_obj.btn.disable.composite=Null:C1517)
	$instance_obj.btn.disable.composite:=New object:C1471
End if 

If ($instance_obj.btn.focus=Null:C1517)
	$instance_obj.btn.focus:=New object:C1471
End if 
If ($instance_obj.btn.focus.box=Null:C1517)
	$instance_obj.btn.focus.box:=New object:C1471
End if 
If ($instance_obj.btn.focus.border=Null:C1517)
	$instance_obj.btn.focus.border:=New object:C1471
End if 
If ($instance_obj.btn.focus.text=Null:C1517)
	$instance_obj.btn.focus.text:=New object:C1471
End if 
If ($instance_obj.btn.focus.picture=Null:C1517)
	$instance_obj.btn.focus.picture:=New object:C1471
End if 
If ($instance_obj.btn.focus.composite=Null:C1517)
	$instance_obj.btn.focus.composite:=New object:C1471
End if 








