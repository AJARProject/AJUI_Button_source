//%attributes = {}
  // formulaSetValue ( ) 
  //
  //
  // this method executes the Setter corresponding to the property so its value has been modified in the listbox 

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:22:37
	  // ----------------------------------------------------
	  // Method: formulaSetValue
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $values_ptr; $properties_ptr : Pointer
var $values_pos : Integer
var $properties_pos : Integer
$properties_ptr:=OBJECT Get pointer(Object named;"property_col")
$values_ptr:=OBJECT Get pointer(Object named;"value_col")

  //Check if a state is selected
If (Form.statePosition>0)
	
	  //call the Setter method for btn1
	$values_pos:=$values_ptr->
	Form.btn1[Form.properties[$values_ptr->-1].formula](Form.currentState;$values_ptr->{$values_pos}.value)
	
	$properties_pos:=$properties_ptr->
	If ($properties_ptr->{$properties_pos}="@color@")
		$values_pos:=$values_ptr->
		setArrayColor ($values_ptr->{$values_pos}.value;$values_ptr->)
	End if 
	
	  //checks the status and updates the button linked to it with the Setter method
	Case of 
		: (Form.currentState="default")
			Form.btn2[Form.properties[$values_ptr->-1].formula](AJUI_btn_default;Form.btn1[Form.properties[$values_ptr->-1].formula](AJUI_btn_default))
			Form.btn3[Form.properties[$values_ptr->-1].formula](AJUI_btn_default;Form.btn1[Form.properties[$values_ptr->-1].formula](AJUI_btn_hover))
			Form.btn4[Form.properties[$values_ptr->-1].formula](AJUI_btn_default;Form.btn1[Form.properties[$values_ptr->-1].formula](AJUI_btn_active))
			Form.btn5[Form.properties[$values_ptr->-1].formula](AJUI_btn_default;Form.btn1[Form.properties[$values_ptr->-1].formula](AJUI_btn_disable))
			Form.btn6[Form.properties[$values_ptr->-1].formula](AJUI_btn_default;Form.btn1[Form.properties[$values_ptr->-1].formula](AJUI_btn_focus))
		: (Form.currentState="hover")
			$values_pos:=$values_ptr->
			Form.btn3[Form.properties[$values_ptr->-1].formula](AJUI_btn_default;$values_ptr->{$values_pos}.value)
		: (Form.currentState="active")
			$values_pos:=$values_ptr->
			Form.btn4[Form.properties[$values_ptr->-1].formula](AJUI_btn_default;$values_ptr->{$values_pos}.value)
		: (Form.currentState="disable")
			$values_pos:=$values_ptr->
			Form.btn5[Form.properties[$values_ptr->-1].formula](AJUI_btn_default;$values_ptr->{$values_pos}.value)
		: (Form.currentState="focus")
			$values_pos:=$values_ptr->
			Form.btn6[Form.properties[$values_ptr->-1].formula](AJUI_btn_default;$values_ptr->{$values_pos}.value)
	End case 
	
	setPropertyStyle 
	Form.btnSave.Enable(True)
	Form.btnSave.Draw()
	
	redrawBtn 
Else 
	ALERT("Select a state !")
End if 

