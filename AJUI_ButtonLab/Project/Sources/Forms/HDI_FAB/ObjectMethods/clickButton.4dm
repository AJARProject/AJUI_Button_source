
var $evt : Integer
var $objectName : Text
If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 21.11.19, 08:52:57
	  // ----------------------------------------------------
	  // Method: HDI_Focus.Button
	  // Description
	  // Intercepts a shortcut and simulates a mouse click
	  // on the current button with focus
	  // Parameters
	  // ----------------------------------------------------
End if 

  //Post click on the right button 
  // if button name (Form.currentBtnName) is known

$evt:=Form event code

Case of 
	: ($evt=On Clicked)
		$objectName:=OBJECT Get name(Object with focus)
		If ($objectName#"")
			If (Form[$objectName].OnClick()#"")
				EXECUTE METHOD(Form[$objectName].OnClick())
			End if 
		End if 
End case 
