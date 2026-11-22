//%attributes = {}

  // refresh ( ) 
  //
  // Refresh the form objects when we create, choice, delete or reload a template

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:03:51
	  // ----------------------------------------------------
	  // Method: refresh
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $type_ptr; $composition_ptr : Pointer
var $pos : Integer

$type_ptr:=OBJECT Get pointer(Object named;"type_list")
$composition_ptr:=OBJECT Get pointer(Object named;"composition_list")

  //select template type
$pos:=Find in array($type_ptr->;Form.btn1.Type())
If ($pos>0)
	$type_ptr->:=$pos
End if 

  //select template composition
$pos:=Find in array($composition_ptr->;Form.btn1.Composition())
If ($pos>0)
	$composition_ptr->:=$pos
End if 

  //callback button
OBJECT Get pointer(Object named;"callback_click")->:=Form.btn1.OnClick()
OBJECT Get pointer(Object named;"callback_2click")->:=Form.btn1.OnDoubleClick()

  //check button linked
If (Form.btn1.CompLinked())
	OBJECT Get pointer(Object named;"linked")->:=1
Else 
	OBJECT Get pointer(Object named;"linked")->:=0
End if 

  //check button resizable property
If (Not(Form.btn1.Resizable()))
	OBJECT Get pointer(Object named;"resizable")->:=0
Else 
	OBJECT Get pointer(Object named;"resizable")->:=1
End if 
  // reset the original value
OBJECT SET COORDINATES(*;"btn1";Form.originCoordBtn1.left;Form.originCoordBtn1.top;Form.originCoordBtn1.right;Form.originCoordBtn1.bottom)
OBJECT SET COORDINATES(*;"btn2";Form.originCoordBtn2.left;Form.originCoordBtn2.top;Form.originCoordBtn2.right;Form.originCoordBtn2.bottom)
OBJECT SET COORDINATES(*;"btn3";Form.originCoordBtn3.left;Form.originCoordBtn3.top;Form.originCoordBtn3.right;Form.originCoordBtn3.bottom)
OBJECT SET COORDINATES(*;"btn4";Form.originCoordBtn4.left;Form.originCoordBtn4.top;Form.originCoordBtn4.right;Form.originCoordBtn4.bottom)
OBJECT SET COORDINATES(*;"btn5";Form.originCoordBtn5.left;Form.originCoordBtn5.top;Form.originCoordBtn5.right;Form.originCoordBtn5.bottom)
OBJECT SET COORDINATES(*;"btn6";Form.originCoordBtn6.left;Form.originCoordBtn6.top;Form.originCoordBtn6.right;Form.originCoordBtn6.bottom)

  //check button second color
If (Form.btn1.CompActiveSecondColor())
	OBJECT Get pointer(Object named;"secondColor")->:=1
Else 
	OBJECT Get pointer(Object named;"secondColor")->:=0
End if 


  // display or not global attributes for composite button
If ($composition_ptr->=3)
	OBJECT SET VISIBLE(*;"linked";True)
	OBJECT SET VISIBLE(*;"secondColor";True)
Else 
	OBJECT SET VISIBLE(*;"linked";False)
	OBJECT SET VISIBLE(*;"secondColor";False)
End if 

  //check template protect
If (Form.btn1.protect)
	Form.btnProtect.Label(AJUI_btn_default;"Unprotect")
	Form.btnProtectBanner.DrawBanner()
	OBJECT SET VISIBLE(*;"RectProtect";True)
	Form.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994412---key-lock-open-password-unlock.svg")
Else 
	Form.btnProtect.Label(AJUI_btn_default;"Protect")
	Form.btnProtectBanner.HideBanner()
	OBJECT SET VISIBLE(*;"RectProtect";False)
	Form.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994379---lock-padlock-privacy-protection-security.svg")
End if 

Form.btnProtect.Draw()

