//%attributes = {"shared":true}
  // minusOne_cb ()
  //
  // Callback minus one for the HDI_DisableBtn

var $current : Integer
If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 14.08.19, 09:14:04
	  // ----------------------------------------------------
	  // Method: minusOne_cb
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

$current:=Form.number

  // enable the button
If ($current=5)
	Form.btn_plus.Enable(True)
	  //Form.btn_minus.Draw()
End if 

If (Form.number>0)
	Form.number:=$current-1
End if 