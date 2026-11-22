
Case of 
	: (Form event code=On Load)
		
		Form.btn2:=New AJUI_Button 
		
		Lab_SetCompositeBtn (Form.btn2;"btn2")
		
		  //default
		Form.btn2.CompPicturePosition(AJUI_btn_default;"top")
		Form.btn2.CompPictSizeAllocation(AJUI_btn_default;50)
		
End case 

Form.btn2.Draw()