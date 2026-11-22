//%attributes = {}
  // formulasSetValues ( ) -> return
  //
  //
  // synchronizes the lab states buttons with btn1

var $i : Integer
If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:31:31
	  // ----------------------------------------------------
	  // Method: formulasSetValues
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



  //loop and execute the Setters formulas using the Getters formulas from btn1
For ($i;0;Form.properties.length-1)
	
	Form.btn2[Form.properties[$i].formula](AJUI_btn_default;Form.btn1[Form.properties[$i].formula](AJUI_btn_default))
	Form.btn3[Form.properties[$i].formula](AJUI_btn_default;Form.btn1[Form.properties[$i].formula](AJUI_btn_hover))
	Form.btn4[Form.properties[$i].formula](AJUI_btn_default;Form.btn1[Form.properties[$i].formula](AJUI_btn_active))
	Form.btn5[Form.properties[$i].formula](AJUI_btn_default;Form.btn1[Form.properties[$i].formula](AJUI_btn_disable))
	Form.btn6[Form.properties[$i].formula](AJUI_btn_default;Form.btn1[Form.properties[$i].formula](AJUI_btn_focus))
	
End for 