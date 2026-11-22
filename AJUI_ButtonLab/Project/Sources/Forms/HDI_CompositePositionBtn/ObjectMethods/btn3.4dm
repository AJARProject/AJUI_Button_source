
Case of 
	: (Form event code=On Load)
		
		Form.btn3:=New AJUI_Button 
		
		Lab_SetCompositeBtn (Form.btn3;"btn3")
		
		  //default
		Form.btn3.CompPicturePosition(AJUI_btn_default;"bottom")
		Form.btn3.CompPictSizeAllocation(AJUI_btn_default;50)
		
End case 

Form.btn3.Draw()