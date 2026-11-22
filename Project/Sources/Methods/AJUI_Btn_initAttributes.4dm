//%attributes = {"invisible":true}
// AJUI_Btn_initAttributes ( $instance_obj  ) 
//
// $instance_obj : (object) instance object
//
// Init attributes in a button instance object

#DECLARE($param1 : Object)

If (False)
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



var $instance_obj : Object
var $pict : Picture

$instance_obj:=$param1
$pict:=$pict*0


// ----------------------
// Button Definition
// ----------------------
If ($instance_obj.btn=Null)
	$instance_obj.btn:=New object
End if 
If ($instance_obj.btn.global=Null)
	$instance_obj.btn.global:=New object
End if 
If ($instance_obj.btn.global.name=Null)
	$instance_obj.btn.global.name:=""
End if 
If ($instance_obj.btn.global.type=Null)
	$instance_obj.btn.global.type:="rectangle"  //rectangle, circle
End if 
If ($instance_obj.btn.global.composition=Null)
	$instance_obj.btn.global.composition:="text"  //text, picture, composite
End if 
If ($instance_obj.btn.global.onClickCB=Null)
	$instance_obj.btn.global.onClickCB:=""
End if 
If ($instance_obj.btn.global.onDoubleClickCB=Null)
	$instance_obj.btn.global.onDoubleClickCB:=""
End if 

$instance_obj.btn.global.inCallback:=False  //avoid recall of the callback


// ----------------------
// Button Box
// ----------------------
If ($instance_obj.btn.box=Null)
	$instance_obj.btn.box:=New object
End if 
If ($instance_obj.btn.box.resize=Null)
	$instance_obj.btn.box.resize:=False  // size based on the current size of the button
End if 
If ($instance_obj.btn.box.width=Null)
	$instance_obj.btn.box.width:=-1
End if 
If ($instance_obj.btn.box.height=Null)
	$instance_obj.btn.box.height:=-1
End if 
If ($instance_obj.btn.box.padding=Null)
	$instance_obj.btn.box.padding:=3
End if 
If ($instance_obj.btn.box.cornerRadius=Null)
	$instance_obj.btn.box.cornerRadius:=5
End if 
If ($instance_obj.btn.box.backgroundColor=Null)
	$instance_obj.btn.box.backgroundColor:="#4d9ad4"
End if 


// ----------------------
// Border
// ----------------------
If ($instance_obj.btn.border=Null)
	$instance_obj.btn.border:=New object
End if 
If ($instance_obj.btn.border.color=Null)
	$instance_obj.btn.border.color:="#0a509e"
End if 
If ($instance_obj.btn.border.size=Null)
	$instance_obj.btn.border.size:=0
End if 


// ----------------------
// Text
// ----------------------
If ($instance_obj.btn.text=Null)
	$instance_obj.btn.text:=New object
End if 
If ($instance_obj.btn.text.label=Null)
	$instance_obj.btn.text.label:="Label"
End if 
If ($instance_obj.btn.text.fontName=Null)
	$instance_obj.btn.text.fontName:="Arial,Helvetica,MS Sans Serif"
End if 
If ($instance_obj.btn.text.fontSize=Null)
	$instance_obj.btn.text.fontSize:=16
End if 
If ($instance_obj.btn.text.fontColor=Null)
	$instance_obj.btn.text.fontColor:="white"
End if 
If ($instance_obj.btn.text.align=Null)
	$instance_obj.btn.text.align:="center"
End if 
If ($instance_obj.btn.text.fontStyle=Null)
	$instance_obj.btn.text.fontStyle:=""  //None, Bold, Italic, Underline, Strikethrough
End if 
If ($instance_obj.btn.text.horizontalMargin=Null)
	$instance_obj.btn.text.horizontalMargin:=0
End if 

// ----------------------
// Picture
// ----------------------
If ($instance_obj.btn.picture=Null)
	$instance_obj.btn.picture:=New object
End if 
If ($instance_obj.btn.picture.path=Null)
	$instance_obj.btn.picture.path:=""
End if 
If ($instance_obj.btn.picture.pict=Null)
	$instance_obj.btn.picture.pict:=$pict
End if 
If ($instance_obj.btn.picture.width=Null)
	$instance_obj.btn.picture.width:=-1
End if 
If ($instance_obj.btn.picture.height=Null)
	$instance_obj.btn.picture.height:=-1
End if 
If ($instance_obj.btn.picture.replacingColor=Null)
	$instance_obj.btn.picture.replacingColor:=""
End if 
If ($instance_obj.btn.picture.colorToReplace=Null)
	$instance_obj.btn.picture.colorToReplace:=""
End if 
If ($instance_obj.btn.picture.ratio=Null)
	$instance_obj.btn.picture.ratio:=1  //ratio 1 = current size
End if 
If ($instance_obj.btn.picture.scale=Null)
	$instance_obj.btn.picture.scale:=0  //percent
End if 
If ($instance_obj.btn.picture.opacity=Null)
	$instance_obj.btn.picture.opacity:=100  //percent
End if 

