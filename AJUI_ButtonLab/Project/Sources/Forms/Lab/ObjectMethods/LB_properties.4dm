
var $values_ptr; $property_ptr; $category_ptr : Pointer
var $column; $row; $evt; $bgcolor_l : Integer
var $property; $refMenu; $choix; $resourcePath; $doc; $bgcolor_t : Text
var $property_pos : Integer
var $values_pos : Integer
$evt:=Form event code
Case of 
	: ($evt=On Data Change)
		$property_ptr:=OBJECT Get pointer(Object named;"property_col")
		$values_ptr:=OBJECT Get pointer(Object named;"value_col")
		$property_pos:=$property_ptr->
		$property:=$property_ptr->{$property_pos}
		
		  // we get the default state value in case of an empty string in the path
		If ($property="@path@")
			$values_pos:=$values_ptr->
			If ($values_ptr->{$values_pos}.value="")
				$values_pos:=$values_ptr->
				$values_ptr->{$values_pos}.value:=Form.btn1[Form.properties[$values_ptr->-1].formula](AJUI_btn_default)
			End if 
		End if 
		
		formulaSetValue 
		
		  //remove exception with right click
	: ($evt=On Clicked) & (Contextual click) & (Not(Macintosh control down)) & (Not(Macintosh command down))
		LISTBOX GET CELL POSITION(*;"LB_properties";$column;$row)
		
		If ($row>0)
			$property_ptr:=OBJECT Get pointer(Object named;"property_col")
			$category_ptr:=OBJECT Get pointer(Object named;"category_col")
			
			$refMenu:=Create menu
			APPEND MENU ITEM($refMenu;"Remove property exception")
			SET MENU ITEM PARAMETER($refMenu;-1;"RemovePropertyException")
			APPEND MENU ITEM($refMenu;"Remove property exceptions")
			SET MENU ITEM PARAMETER($refMenu;-1;"RemovePropertyExceptions")
			
			$choix:=Dynamic pop up menu($refMenu)
			RELEASE MENU($refMenu)
			
			If ($choix#"")
				Case of 
					: ($choix="RemovePropertyException")
						Form.btn1.RemovePropertyException(Form.properties[$property_ptr->-1].formula;Form.currentState)
					: ($choix="RemovePropertyExceptions")
						Form.btn1.RemovePropertyExceptions(Form.properties[$property_ptr->-1].formula)
						
						
				End case 
			End if 
			
			Form.btnSave.Enable(True)
			Form.btnSave.Draw()
			
			formulasGetValues 
			formulasSetValues 
			REDRAW(OBJECT Get pointer(Object named;"LB_properties")->)
			redrawBtn 
		End if 
		
		
		  //advanced listbox : handle the alternative button
	: ($evt=On Alternative Click)
		$values_ptr:=OBJECT Get pointer(Object named;"value_col")
		$property_ptr:=OBJECT Get pointer(Object named;"property_col")
		$property_pos:=$property_ptr->
		$property:=$property_ptr->{$property_pos}
		
		  //path properties : open the select document
		If ($property="@path@")
			$resourcePath:=Get 4D folder(Current resources folder;*)
			$doc:=Select document($resourcePath;"*";"Select the picture path";Package open+Use sheet window)
			
			$values_pos:=$values_ptr->
			$values_ptr->{$values_pos}.value:=Replace string(Document;Folder separator;"/")
			
		Else 
			  //color properties : launch the color picker
			$values_pos:=$values_ptr->
			$bgcolor_l:=Select RGB color(setPickerColor ($values_ptr->{$values_pos}.value);"Select the Background Color")
			$bgcolor_t:=Replace string(String($bgcolor_l;"&$");"$";"")
			$bgcolor_t:=(6-Length($bgcolor_t)*"0"+$bgcolor_t)
			$bgcolor_t:="#"+$bgcolor_t
			
			$values_pos:=$values_ptr->
			$values_ptr->{$values_pos}.value:=$bgcolor_t
		End if 
		
		formulaSetValue 
		
		
End case 
