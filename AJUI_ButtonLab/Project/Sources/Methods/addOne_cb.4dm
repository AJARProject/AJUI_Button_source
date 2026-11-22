//%attributes = {"shared":true}
  // addOne_cb ()
  //
  // Callback add one for the HDI_DisableBtn

var $current : Integer
If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 14.08.19, 09:11:41
	  // ----------------------------------------------------
	  // Method: addOne_cb
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


$current:=Form.number

  // enable the button
If ($current=0)
	Form.btn_minus.Enable(True)
	  //Form.btn_plus.Draw()
End if 

If (Form.number<5)
	Form.number:=$current+1
End if 