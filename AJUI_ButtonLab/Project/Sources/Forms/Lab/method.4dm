var $templates_ptr; $property_ptr; $value_ptr; $category_ptr : Pointer
var $template_obj : Object
var $templateName; $icon : Text
var $evt : Integer
var $left; $top; $right; $bottom : Real
var $templates_pos : Integer
$evt:=Form event code
Case of 
	: ($evt=On Load)
		
		GOTO OBJECT(*;"")
		
		Form.btn1.comment:="your comment ..."
		
		
		$category_ptr:=OBJECT Get pointer(Object named;"category_col")
		//%W-518.5  // column without dataSource (dynamic variable): typed through its pointer
		ARRAY TEXT($category_ptr->;0)
		//%W+518.5
		COLLECTION TO ARRAY(Form.properties;$category_ptr->;"category")
		
		$property_ptr:=OBJECT Get pointer(Object named;"property_col")
		//%W-518.5  // column without dataSource (dynamic variable): typed through its pointer
		ARRAY TEXT($property_ptr->;0)
		//%W+518.5
		COLLECTION TO ARRAY(Form.properties;$property_ptr->;"property")
		
		$value_ptr:=OBJECT Get pointer(Object named;"value_col")
		//%W-518.5  // column without dataSource (dynamic variable): typed through its pointer
		ARRAY OBJECT($value_ptr->;0)
		//%W+518.5
		COLLECTION TO ARRAY(Form.properties;$value_ptr->;"value_object")
		
		OBJECT GET COORDINATES(*;"btn1";$left;$top;$right;$bottom)
		Form.originCoordBtn1:=New object
		Form.originCoordBtn1.left:=$left
		Form.originCoordBtn1.top:=$top
		Form.originCoordBtn1.right:=$right
		Form.originCoordBtn1.bottom:=$bottom
		
		OBJECT GET COORDINATES(*;"btn2";$left;$top;$right;$bottom)
		Form.originCoordBtn2:=New object
		Form.originCoordBtn2.left:=$left
		Form.originCoordBtn2.top:=$top
		Form.originCoordBtn2.right:=$right
		Form.originCoordBtn2.bottom:=$bottom
		
		OBJECT GET COORDINATES(*;"btn3";$left;$top;$right;$bottom)
		Form.originCoordBtn3:=New object
		Form.originCoordBtn3.left:=$left
		Form.originCoordBtn3.top:=$top
		Form.originCoordBtn3.right:=$right
		Form.originCoordBtn3.bottom:=$bottom
		
		OBJECT GET COORDINATES(*;"btn4";$left;$top;$right;$bottom)
		Form.originCoordBtn4:=New object
		Form.originCoordBtn4.left:=$left
		Form.originCoordBtn4.top:=$top
		Form.originCoordBtn4.right:=$right
		Form.originCoordBtn4.bottom:=$bottom
		
		OBJECT GET COORDINATES(*;"btn5";$left;$top;$right;$bottom)
		Form.originCoordBtn5:=New object
		Form.originCoordBtn5.left:=$left
		Form.originCoordBtn5.top:=$top
		Form.originCoordBtn5.right:=$right
		Form.originCoordBtn5.bottom:=$bottom
		
		OBJECT GET COORDINATES(*;"btn6";$left;$top;$right;$bottom)
		Form.originCoordBtn6:=New object
		Form.originCoordBtn6.left:=$left
		Form.originCoordBtn6.top:=$top
		Form.originCoordBtn6.right:=$right
		Form.originCoordBtn6.bottom:=$bottom
		
		ARRAY POINTER($_hierarchy;0)
		APPEND TO ARRAY($_hierarchy;$category_ptr)
		APPEND TO ARRAY($_hierarchy;$property_ptr)
		
		
		LISTBOX SET HIERARCHY(*;"LB_properties";True;$_hierarchy)
		OBJECT SET RGB COLORS(*;"category_col";0x0000;0x00B0B0B0)
		OBJECT SET FONT STYLE(*;"category_col";Bold)
		OBJECT SET VISIBLE(*;"property_col";False)
		
		$templates_ptr:=OBJECT Get pointer(Object named;"templates_list")
		If (Size of array($templates_ptr->)>0)
			$templates_ptr->:=1
			$templateName:=$templates_ptr->{1}
			$templates_pos:=$templates_ptr->
			$icon:=getTLocIcon ($templates_ptr->{$templates_pos})
			$templateName:=Substring($templateName;1;Length($templateName)-4)
			$template_obj:=New object("templateName";$templateName;"templatePath";getTlocPath ($templateName+$icon))
			Form.btn1:=New AJUI_Button ($template_obj)
			Form.btn1.Name("btn1")
			Form.btn2:=OB Copy(Form.btn1)
			Form.btn2.ResetAllStates()
			Form.btn2.Name("btn2")
			Form.btn3:=OB Copy(Form.btn1)
			Form.btn3.ResetAllStates()
			Form.btn3.Name("btn3")
			Form.btn4:=OB Copy(Form.btn1)
			Form.btn4.ResetAllStates()
			Form.btn4.Name("btn4")
			Form.btn5:=OB Copy(Form.btn1)
			Form.btn5.ResetAllStates()
			Form.btn5.Name("btn5")
			Form.btn6:=OB Copy(Form.btn1)
			Form.btn6.ResetAllStates()
			Form.btn6.Name("btn6")
			Form.currentBtn:=OB Copy(Form.btn1)
		End if 
		
		Form.currentState:=AJUI_btn_default
		formulasGetValues 
		formulasSetValues 
		REDRAW(OBJECT Get pointer(Object named;"LB_properties")->)
		refresh 
		redrawBtn 
		
		
		
	: ($evt=On Data Change)
		redrawBtn 
		
	: ($evt=On Timer)
		formulasGetValues 
		REDRAW(OBJECT Get pointer(Object named;"LB_properties")->)
		redrawBtn 
		SET TIMER(0)
End case 