// ----------------------
// Composite
// ----------------------
If ($instance_obj.btn.composite=Null)
	$instance_obj.btn.composite:=New object
End if 
If ($instance_obj.btn.composite.linked=Null)
	$instance_obj.btn.composite.linked:=False
End if 
If ($instance_obj.btn.composite.spaceBetween=Null)
	$instance_obj.btn.composite.spaceBetween:=10
End if 
If ($instance_obj.btn.composite.pictSizeAllocation=Null)
	$instance_obj.btn.composite.pictSizeAllocation:=30
End if 
If ($instance_obj.btn.composite.activeSecondColor=Null)
	$instance_obj.btn.composite.activeSecondColor:=False
End if 
If ($instance_obj.btn.composite.picturePosition=Null)
	$instance_obj.btn.composite.picturePosition:="left"
End if 
If ($instance_obj.btn.composite.backgroundSecondaryColor=Null)
	$instance_obj.btn.composite.backgroundSecondaryColor:="#9fddf9"  // apply when the btn is separate in two part (text + icon for example)
End if 

// ----------------------
// FAB
// ----------------------
If ($instance_obj.btn.fab=Null)
	$instance_obj.btn.fab:=New object
End if 
If ($instance_obj.btn.fab.mainBtn=Null)
	$instance_obj.btn.fab.mainBtn:=False
End if 
If ($instance_obj.btn.fab.btnCol=Null)
	$instance_obj.btn.fab.btnCol:=New collection
End if 
If ($instance_obj.btn.fab.radius=Null)
	$instance_obj.btn.fab.radius:=100
End if 
If ($instance_obj.btn.fab.startAngle=Null)
	$instance_obj.btn.fab.startAngle:=270
End if 
If ($instance_obj.btn.fab.angleToTravel=Null)
	$instance_obj.btn.fab.angleToTravel:=180
End if 
If ($instance_obj.btn.fab.clockwise=Null)
	$instance_obj.btn.fab.clockwise:=True
End if 
If ($instance_obj.btn.fab.mainPosition=Null)
	$instance_obj.btn.fab.mainPosition:=""
End if 
If ($instance_obj.btn.fab.animation=Null)
	$instance_obj.btn.fab.animation:=False
End if 
$instance_obj.btn.fab.hide:=True  //Hide the fab secondary buttons when main button instanciated
$instance_obj.btn.fab.duration:=120  // expressed in milliseconds
$instance_obj.btn.fab.rate:=60  // number of draw by sec


//state Parts
If ($instance_obj.btn.hover=Null)
	$instance_obj.btn.hover:=New object
End if 
If ($instance_obj.btn.hover.box=Null)
	$instance_obj.btn.hover.box:=New object
End if 
If ($instance_obj.btn.hover.border=Null)
	$instance_obj.btn.hover.border:=New object
End if 
If ($instance_obj.btn.hover.text=Null)
	$instance_obj.btn.hover.text:=New object
End if 
If ($instance_obj.btn.hover.picture=Null)
	$instance_obj.btn.hover.picture:=New object
End if 
If ($instance_obj.btn.hover.composite=Null)
	$instance_obj.btn.hover.composite:=New object
End if 

If ($instance_obj.btn.active=Null)
	$instance_obj.btn.active:=New object
End if 
If ($instance_obj.btn.active.box=Null)
	$instance_obj.btn.active.box:=New object
End if 
If ($instance_obj.btn.active.border=Null)
	$instance_obj.btn.active.border:=New object
End if 
If ($instance_obj.btn.active.text=Null)
	$instance_obj.btn.active.text:=New object
End if 
If ($instance_obj.btn.active.picture=Null)
	$instance_obj.btn.active.picture:=New object
End if 
If ($instance_obj.btn.active.composite=Null)
	$instance_obj.btn.active.composite:=New object
End if 

If ($instance_obj.btn.disable=Null)
	$instance_obj.btn.disable:=New object
End if 
If ($instance_obj.btn.disable.box=Null)
	$instance_obj.btn.disable.box:=New object
End if 
If ($instance_obj.btn.disable.border=Null)
	$instance_obj.btn.disable.border:=New object
End if 
If ($instance_obj.btn.disable.text=Null)
	$instance_obj.btn.disable.text:=New object
End if 
If ($instance_obj.btn.disable.picture=Null)
	$instance_obj.btn.disable.picture:=New object
End if 
If ($instance_obj.btn.disable.composite=Null)
	$instance_obj.btn.disable.composite:=New object
End if 

If ($instance_obj.btn.focus=Null)
	$instance_obj.btn.focus:=New object
End if 
If ($instance_obj.btn.focus.box=Null)
	$instance_obj.btn.focus.box:=New object
End if 
If ($instance_obj.btn.focus.border=Null)
	$instance_obj.btn.focus.border:=New object
End if 
If ($instance_obj.btn.focus.text=Null)
	$instance_obj.btn.focus.text:=New object
End if 
If ($instance_obj.btn.focus.picture=Null)
	$instance_obj.btn.focus.picture:=New object
End if 
If ($instance_obj.btn.focus.composite=Null)
	$instance_obj.btn.focus.composite:=New object
End if 








