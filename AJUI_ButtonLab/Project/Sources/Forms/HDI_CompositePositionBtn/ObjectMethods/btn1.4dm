
Case of 
	: (Form event code=On Load)
		
		Form.btn1:=New AJUI_Button 
		
		Lab_SetCompositeBtn (Form.btn1;"btn1")
		
		  //default
		Form.btn1.CompPicturePosition(AJUI_btn_default;"left")
		Form.btn1.CompPictSizeAllocation(AJUI_btn_default;30)
		
End case 

Form.btn1.Draw()