var $evt; $position : Integer
$evt:=Form event code

Case of 
	: ($evt=On Load)
		Form.states:=New collection()
		Form.states.push("Default")
		Form.states.push("Hover")
		Form.states.push("Active")
		Form.states.push("Disable")
		Form.states.push("Focus")
		LISTBOX SELECT ROW(*;"StatesLB";1)
		
		
		
	: ($evt=On Selection Change)
		  //update state for calls to member functions 
		GOTO OBJECT(*;"")
		$position:=Form.statePosition
		Case of 
			: ($position=1)
				Form.currentState:=AJUI_btn_default
			: ($position=2)
				Form.currentState:=AJUI_btn_hover
			: ($position=3)
				Form.currentState:=AJUI_btn_active
			: ($position=4)
				Form.currentState:=AJUI_btn_disable
			: ($position=5)
				Form.currentState:=AJUI_btn_focus
		End case 
		
		SET TIMER(-1)
		
End case 
