  //method to set the default value when the user ctrl click a property in the listbox
var $check_ctrl : Boolean
var $column; $row; $evt : Integer
var $property_ptr; $value_ptr; $category_ptr : Pointer
var $properties_col : Collection
var $property_pos : Integer
var $category_pos : Integer
var $value_pos : Integer
$evt:=Form event code

Case of 
	: ($evt=On Clicked)
		If (Is macOS)
			$check_ctrl:=Macintosh control down
		Else 
			$check_ctrl:=Macintosh command down
		End if 
		If ($check_ctrl)
			If (Form.currentState#AJUI_btn_default)
				
				LISTBOX GET CELL POSITION(*;"LB_properties";$column;$row)
				
				If ($row>0)
					$property_ptr:=OBJECT Get pointer(Object named;"property_col")
					$category_ptr:=OBJECT Get pointer(Object named;"category_col")
					
					Form.btn1.RemovePropertyException(Form.properties[$property_ptr->-1].formula;Form.currentState)
				End if 
				
				Form.btnSave.Enable(True)
				Form.btnSave.Draw()
				
				formulasGetValues 
				formulasSetValues 
				REDRAW(OBJECT Get pointer(Object named;"LB_properties")->)
				redrawBtn 
				
			Else 
				$property_ptr:=OBJECT Get pointer(Object named;"property_col")
				$value_ptr:=OBJECT Get pointer(Object named;"value_col")
				$category_ptr:=OBJECT Get pointer(Object named;"category_col")
				$property_pos:=$property_ptr->
				$category_pos:=$category_ptr->
				$properties_col:=Form.properties.query(" property = :1 & category = :2";$property_ptr->{$property_pos};$category_ptr->{$category_pos})
				
				If ($properties_col.length>0)
					$property_pos:=$property_ptr->
					If (bgStylesValue{$property_pos}>0)
						
						$value_pos:=$value_ptr->
						$value_ptr->{$value_pos}.value:=Form.defaultValues[$properties_col[0].formula](AJUI_btn_default)
						
						formulaSetValue 
						
					End if 
				End if 
			End if 
		End if 
End case 